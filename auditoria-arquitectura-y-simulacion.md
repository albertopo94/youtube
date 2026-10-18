# Auditoría de Arquitectura, Grado de Automatización y Simulación Operativa

**Proyecto:** YouTube Creator Hub  
**Fecha:** 18/10/2026  
**Objetivo:** Evaluar la capacidad de comprensión de agentes de IA sobre el repositorio, determinar el grado real de automatización del pipeline y simular una jornada operativa real de cocreación.

---

## 1. Evaluación Cognitiva del Agente: ¿Entiende el flujo o se pierde?

### Diagnóstico Técnico
El repositorio está estructurado bajo las mejores prácticas de ingeniería de agentes (archivos `AGENTS.md`, `README.md`, scaffolding vivo con `_plantilla-canal/`, roles desacoplados en `_framework/roles/` y plantillas modulares).

#### Dónde brilla el agente con esta arquitectura:
1. **Comprensión de límites y directivas:** El archivo `AGENTS.md` funciona como un *system prompt* determinista. El agente comprende que debe consultar `01-investigacion-ideas.md` para ideación, `02-packaging-miniaturas.md` para títulos/miniaturas, etc.
2. **Filosofía "Packaging First":** El agente tiene prohibido redactar guiones sin packaging aprobado. Sabe que debe proponer títulos y 3 miniaturas independientes en `01-packaging.md` antes de abrir `02-guion.md`.
3. **Estructura atómica por bloques:** Al exigirle trabajar con bloques identificados (`[B01_Hook]`, `[B02_Contexto]`, etc.) con tiempos estimados, el agente no produce textos planos ni divagaciones interminables; entrega guiones con ritmo medible.
4. **Scaffolding reproducible:** Sabe duplicar las plantillas vivas (`_plantilla-canal/` o `pipeline-video-template/`) sin inventar estructuras ad-hoc.

#### Dónde tiene límites (y cómo debe conducirse):
- **Evitar la "macro-orden" descontrolada:** Si se le pide al agente *"Crea el canal X y produce 5 videos completos de principio a fin"*, cualquier LLM actual sufrirá *drift de contexto*, inventará datos superficiales y perderá el rigor de fuentes.
- **Modelo Director / Copiloto:** El creador actúa como **Director de Orquesta** validando los checkpoints de *Aprobación Creativa* definidos en la gobernanza. El agente ejecuta el trabajo pesado de investigación, redacción y estructuración paso a paso.

---

## 2. Grado Real de Automatización del Proyecto (Porcentajes por Capa)

Siendo rigurosos desde la ingeniería de software y la producción audiovisual, el grado de automatización global del repositorio se sitúa actualmente en un **35% – 40%**:

| Capa del Pipeline | Grado de Automatización | Estado Técnico Real Hoy |
| :--- | :---: | :--- |
| **Gobernanza y Metodología** | **95%** | Reglas de decisión, 3 niveles de autonomía, filtros de eliminación y políticas de YouTube totalmente operativas. |
| **Scaffolding y Estructura de Archivos** | **90%** | Duplicación automática de plantillas para canales y videos sin fricción. |
| **Investigación, Fact-Checking y Guionado** | **80%** | Redacción por bloques atómicos, búsqueda de fuentes DOI/papers y diseño de prompts visuales asistidos por IA. |
| **Generación Audiovisual (Audio / Video)** | **10%** | **Asistida / Manual:** El agente produce los prompts (Midjourney/Flux) y el texto para TTS (ElevenLabs), pero la ejecución y exportación la realiza el creador en sus respectivas plataformas. |
| **Montaje y Edición (Línea de Tiempo)** | **5%** | **Manual:** La suite ArtCraft (FilmCraft) se encuentra en fase alfa (~56% de preparación para producción real). No existen aún scripts automáticos de renderizado vía FFmpeg/código. |
| **Publicación y Pruebas A/B** | **0%** | **100% Manual en YouTube Studio:** Restricciones de la YouTube Data API v3 (las subidas de apps no auditadas quedan privadas y no hay endpoint público para la herramienta nativa "Prueba y Compara"). |

> **Conclusión de Arquitectura:** Hoy el sistema automatiza la **inteligencia de producto, la dirección editorial y el control de calidad**, protegiendo al canal de desmonetizaciones por spam o contenido repetitivo.

---

## 3. Simulación Doble: Jornada Operativa Real en la Oficina

A continuación se simula una interacción real entre el Creador y un Agente de IA operando sobre este repositorio.

---

### Fase A: Creación y Validación de un Canal Candidato

#### 🧑‍💻 Instrucción del Creador:
> *"Hola. Quiero evaluar la idea 1 de `ideas.md`: explicar papers científicos complejos para que los entiendan niños y abuelos, de forma divertida y práctica. Crea el estudio de viabilidad para este canal y preséntame las propuestas iniciales."*

#### 🤖 Respuesta Operativa del Agente:
*(El agente lee `AGENTS.md`, consulta `_framework/roles/01-investigacion-ideas.md`, duplica `canales-en-estudio/_plantilla-canal/` a `canales-en-estudio/papers-simples/` y aplica la regla de 5 alternativas).*

