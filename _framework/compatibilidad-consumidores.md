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
| Revisión del framework usada para esta comparación | `v0.7.2-alineacion-epistemica-y-criterio-outliers` |
| Fecha de la comparación | 2026-10-29 |
| Última versión publicada | consultar `git describe --tags --abbrev=0`; esta tabla solo debe reescribirse cuando cambie una ruta consumida |

Los hashes de la tabla de deriva siguen siendo válidos mientras no cambie el contenido de las
plantillas espejadas, aunque se publiquen versiones que no las toquen.

**Base de la comparación a `v0.7.2`:** `git diff v0.7.1..v0.7.2` sobre
`_framework/plantillas/pipeline-video-template/` y `entregable-final-template.md` está vacío, y
los 8 hashes de la columna «Framework actual» se recalcularon el 2026-10-29 y coinciden. Por eso
la tabla de deriva no se reescribió en esta versión: la superficie espejada de plantillas no
cambió. Lo que sí cambió en `v0.7.2` es una regla de metodología consumida por una skill del
consumidor, registrada como diferencia 6 en §2.

## 2. Consumidor: `albertopo94/youtube-shell`

**Fuente autoritativa del consumidor:** `upstream-lock.json` (esquema
`youtube-shell.upstream-lock/v1`), verificado en cada corrida de su suite contra hashes SHA-256
de las plantillas espejadas.

| Elemento | Valor |
| :--- | :--- |
| Revisión del framework que consume | commit `098a99d` (tag `v0.7.1-gobernanza-evidencia-y-alineacion`) |
| Fecha de esa revisión | 2026-10-28 |
| Estado de alineación | **Totalmente alineado**: 8 de 8 plantillas espejadas sin deriva |
| Trabajo de migración | **Completado**: adoptadas en `youtube-shell v0.10.0` |

### Deriva de plantillas espejadas

Hash espejado por el consumidor frente al hash actual del framework.

| Plantilla espejada en `youtube-shell` | Lock del consumidor | Framework actual | Estado |
| :--- | :--- | :--- | :---: |
| `pipeline-video/00-estado-produccion.md` | `21a1b00a…` | `21a1b00a…` | **ALINEADA** |
| `pipeline-video/01-packaging.md` | `a531f75f…` | `a531f75f…` | **ALINEADA** |
| `pipeline-video/02-guion.md` | `5dfe1440…` | `5dfe1440…` | **ALINEADA** |
| `pipeline-video/03-storyboard-y-edicion.md` | `44203616…` | `44203616…` | **ALINEADA** |
| `pipeline-video/04-registro-recursos.md` | `c8b02da1…` | `c8b02da1…` | **ALINEADA** |
| `pipeline-video/05-metricas-retencion.md` | `ca4b0453…` | `ca4b0453…` | **ALINEADA** |
| `pipeline-video/06-fuentes-y-verificacion.md` | `122d3af2…` | `122d3af2…` | **ALINEADA** |
| `pipeline-video/entregable-final.md` | `3bc7c640…` | `3bc7c640…` | **ALINEADA** |

### Diferencias con efecto en el runtime del consumidor

No es una sincronización mecánica de documentos: estas son las reglas cuyo comportamiento el
consumidor adoptó formalmente.

1. **`PUBLICADO` como estado terminal con ubicación validada** (v0.5.12 / v0.5.13): **ADOPTADO** en `src/store/fs-store.ts` y `src/checks/contract-checker.ts`.
2. **Separación de formato y riesgo factual** (v0.5.12): **ADOPTADO** en plantillas espejadas y `research_sources_structure`.
3. **Audio por formato y sonoridad del master** (v0.5.12 / v0.5.13): **ADOPTADO** en `src/checks/media-measurement.ts` y las 4 capas de pulido.
4. **Verificador de contrato endurecido y registro de técnicas** (v0.5.12 / v0.7.1): **ADOPTADO** en `contract-checker.ts`, `framework-checker.ts` con 20 tests y suite de fixtures `f0..f11`.
5. **Los 4 Flujos Audiovisuales (Audio-First, Screen-First, Speaker-First, Music-First)** (v0.7.1): **ADOPTADO** en `src/core/phases.ts` y `src/core/machine.ts` adaptando la evidencia en P05.
6. **Detección de outliers por mediana temporal reciente y desglose de formato** (revisión 11): En `AGENTS.md` §04.5 y `roles/01` §1, el criterio principal de outliers pasa de ser el ratio simple visitas/suscriptores a contrastar contra la mediana reciente (3 a 6 meses) y desglosar Shorts vs. videos largos. La skill `yts-investigacion-ideas` del consumidor todavía instruye el cálculo simple de ratio visitas/suscriptores; pendiente de adopción en su próxima actualización.

### Acción pendiente en el consumidor

Actualizar la instrucción de detección de outliers en la skill `yts-investigacion-ideas` de `youtube-shell` para incorporar la mediana temporal reciente y el desglose de formato de `AGENTS.md` §04.5. En plantillas espejadas de video, la alineación permanece en **8 de 8 sin deriva**.

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
