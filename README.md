# YouTube Creator Hub 🎬 (Oficina de Producción)

Espacio de trabajo modular y pipeline de ingeniería de contenidos para la conceptualización, estrategia, guionado, diseño visual, edición y publicación de canales y videos de YouTube con agentes de IA.

---

## 🏛️ Filosofía y Analogía de Software

La producción moderna en YouTube funciona como un ciclo de vida de desarrollo de software (SDLC):

| Rol en Desarrollo | Rol en el Hub de YouTube | Responsabilidad Principal |
| :--- | :--- | :--- |
| **Product Discovery / PM** | **Investigador & Scout** | Detectar *outliers*, validar nichos en VidIQ/Trends y filtrar ideas inviables con los 6 filtros de eliminación. |
| **API Contract / Interface Spec** | **Packager (Packaging First)** | Diseñar el Título y la Miniatura **antes** de escribir el guion. Es la promesa de interfaz con el usuario. |
| **Core Dev / Backend** | **Guionista (Narrative Architect)** | Guion con estructura `Conflicto ➔ Contexto ➔ Mensaje ➔ CTA`, cumpliendo la promesa en los primeros 5 segundos. |
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
- **Protocolo de Fact-Checking:** Registro de fuentes primarias y verificación de afirmaciones en temas científicos, técnicos, históricos o noticias.
- **Pruebas A/B Nativas de YouTube (Test & Compare):** Roteo de hasta 3 miniaturas en YouTube Studio evaluado por *Watch Time Share* durante semanas, evitando cambios manuales precipitados a las pocas horas.
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
│   └── _plantilla-canal/              # Scaffolding vivo (estudio-mercado.md + propuesta-branding.md)
│
├── mis-canales/                       # Canales aprobados y en operación activa
│   ├── README.md                      # Instrucciones de uso
│   └── _plantilla-canal/              # Scaffolding vivo (branding/, banco-visual, referentes, videos)
```

---

## 🔄 Flujo Operativo de un Video (Pipeline Consolidado)

1. **Inicio y Estado Persistente:** Identificar canal/video y verificar entregables en `00-estado-produccion.md`.
2. **Packaging First:** Definir 5 títulos y las 3 variantes de miniatura en `01-packaging.md` antes de escribir el guion.
3. **Fact-Checking y Rigor:** Enlazar afirmaciones clave con DOIs y fuentes primarias en `06-fuentes-y-verificacion.md`.
4. **Guionado Atómico por Bloques:** Redactar la locución por bloques `[Bxx]` con puerta de originalidad en `02-guion.md`.
5. **Animatic y Edición:** Montar la locución provisional (scratch track) y wireframe visual en `03-storyboard-y-edicion.md`. Validar el ritmo narrativo antes de generar o descargar assets finales de pago.
6. **Auditoría Legal:** Asentar cada recurso, licencia, plan y texto de atribución en `04-registro-recursos.md`.
7. **Publicación y Pruebas A/B Nativas:** Cargar variantes en "Prueba y Compara" de YouTube Studio y monitorear el resultado por tiempo de visualización compartido (*Watch Time Share*) en `05-metricas-retencion.md`. Cerrar el video con `entregable-final.md`.
