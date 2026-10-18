# AGENTS.md — Protocolo Operativo para Agentes de IA

Este repositorio es la oficina y fábrica de creación de canales y videos de YouTube del creador. Todo agente que opere en este workspace debe acatar estrictamente las siguientes directivas, niveles de autonomía y protocolos.

---

## ⚡ Gobernanza y Niveles de Autonomía de los Agentes

Para asegurar control creativo sin burocracia paralizante, el agente debe operar bajo **tres niveles de autonomía**:

### 1. Autonomía Normal (Ejecución Fluida)
- El agente investiga, redacta borradores, organiza archivos, busca recursos de stock, verifica fuentes y ejecuta tareas reversibles **sin pedir permiso en cada paso**.
- Para tareas rutinarias o técnicas, el agente presenta una **recomendación principal fundamentada**, acompañada de alternativas solo cuando aporten valor genuino.

### 2. Aprobación Creativa (Puntos de Control / Checkpoints)
El creador valida y aprueba explícitamente los hitos estratégicos antes de pasar a la siguiente etapa:
- **Concepto del canal y nicho** (en `canales-en-estudio/`).
- **Packaging del video:** Título definitivo y conceptos de miniaturas en `01-packaging.md`.
- **Guion maestro por bloques:** Aprobación de la estructura atómica `[Bxx]`, gancho y puerta de originalidad en `02-guion.md`.
- **Montaje preliminar / Animatic:** Validación del ritmo y la fluidez sobre la locución provisional (scratch track) en `03-storyboard-y-edicion.md` **antes de generar renders finales de pago o descargar clips en alta**.
- **Selección de estilo y modo de edición:** Decisión sobre el modo de producción (automático asistido por agente vs. montaje manual por el creador en herramienta externa).
*(Una vez aprobado cada hito por el creador, el agente continúa con autonomía).*

### 3. Confirmación Obligatoria de Operaciones Sensibles
El agente **debe detenerse y solicitar confirmación expresa** antes de:
- Publicar videos o metadatos en producción en YouTube.
- Operaciones que impliquen costos financieros o consumo de créditos de pago.
- Modificar o borrar archivos existentes relevantes de forma irreversible.
- Operaciones destructivas de Git.

---

## 🎨 Regla de las 5 Alternativas (Decisiones Creativas Clave)

- Para **decisiones creativas de alto impacto** (nombres de canales, ángulos diferenciadores, ganchos de apertura, títulos candidatos de video y conceptos de miniaturas independientes), el agente **debe proponer como mínimo 5 alternativas bien contrastadas**.
- Para ajustes menores, microediciones o tareas operativas, basta con la mejor recomendación justificada.

---

## 🎯 Filosofía "Packaging First" (Hipótesis de Interfaz)

- **El packaging (Título + Miniatura) es la hipótesis de interfaz del video:** No garantiza por sí solo el éxito, pero define qué público hace clic y fija la promesa que el contenido debe cumplir en los primeros segundos.
- **Flujo:** Antes de escribir el guion definitivo, se validan los títulos candidatos y las 3 variantes de miniatura en `01-packaging.md`. Solo cuando el packaging está aprobado se avanza a la redacción y producción.

---

## 🛡️ Puertas de Seguridad: Originalidad, Fact-Checking y Legal

1. **Originalidad y Monetización:** Ningún guion se aprueba sin verificar que aporta análisis o valor editorial propio que evite las sanciones de YouTube por contenido repetitivo o reutilizado.
2. **Fact-Checking:** En videos de papers científicos, historia o noticias, registrar las afirmaciones clave y fuentes primarias (`_framework/plantillas/registro-verificacion-fuentes-template.md`). Evitar simplificaciones que alteren el sentido científico.
3. **Licencias Precisas:** Todo recurso descargado debe registrar la licencia exacta y versión consultada a la fecha de descarga (`04-registro-recursos.md`).

---

## 🏗️ Protocolo de Archivos y Carpetas (Scaffolding)

### 1. Investigación de Nuevo Canal:
- Crear: `canales-en-estudio/[slug-canal]/`.
- Duplicar contenido desde `canales-en-estudio/_plantilla-canal/` (`estudio-mercado.md` y `propuesta-branding.md`).
- Consultar metodología en `_framework/roles/01-investigacion-ideas.md`.

### 2. Promoción de Canal Aprobado:
- Mover de `canales-en-estudio/[slug-canal]/` a `mis-canales/[slug-canal]/`.
- Asegurar estructura viva según `mis-canales/_plantilla-canal/` (`branding/`, `banco-visual.md`, `referentes.md`, `videos-en-estudio/`, `videos-publicados/`).

### 3. Producción de Video (Pipeline Audio-First Iterativo):
- Crear: `mis-canales/[slug-canal]/videos-en-estudio/[numero]-[slug-video]/`.
- Duplicar desde `_framework/plantillas/pipeline-video-template/`:
  - `01-packaging.md` (Packaging First).
  - `02-guion.md` (Guion atómico por bloques `[Bxx]` con locución provisional y puerta de originalidad).
  - `03-storyboard-y-edicion.md` (Animatic preliminar de baja fidelidad ➔ Aprobación ➔ Assets finales y diseño sonoro).
  - `04-registro-recursos.md` (Registro integral de stock, IA visual, TTS, música y licencias).
  - `05-metricas-retencion.md` (Impresiones, fuentes, retención y prueba nativa de YouTube).

### 4. Publicación y Cierre:
- Mover carpeta a `mis-canales/[canal]/videos-publicados/[slug-video]/`.
- Completar `entregable-final.md` con URL pública, miniatura ganadora y créditos legales.
- Registrar datos de rendimiento e informe de la prueba nativa "Prueba y Compara" de YouTube en `05-metricas-retencion.md`.

---

## 📚 Mapa de Referencia y Roles

| Función | Documento de Consulta |
| :--- | :--- |
| **Ideación, Outliers y Fact-Checking** | `_framework/roles/01-investigacion-ideas.md`, `ideas.md` y `_framework/plantillas/registro-verificacion-fuentes-template.md` |
| **Títulos, Miniaturas y A/B Nativo** | `_framework/roles/02-packaging-miniaturas.md` |
| **Guion, Ganchos y Puerta de Originalidad** | `_framework/roles/03-guion-y-narrativa.md` |
| **Edición, Ritmo, Sonido y ArtCraft** | `_framework/roles/04-direccion-y-edicion.md` y `_framework/herramientas-y-apis.md` |
| **Trazabilidad Legal y Licencias** | `_framework/plantillas/registro-licencias-template.md` |
| **Hipótesis de Mercados e Idiomas** | `_framework/estrategia-idiomas.md` |