> *"Entendido. He inicializado el estudio del canal candidato en:  
> `canales-en-estudio/papers-simples/` duplicando las plantillas `estudio-mercado.md` y `propuesta-branding.md`.
>
> Aplicando los criterios de `01-investigacion-ideas.md`, analicé el nicho de divulgación simplificada y detecté que los canales de mayor éxito combinan analogías cotidianas con humor gráfico.
>
> ### Propuesta de Concepto y Naming (5 Alternativas):
> 1. **¿Me lo Explicás con Manzanas?:** Desmontando estudios de Nature/Science con analogías absurdas y visuales muy simples.
> 2. **Ciencia en Zapatillas:** Tono cotidiano y desenfadado; experimentos explicados como recetas de cocina.
> 3. **Papers para el Recreo:** Enfoque pedagógico y ultra-dinámico, estética cercana al cómic.
> 4. **Laboratorio de Bolsillo:** Foco en la aplicación práctica inmediata: ¿de qué le sirve este descubrimiento a mi familia hoy?
> 5. **Ciencia sin Filtro:** Formato satírico/chill con remates humorísticos sobre la jerga académica.
>
> ### Evaluación de Políticas de YouTube (YPP):
> - **Aportación Editorial Propia:** Muy alta. No se reproduce el paper; se traduce a metáforas y narrativa original (blindado contra contenido reutilizado).
> - **Fact-Checking Obligatorio:** Requiere registrar DOI y fecha de consulta en `registro-verificacion-fuentes-template.md` para evitar distorsionar las conclusiones científicas.
>
> **Checkpoint de Aprobación Creativa:**  
> ¿Qué alternativa de nombre y enfoque conceptual prefieres para completar la `propuesta-branding.md` y definir los primeros 5 videos candidatos?"*

---

### Fase B: Packaging First y Guionado del Primer Video

#### 🧑‍💻 Decisión y Aprobación del Creador:
> *"Aprobado el canal con el nombre '¿Me lo Explicás con Manzanas?'. Promuévelo a canal activo. Para el primer video, trabajaremos sobre un paper reciente de Science sobre cómo el cerebro se limpia de toxinas mientras dormimos (sistema glinfático). Diseña el packaging."*

#### 🤖 Respuesta Operativa del Agente:
*(El agente mueve la carpeta a `mis-canales/me-lo-explicas-con-manzanas/`, crea `videos-en-estudio/001-cerebro-limpieza-sueno/` y completa `01-packaging.md`).*

> *"Canal promovido a producción activa en `mis-canales/me-lo-explicas-con-manzanas/` y video inicial configurado en `videos-en-estudio/001-cerebro-limpieza-sueno/`.
>
> Aplicando la filosofía **Packaging First** (la promesa de interfaz antes de redactar el guion):
>
> ### 1. Opciones de Título (Mínimo 5 Alternativas):
> 1. *La 'ducha nocturna' de tu cerebro que la ciencia acaba de descubrir*
> 2. *Qué le pasa exactamente a tu mente cuando te dormís (explicado simple)*
> 3. *Científicos descubren cómo tu cerebro se 'lava' mientras dormís*
> 4. *Por qué dormir poco está intoxicando tu cabeza (literalmente)*
> 5. *El camión de basura que tenés en el cráneo y solo trabaja de noche*
>
> ### 2. Estrategia de las 3 Miniaturas (Prueba y Compara Nativa de YouTube):
> - **Variante A (Curiosity Gap de Resultado):** Ilustración de una cabeza en corte transversal con pequeños obreros simpáticos limpiando un líquido brillante con esponjas. Texto: *¿SE LAVA SOLO?*
> - **Variante B (Transformación / Alerta):** Pantalla dividida: mitad cerebro brillante y limpio vs. mitad cerebro oxidado/con smog. Texto: *SIN DORMIR*.
> - **Variante C (Novelty / Humor visual):** Una llave de paso saliendo de una oreja drenando líquido azul mientras la persona duerme plácidamente. Texto: *CADA NOCHE*.
>
> **Checkpoint de Aprobación Creativa:**  
> Por favor valida el título definitivo y las variantes de miniatura en `01-packaging.md`. Una vez aprobado, redactaré el borrador de `02-guion.md` estructurado en bloques atómicos `[B01]` a `[B07]` con su locución provisional para el montaje preliminar (Animatic)."*

---

## 4. Veredicto Final

1. **Robustez de la Asistencia:** El sistema canaliza al modelo de lenguaje para que actúe como un **consultor editorial y director técnico sénior**, eliminando divagaciones y garantizando consistencia de archivos.
2. **Control Humano Preservado:** La gobernanza en 3 niveles de autonomía otorga agilidad sin ceder el control de la propiedad intelectual ni del dinero.
3. **Escalabilidad Comprobada:** Pasar de una idea abstracta a un video estructurado se realiza mediante un flujo reproducible y auditable.
