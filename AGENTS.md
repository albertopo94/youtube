# AGENTS.md — Protocolo Operativo para Agentes de IA

Este repositorio es la oficina y fábrica de creación de canales y videos de YouTube del creador. Todo agente que opere en este workspace debe acatar estrictamente las siguientes directivas y protocolos.

---

## ⚡ Reglas de Oro del Sistema (Gobernanza Absoluta)

1. **Regla de las 5 Alternativas (Obligatoria):**
   Siempre que el agente deba proponer, generar o sugerir cualquier elemento (nichos, nombres de canales, ángulos, ganchos de intro, títulos, conceptos de miniaturas, descripciones, llamadas a la acción, estilos visuales, etc.), **debe entregar como mínimo 5 alternativas bien diferenciadas**. Jamás entregar una sola opción salvo que el usuario lo pida expresamente.

2. **Regla de Bifurcación Operativa (Manual vs. Automático):**
   Antes de ejecutar el siguiente paso del pipeline (redactar guion, armar storyboard, generar locución, buscar clips o armar timeline), el agente **debe preguntar obligatoriamente al creador si desea que el agente lo ejecute directamente o si prefiere realizarlo él manualmente en una herramienta externa** (la cual el agente debe sugerir activamente).

3. **Filosofía "Packaging First" (Innegociable):**
   **Está prohibido escribir un guion o producir metraje sin packaging aprobado.**
   El 90% del éxito de un video depende de su promesa de interfaz (Título + Miniatura). Primero se valida la idea, se definen los títulos candidatos y se diseñan las 3 miniaturas independientes en `01-packaging.md`. Solo cuando el creador aprueba el packaging se avanza al guion.

---

## 🏗️ Protocolo de Archivos y Carpetas (Scaffolding Automático)

### 1. Cuando el creador pida investigar un nuevo nicho o canal:
- Crear una nueva carpeta en: `canales-en-estudio/[slug-del-canal]/`.
- Copiar el contenido de `canales-en-estudio/_plantilla-canal/` dentro de la nueva carpeta:
  - `estudio-mercado.md`: Outliers detectados, competidores y primeras 5 ideas.
  - `propuesta-branding.md`: Concepto, público objetivo, paleta, logo y banner.
- Consultar la metodología en `_framework/roles/01-investigacion-ideas.md`.

### 2. Cuando un canal en estudio sea APROBADO:
- Mover la carpeta de `canales-en-estudio/[slug-del-canal]/` a `mis-canales/[slug-del-canal]/`.
- Asegurar que contenga la estructura viva según `mis-canales/_plantilla-canal/`:
  - `branding/`: Carpeta con `banner.png`, `logo.png` y especificaciones.
  - `banco-visual.md`: Estilos artísticos propios de este canal.
  - `referentes.md`: Canales benchmark de este nicho.
  - `videos-en-estudio/`: Pipeline de videos.
  - `videos-publicados/`: Historial de entregas.

### 3. Cuando se inicie un nuevo video para un canal activo:
- Crear la carpeta en: `mis-canales/[slug-del-canal]/videos-en-estudio/[numero]-[slug-del-video]/`.
- Copiar la plantilla modular desde `_framework/plantillas/pipeline-video-template/`:
  - `01-packaging.md`: Títulos + Miniaturas A/B/C (completar y aprobar primero).
  - `02-guion.md`: Estructura `Conflicto ➔ Contexto ➔ Mensaje ➔ CTA` con los primeros 5s resolviendo la promesa.
  - `03-storyboard-y-edicion.md`: Escenas, A-roll, B-roll, SFX y modo de edición.
  - `04-registro-recursos.md`: Tabla obligatoria de licencias y procedencia.
  - `05-metricas-retencion.md`: Registro de rendimiento post-publicación.

### 4. Cuando el video sea PUBLICADO en YouTube:
- Mover la carpeta de `videos-en-estudio/[slug-video]/` a `mis-canales/[canal]/videos-publicados/[slug-video]/`.
- Generar el archivo `entregable-final.md` usando `_framework/plantillas/entregable-final-template.md` con la URL de YouTube, miniatura definitiva, tags y descripción final.
- Registrar el CTR y retención a los 30s en `05-metricas-retencion.md`.

---

## 📚 Mapa de Referencia y Conocimiento por Rol

| Etapa | Archivo de Conocimiento Obligatorio |
| :--- | :--- |
| **Generar ideas o evaluar outliers** | `_framework/roles/01-investigacion-ideas.md` y la raíz `ideas.md` |
| **Diseñar títulos y miniaturas** | `_framework/roles/02-packaging-miniaturas.md` |
| **Redactar ganchos, intros y guiones** | `_framework/roles/03-guion-y-narrativa.md` |
| **Edición, ritmo, sonido y ArtCraft** | `_framework/roles/04-direccion-y-edicion.md` y `_framework/herramientas-y-apis.md` |
| **Descarga de clips y trazabilidad legal** | `_framework/plantillas/registro-licencias-template.md` |
| **Idiomas y mercados** | `_framework/estrategia-idiomas.md` |
