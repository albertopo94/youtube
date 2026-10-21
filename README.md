# YouTube Creator Hub 🎬 (Oficina de Producción)

Espacio de trabajo modular y pipeline de ingeniería de contenidos para la conceptualización, estrategia, guionado, diseño visual, edición y publicación de canales y videos de YouTube con agentes de IA.

---

## 🏛️ Filosofía y Analogía de Software

La producción moderna en YouTube funciona como un ciclo de vida de desarrollo de software (SDLC):

| Rol en Desarrollo | Rol en el Hub de YouTube | Responsabilidad Principal |
| :--- | :--- | :--- |
| **Product Discovery / PM** | **Investigador & Scout** | Detectar *outliers*, validar nichos en VidIQ/Trends y filtrar ideas inviables con los 6 filtros de eliminación. |
| **API Contract / Interface Spec** | **Packager (Packaging First)** | Diseñar el Título y la Miniatura **antes** de escribir el guion. Es la promesa de interfaz con el usuario. |
| **Core Dev / Backend** | **Guionista (Narrative Architect)** | Guion estructurado por bloques atómicos, adaptando la apertura y la narrativa al formato y género. |
| **Frontend / Assets** | **Director Visual (Storyteller)** | Storyboard, selección de planos (A-roll / B-roll), assets de stock (Pexels, Coverr, Pixabay) y generación visual. |
| **Audio Engineer** | **Diseñador Sonoro** | Música de fondo, ecualización de voz y colocación de efectos de sonido (SFX) para acentuar emociones. |
| **QA / Linter / Compliance** | **Auditor de Calidad & Legal** | Sound check, flow check, style check y registro estricto de procedencia/licencias de cada recurso. |
| **DevOps / Release** | **Publisher & Growth** | Publicación, carga de metadatos, tags y configuración de pruebas A/B de miniaturas en YouTube Studio. |
| **Telemetría / Observabilidad** | **Analista de Retención** | Análisis de impresiones, fuentes de tráfico, CTR, AVD y retención para retroalimentar el pipeline. |

---

## ⚡ Gobernanza y Niveles de Autonomía de los Agentes

Documentadas en detalle en `AGENTS.md` y `_framework/reglas-sistema.md`:

1. **Autonomía Normal (Ejecución Fluida):** Tareas reversibles, investigación, redacción de borradores, búsqueda de stock y fact-checking se ejecutan sin pedir confirmación en cada micro-paso. Recomendación principal fundamentada para tareas rutinarias.
2. **Aprobación Creativa (Puntos de Control / Checkpoints):** Validación humana explícita antes de pasar de fase:
   - Nicho y concepto del canal.
   - Packaging (títulos y miniaturas candidatas en `01-packaging.md`).
   - Guion definitivo y puerta de originalidad/políticas en `02-guion.md`.
   - Modo de producción (ejecución automática en agente vs. manual en herramienta externa).
3. **Confirmación Obligatoria de Operaciones Sensibles:** Detención obligatoria antes de publicar en YouTube, consumir créditos/costos o ejecutar operaciones destructivas.
4. **Regla de 5 Alternativas:** Aplicada estrictamente a **decisiones creativas clave** (nombres de canales, ángulos, ganchos de intro, títulos y conceptos de miniatura).

---

## 🛡️ Puertas de Calidad, Políticas y Rigor

- **Puerta de Originalidad y Monetización:** Verificación obligatoria de valor editorial añadido y anti-contenido repetitivo/reutilizado antes de aprobar guiones.
- **Protocolo de Fact-Checking en Dos Etapas:** Investigación de fuentes de partida antes de redactar ➔ verificación de afirmaciones del borrador contra DOIs, libros o fuentes institucionales.
- **Pruebas A/B Nativas de YouTube (Test & Compare):** Prueba de hasta 3 combinaciones de títulos y miniaturas en videos largos (Long-form) evaluado por *Watch Time Share*.
- **Trazabilidad Legal Precisa:** Registro de licencia exacta, versión consultada y texto de atribución para cada recurso.

---

## 📂 Estructura del Repositorio

