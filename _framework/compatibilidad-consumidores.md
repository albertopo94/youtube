# Compatibilidad con repositorios consumidores

Este documento declara qué consumidores tiene el framework de este repositorio, qué revisión
consume cada uno hoy y qué diferencias quedan pendientes de adoptar. Su propósito es que
**ningún documento afirme que ambos repositorios están alineados sin evidencia**.

Regla de separación: este repositorio (`albertopo94/youtube`) es el **contrato de dominio**
versionado. Un consumidor (por ejemplo, `albertopo94/youtube-shell`) implementa runtime y
mantiene sus propias plantillas reducidas. Nunca se modifica un consumidor desde aquí.

---

## 1. Estado actual de referencia

| Elemento | Valor |
| :--- | :--- |
| Revisión del framework usada para esta comparación | `v0.7.0-direccion-cinematografica-y-video-ia` |
| Fecha de la comparación | 2026-10-27 |
| Última versión publicada | consultar `git describe --tags --abbrev=0`; esta tabla solo debe reescribirse cuando cambie una ruta consumida |

Los hashes de la tabla de deriva siguen siendo válidos mientras no cambie el contenido de las
plantillas espejadas, aunque se publiquen versiones que no las toquen.

## 2. Consumidor: `albertopo94/youtube-shell`

**Fuente autoritativa del consumidor:** `upstream-lock.json` (esquema
`youtube-shell.upstream-lock/v1`), verificado en cada corrida de su suite contra hashes SHA-256
de las plantillas espejadas.

| Elemento | Valor |
| :--- | :--- |
| Revisión del framework que consume | commit `f552339` (tag `v0.3.0-tercera-revision-externa`) |
| Fecha de esa revisión | 2026-10-22 |
| Estado de alineación | **Desalineado**: 7 de 7 plantillas espejadas tienen deriva |
| Trabajo de migración | Pendiente, en el repositorio del consumidor |

### Deriva de plantillas espejadas

Hash espejado por el consumidor frente al hash actual del framework.

| Plantilla espejada en `youtube-shell` | Lock del consumidor | Framework actual | Estado |
| :--- | :--- | :--- | :---: |
| `pipeline-video/00-estado-produccion.md` | `f8814f68…` | `21a1b00a…` | **DERIVA** |
| `pipeline-video/01-packaging.md` | `6821a1c4…` | `a531f75f…` | **DERIVA** |
| `pipeline-video/02-guion.md` | `b6eb0079…` | `5dfe1440…` | **DERIVA** |
| `pipeline-video/03-storyboard-y-edicion.md` | `e194471b…` | `71e0ce1f…` | **DERIVA** |
| `pipeline-video/04-registro-recursos.md` | `e9c9d571…` | `c8b02da1…` | **DERIVA** |
| `pipeline-video/05-metricas-retencion.md` | `0c5ce4c0…` | `ca4b0453…` | **DERIVA** |
| `pipeline-video/06-fuentes-y-verificacion.md` | `7aa4f46d…` | `122d3af2…` | **DERIVA** |

### Diferencias con efecto en el runtime del consumidor

No es una sincronización mecánica de documentos: estas son las reglas cuyo comportamiento el
consumidor debería decidir adoptar.

1. **`PUBLICADO` como estado terminal con ubicación validada** (v0.5.12 / v0.5.13).
   Válido solo bajo `mis-canales/<canal>/videos-publicados/<video>/`; inválido dentro de
   `videos-en-estudio/`. Afecta a su motor de estados y a su verificador de contrato.
2. **Separación de formato y riesgo factual** (v0.5.12).
   El antiguo «Régimen 1: Ficción / Relax» desapareció: `N/A` solo cuando no hay afirmaciones
   sobre la realidad. La plantilla espejada del consumidor todavía conserva el esquema anterior.
3. **Audio por formato y sonoridad del master** (v0.5.12 / v0.5.13).
   −23 LUFS deja de ser objetivo de la voz aislada; corresponde al master final según su hoja de
   aceptación. Las plantillas espejadas del consumidor aún conservan la regla antigua.
4. **Verificador de contrato endurecido** (v0.5.12 / v0.5.13).
   Exige la línea de estado exacta y 10 fixtures, incluidos estado ausente, sufijo inválido y
   `PUBLICADO` según ubicación. Su port interno (`src/checks/contract-checker.ts`) debe
   compararse contra esa evolución.

### Acción pendiente en el consumidor

Cuando se trabaje en `youtube-shell`: revisar `v0.5.13` contra su `upstream-lock.json`, decidir
qué reglas adopta, actualizar las plantillas espejadas y sus hashes, y registrar la nueva revisión
consumida. Hasta que eso ocurra, la relación entre ambos repositorios debe describirse como
**parcialmente alineada**.

---

## 3. Regla de versionado para cambios consumibles

| Cambio en la superficie consumida | Versión | Nota para consumidores |
| :--- | :--- | :--- |
| Aclaración o corrección retrocompatible de plantilla, protocolo o rol | `PATCH` | Revisión recomendada; sin migración obligatoria. |
| Plantilla, protocolo o campo nuevo y aditivo | `MINOR` | Explicar cómo adoptarlo. |
| Rutas, campos o pasos obligatorios renombrados o eliminados | `MAJOR` | Requiere guía de migración antes de publicar. |
| Trabajo interno sin efecto en el contrato consumido | Sin release | Se conserva el commit como traza. |

El repositorio sigue en `0.x`: una ruptura se comunica como `MINOR` con el detalle explícito de
la ruptura, y `MAJOR` solo con aprobación humana expresa.

## 4. Cómo actualizar este documento

Al publicar una versión que toca rutas listadas en `affects_us` del consumidor:

1. Actualizar §1 con la versión y commit publicados.
2. Recalcular la tabla de deriva contra el lock del consumidor (solo lectura de su repo).
3. Registrar qué reglas decidió adoptar el consumidor **en su repositorio**, no acá.
