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
| **Telemetría / Observabilidad** | **Analista de Retención** | Análisis de CTR, AVD y retención a 30s para retroalimentar la incubadora de ideas. |

---

## ⚡ Reglas de Oro del Sistema (Gobernanza de Agentes)

Documentadas en detalle en `_framework/reglas-sistema.md`:
1. **Regla de Alternativas (Mínimo 5):** Cada vez que un agente genere o proponga un resultado (ideas, títulos, nichos, conceptos de miniatura, ganchos), debe ofrecer como mínimo **5 alternativas**.
2. **Regla de Bifurcación Operativa (Manual vs. Automático):** El agente debe consultar siempre antes de dar el siguiente paso si el creador desea que la IA lo ejecute automáticamente o si prefiere realizarlo de forma manual en una herramienta externa sugerida.

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
│       ├── estudio-canal-template.md  # Plantilla para evaluar viabilidad de un canal nuevo
│       ├── propuesta-branding-template.md # Plantilla para identidad, logo, banner y tono
│       ├── entregable-final-template.md # Plantilla del video publicado (metadata, tags, créditos)
│       └── pipeline-video-template/   # Plantilla modular para producir un video:
│           ├── 01-packaging.md
│           ├── 02-guion.md
│           ├── 03-storyboard-y-edicion.md
│           ├── 04-registro-recursos.md
│           └── 05-metricas-retencion.md
│
├── canales-en-estudio/                # Incubadora de canales en fase de investigación y validación
│   ├── README.md                      # Instrucciones de uso
│   └── _plantilla-canal/              # Scaffolding vivo (estudio-mercado.md + propuesta-branding.md)
│
├── mis-canales/                       # Canales aprobados y en operación activa
│   ├── README.md                      # Instrucciones de uso
│   └── _plantilla-canal/              # Scaffolding vivo (branding/, banco-visual, referentes, videos)
│
└── old-workflow/                      # Respaldo intacto de las notas y archivos originales del workspace
    ├── aspectos.md
    ├── banco-visual.md
    ├── ideas.md
    ├── medidas-banner-youtube.png
    ├── prompts-utiles.md
    └── referentes.md
```

---

## 🔄 Flujo Operativo de un Video (Packaging First)

1. **Selección de Idea:** Seleccionar idea de `ideas.md` o validar outlier con `_framework/roles/01-investigacion-ideas.md`.
2. **Packaging First:** Definir 5 títulos y conceptualizar las 3 miniaturas independientes en `01-packaging.md`.
3. **Guionado de Retención:** Redactar el guion en `02-guion.md` asegurando la promesa en los primeros 5 segundos.
4. **Storyboard y Edición:** Planificar tomas y diseño sonoro en `03-storyboard-y-edicion.md`.
5. **Auditoría Legal:** Asentar cada recurso descargado en `04-registro-recursos.md`.
6. **Publicación y Pruebas A/B:** Monitorear CTR y retención en `05-metricas-retencion.md`, activando miniaturas de reemplazo si es necesario.