```text
youtube/
├── README.md                          # Este manual general
├── AGENTS.md                          # Protocolo de gobernanza y directivas para agentes de IA
├── .gitignore                         # Exclusión de credenciales y archivos del sistema
│
├── ideas.md                           # Banco vivo de nichos, formatos e ideas propias
├── referentes.md                      # Catálogo transversal de canales de referencia (con y sin IA)
├── banco-visual.md                    # Registro transversal de estilos visuales y de animación
├── medidas-banner-youtube.png         # Guía visual de zonas seguras oficiales para banners
│
├── _framework/                        # El núcleo metodológico de la oficina
│   ├── reglas-sistema.md              # Reglas operativas para agentes (5 opciones + manual vs auto)
│   ├── ciclo-produccion.md            # Ciclo macro y blueprint del flujo automatizado de 6 pasos
│   ├── contingencia-y-politicas-sensibles.md # Regímenes de veracidad, léxico prohibido YMYL y plan de apelación
│   ├── estrategia-idiomas.md          # Ranking y mercados prioritarios (Español, Inglés, Hindi)
│   ├── herramientas-y-apis.md         # Directorio de ArtCraft (FilmCraft/EffectCraft/SoundCraft), MCPs y APIs de stock
│   ├── referencias/                   # Síntesis de casos de estudio reales y análisis de formatos
│   │   ├── sintesis-casos-shorts.md   # Síntesis de casos de estudio de retención y formatos
│   │   ├── auditorias/                # Archivo histórico de auditorías
│   │   └── prompts/                   # Prompts y referencias externas de inspiración (Prompt Maestro)
│   ├── roles/
│   │   ├── 01-investigacion-ideas.md  # Detección de outliers + método Topic/Format/Spice + 6 filtros
│   │   ├── 02-packaging-miniaturas.md # 3 C's, psicología, curiosity gaps, 3 tests y estrategia 3 miniaturas
│   │   ├── 03-guion-y-narrativa.md    # Intros 5s, plot promise, ganchos, estructura Conflicto->Contexto->Mensaje->CTA
│   │   └── 04-direccion-y-edicion.md  # A/B roll, focal point, ritmo, sound check, flow check y style check
│   └── plantillas/
│       ├── prompts-utiles.md          # Prompts para perfil, banner con medidas y storyboards
│       ├── registro-licencias-template.md # Tabla legal de trazabilidad de clips y audios
│       ├── registro-verificacion-fuentes-template.md # Tabla de fact-checking y fuentes primarias
│       ├── estudio-canal-template.md  # Plantilla para evaluar viabilidad de un canal nuevo
│       ├── propuesta-branding-template.md # Plantilla para identidad, logo, banner y tono
│       ├── backlog-ideas-template.md  # Plantilla de ideas en cola y lista de temas vetados
│       ├── entregable-final-template.md # Plantilla del video publicado (metadata, tags, créditos)
│       └── pipeline-video-template/   # Plantilla modular para producir un video:
│           ├── 00-estado-produccion.md       # Estado persistente y siguiente acción permitida
│           ├── 01-packaging.md               # 5 títulos + 3 variantes de miniatura nativas
│           ├── 02-guion.md                   # Guion por bloques [Bxx] y puerta de originalidad
│           ├── 03-storyboard-y-edicion.md    # Animatic preliminar, tabla de escenas y diseño sonoro
│           ├── 04-registro-recursos.md       # Registro integral de licencias, stock, IA y música
│           ├── 05-metricas-retencion.md      # Impresiones, fuentes, retención y Test & Compare
│           └── 06-fuentes-y-verificacion.md  # Fact-checking con DOI/fuentes primarias y matices
│
├── canales-en-estudio/                # Incubadora de canales en fase de investigación y validación
│   ├── README.md                      # Instrucciones de uso
│   └── _plantilla-canal/              # Scaffolding vivo (estudio-mercado, propuesta-branding, backlog-ideas)
│
├── mis-canales/                       # Canales aprobados y en operación activa
│   ├── README.md                      # Instrucciones de uso
│   └── _plantilla-canal/              # Scaffolding vivo (backlog-ideas, branding/, banco-visual, videos)
```

---

## 🔄 Flujo Operativo de un Video (Pipeline Consolidado)

1. **Inicio y Estado Persistente:** Identificar canal/video y verificar entregables en `00-estado-produccion.md`.
2. **Packaging First:** Definir 5 títulos y miniaturas en `01-packaging.md` (y hasta 3 variantes de título/miniatura para videos largos).
3. **Investigación Previa:** Recopilar fuentes primarias y límites de evidencia en `06-fuentes-y-verificacion.md` (Parte 1).
4. **Guionado Atómico por Bloques:** Redactar la locución por bloques `[Bxx]` con puerta de originalidad en `02-guion.md`.
5. **Verificación de Afirmaciones:** Contrastar cada dato del guion contra fuentes verificadas en `06-fuentes-y-verificacion.md` (Parte 2).
6. **Animatic y Edición:** Montar la locución provisional (scratch track) y wireframe visual en `03-storyboard-y-edicion.md`. Validar ritmo antes de generar assets finales.
7. **Montaje, Licencias y Cierre:** Master exportado con ficha técnica de render, registro legal en `04-registro-recursos.md`, seguimiento en `05-metricas-retencion.md` y cierre en `entregable-final.md`.

---

## 🧪 Entorno de Pruebas y Sandbox Aislado

Para realizar pruebas experimentales, testear herramientas (como locuciones TTS o renders locales) o producir videos piloto sin alterar este repositorio maestro ni ensuciar su historial de Git:

```bash
# 1. Desde la carpeta padre del proyecto (ej. /Users/.../Proyectos):
#    ⚠️ rsync NO respeta .gitignore: solo copia lo que se excluye explícitamente.
#    Sin las exclusiones de abajo, la copia se lleva .env, claves (.pem/.key),
#    credenciales, cachés (.atl/), renders y exports. Y luego el paso 2 invita a
#    hacer 'gh repo create' encima: el sandbox se convierte en un espejo de los
#    secretos del maestro. Exclusiones obligatorias:
rsync -av \
  --exclude='.git' \
  --exclude='.env' --exclude='.env.*' \
  --exclude='*.pem' --exclude='*.key' --exclude='*.local' \
  --exclude='.atl/' --exclude='.codegraph/' \
  --exclude='renders/' --exclude='**/renders/' \
  --exclude='exports/' --exclude='**/exports/' \
  --exclude='*.mp4' --exclude='*.mov' --exclude='*.mp3' --exclude='*.wav' \
  --exclude='*.png' --exclude='*.jpg' \
  youtube/ youtube-prueba/

# 2. (Opcional) Si deseas versionar los avances del sandbox en un repositorio privado independiente:
cd youtube-prueba
git init -b main
gh repo create youtube-prueba --private --source=. --remote=origin --push
```

*Ventajas de este aislamiento:*
- Permite que un agente opere "en frío" desde cero sin contaminar la plantilla canónica.
- Libertad total para generar archivos de audio, imágenes de prueba o renders descartables.
- Si la prueba no convence, basta con eliminar la carpeta `youtube-prueba/` sin dejar rastro en la oficina principal.
