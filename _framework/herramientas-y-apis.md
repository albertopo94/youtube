# Herramientas, APIs y Conexiones Técnicas

Catálogo técnico de plataformas, software y APIs de la oficina de YouTube.

> **Reglas operativas del catálogo:**
> 1. Una URL identificada o un servidor MCP documentado **no equivale a una capacidad validada**. Cada herramienta se clasifica por lo que realmente se ha podido ejecutar y comprobar en este entorno (macOS Intel x86_64).
> 2. **Proactividad con Visto Bueno:** El agente debe sugerir activamente herramientas gratuitas o FOSS si detecta cuellos de botella en el flujo, pero **solo el creador autoriza su incorporación a esta matriz**.
> 3. **Prioridad de Montaje:** **FilmCraft** se mantiene como la herramienta objetivo principal para edición automatizada por su compatibilidad nativa con CLI y MCP para agentes. Su viabilidad definitiva para renders locales se resolverá en la prueba del **Video Piloto**.

---

## 🚦 Niveles de Validación en el Entorno Local

Toda herramienta debe evaluarse sobre cuatro evidencias técnicas verificables:
1. **Identidad y Versión:** Repositorio o URL oficial, proveedor y modelo/versión exacta.
2. **Prueba Ejecutada:** Acción técnica real probada localmente (no solo lectura de documentación).
3. **Resultado Verificable:** Archivo generado, log reproducible, captura o comprobante inspeccionado.
4. **Última Validación:** Fecha, entorno de prueba (macOS Intel x86_64), plan y límites comprobados.

### Clasificación Operativa:
- 🟢 **PROBADA EN ENTORNO:** Función ejecutada con éxito de extremo a extremo en este entorno (web o local). Lista para producción.
- 🟡 **DISPONIBLE / DOCUMENTADA:** Integración, API o plantilla accesible, pero cuya ejecución completa no ha sido verificada localmente.
- 🔴 **EXPERIMENTAL / CANDIDATA A PILOTO:** Herramienta en fase temprana cuyo rendimiento real en este equipo se evaluará en el video piloto.
- ⛔ **RESTRICCIÓN LEGAL:** Licencias incompatibles con monetización en YouTube (ej. pesos CC-BY-NC).
- 🔵 **VISIÓN FUTURA:** No disponible por limitaciones oficiales de la API del proveedor.

---

## 1. Matriz de Capacidades y Mapeo por Fase del Pipeline

| Herramienta / Servicio | Fase de Uso | Función en la Oficina | Estado en este Entorno | Acciones Específicamente Probadas | Limitaciones / Condiciones de Uso |
| :--- | :---: | :--- | :---: | :--- | :--- |
| **YouTube Studio Web** | `00 / 07` | Analítica, investigación de audiencia y Test & Compare | 🟢 PROBADA EN ENTORNO | Acceso a métricas de audiencia y research de términos. | Operación 100% manual por el creador; no existe API para Test & Compare. |
| **Google Trends & Ngrams** | `00 / 01` | Validación de demanda relativa e interés histórico | 🟢 PROBADA EN ENTORNO | Búsqueda de términos y estacionalidad. | Proporciona interés relativo, no volumen absoluto de búsquedas. |
| **VidIQ (Web & Extension)** | `00 / 01` | Detección de outliers (5x) y palabras clave | 🟢 PROBADA EN ENTORNO | Auditoría de competidores y casos atípicos. | Tier gratuito limita el historial profundo de métricas. |
| **Thumblytics** | `01` | Simulación de miniaturas en feed de YouTube | 🟢 PROBADA EN ENTORNO | Carga de bocetos para evaluar contraste en feed. | Requiere que el creador suba las imágenes manualmente en la web. |
| **AdForum** | `01` | Referencias publicitarias y ganchos de alto impacto | 🟢 PROBADA EN ENTORNO | Inspiración para intros y promesas visuales. | Catálogo comercial externo para consulta manual. |
| **Google AI Studio (Chat, Vision & Speech)** | `01/02/03/04/05` | Suite multimodal: análisis de textos largos, auditoría visual de miniaturas y módulo TTS | 🟢 PROBADA (WEB) | Web: [aistudio.google.com](https://aistudio.google.com/). Módulo de voz: [aistudio.google.com/generate-speech](https://aistudio.google.com/generate-speech?model=gemini-3.8-flash-tts). | **Límites por modelo:** Modelos multimodales (Gemini Flash/Pro) ofrecen ventana de 1M-2M tokens para ingesta de documentos en acceso abierto; el modelo de voz (*Generate Speech*) tiene un límite de entrada de ~8.192 tokens por petición. **Nota de paywalls:** no evade muros de pago de artículos cerrados; el creador debe suministrar el PDF legítimo. |
| **Google Scholar & Labs** | `02` | Búsqueda de papers primarios (Fact-checking) | 🟢 PROBADA EN ENTORNO | Localización de DOIs, abstracts y autores. | Ciertos papers completos exigen suscripción institucional. |
| **Google Docs Video Scene Editor** | `03 / 04` | Plantilla colaborativa de escenas y guion en Google Docs | 🟡 DISPONIBLE / DOC. | Documento en la nube de Google Docs para organización visual de escenas. | Enlace a plantilla colaborativa de previsualización; validar acceso y compatibilidad con el creador. |
| **ElevenLabs (Tier Free)** | `04` | Locución provisional (*Scratch Track*) para animatic | 🟢 PROBADA EN ENTORNO | Generación rápida de voz para validar ritmo sin costo. | Cuota mensual limitada de caracteres; apto para pruebas internas. |
| **Luvvoice (Web, MCP & Skill)** | `04` | Locución provisional (TTS gratuito) con soporte MCP y Skill | 🟢 DISPONIBLE / MCP | Web: [luvvoice.com/es](https://luvvoice.com/es) (Docs: [/es/doc](https://luvvoice.com/es/doc), MCP: [/es/mcp](https://luvvoice.com/es/mcp), Skill: [/es/skill](https://luvvoice.com/es/skill)). | **Solo Free Tier.** Ideal para locución provisional (*Scratch Track*) y animatic sin costo. Dispone de servidor MCP oficial y Skill para integración con agentes. |
| **ElevenLabs (Tier Creator)** | `05` | Locución comercial definitiva | 🟡 DISPONIBLE / DOC. | Derechos comerciales de salida bajo suscripción de pago. | Requiere suscripción activa para monetización en YouTube. |
| **FilmCraft** | `04 / 05` | **Montaje y timeline asistido por agentes (CLI / MCP)** | 🔴 CANDIDATA A PILOTO | Repositorio: [github.com/storytold/filmcraft](https://github.com/storytold/filmcraft). Protocolo verificado en código. | **Herramienta prioritaria para automatización por agentes.** Su protocolo de control y MCP soportan nativamente: recorte de pistas, cortes J/L, Essential Sound, normalización de sonoridad (`essentialSound.autoMatch`), curvas de ducking paramétrico (`essentialSound.generateDucking`) y keyframes de escala/posición. En fase alfa (~56%), el render reproducible en macOS Intel es el objetivo central del piloto. |
| **EffectCraft** | `05` | Motion graphics, cinemática de textos, onomatopeyas pop y overlays animados vía CLI/MCP | 🟢 PROBADA EN ENTORNO | Binario local: `effectcraft-cli 0.11.1` (`/Users/albertmac11/.local/bin/effectcraft-cli`). Repo: [github.com/storytold/effectcraft](https://github.com/storytold/effectcraft). | Soporta scripting JSX estilo After Effects (`app.project`, capas, keyframes), servidor MCP nativo (`effectcraft-cli mcp`) y renderizado directo a video (`render --comp C --out clip.mp4` en H.264, ProRes o transparente). Genera clips animados de 3 a 6s para la pista V2 en FilmCraft. |
| **SoundCraft** | `05` | Mezcla y edición de pistas de audio | 🔴 EXPERIMENTAL | Repositorio: [github.com/storytold/soundcraft](https://github.com/storytold/soundcraft). | Arquitectura tipo Pro Tools documentada. Fase pre-alfa; no apto para master final inmediato. |
| **Coverr (Web)** | `05` | Descarga de clips de stock libres de derechos | 🟢 PROBADA EN ENTORNO | Descarga directa de archivos mp4 para edición. | La web otorga licencia libre; guardar captura de términos en `licencias/`. |
| **Coverr (MCP / API)** | `05` | Búsqueda asistida de clips para agentes | 🟡 DISPONIBLE / DOC. | Identificación del servidor MCP (`mcp.coverr.co`). | Plan Demo limitado a 50 req/h; términos de API restringen uso comercial gratuito. |
| **Pexels & Pixabay APIs** | `05` | Catálogo de fotos y videos de stock | 🟡 DISPONIBLE / DOC. | Documentación y obtención de credenciales de API. | Exige verificar derechos de imagen de personas y marcas registradas. |
| **Wikimedia Commons API** | `05` | Archivo histórico y documental de licencia abierta | 🟡 DISPONIBLE / DOC. | Endpoints de MediaWiki Search. | Exige transcribir obligatoriamente la licencia exacta y atribución en cada asset. |
| **Openverse API** | `05` | Buscador federado de contenido con licencias libres | 🟡 DISPONIBLE / DOC. | Endpoints de búsqueda federada. | Filtrar por licencias que permitan uso comercial. |
| **Google Imágenes (Web Handoff)** | `04 / 05` | Búsqueda curada de imágenes en alta resolución mediante URL parametrizada | 🟢 PROBADA (HANDOFF) | Plantilla abierta: `https://www.google.com/search?udm=2&tbs=isz:l&q={QUERY}` (y variante libre: `tbs=isz:l,il:cl`). | Herramienta de **descubrimiento y revisión manual** para el creador, no de validación automática de licencias. Google advierte que los filtros son orientativos y exige verificar los derechos en la página de origen. |
| **Google Flow** | `03 / 04 / 05` | Estudio creativo para video cinemático, **Storyboards visuales de concepto** y **Consistencia de Personajes (Character Consistency)** | 🟢 DISPONIBLE / DOC. | Web: [flow.google.com](https://flow.google.com/). Canvas nodal de Google Labs (modelos Veo / Imagen 3). | Permite validar visualmente el storyboard de una idea antes de arriesgar horas de producción, encadenar nodos Image-to-Video y mantener personajes/avatares consistentes a lo largo de múltiples escenas. |
| **Google Flow Music** | `01 / 04 / 05` | Creación de canciones de estudio completas, jingles de branding, remixing de instrumentos y diseño sonoro | 🟢 DISPONIBLE / DOC. | Web: [flowmusic.app](https://www.flowmusic.app/). Generación musical con letra, voces cantadas y vibe-coding. | Permite crear la firma sonora oficial del canal (intro/outro) y pistas con cambios dinámicos de energía según el guion. |
| **YouTube Audio Library** | `05` | Música y efectos sonoros provistos por YouTube | 🟢 PROBADA EN ENTORNO | Descarga de pistas desde YouTube Studio. | Catálogo oficial de YouTube sujeto a sus propios términos de servicio. Determinadas pistas exigen transcribir la atribución literal en la descripción del video. |
| **AudioCraft (Meta)** | `05` | Generación musical por IA de Meta | ⛔ RESTRICCIÓN LEGAL | Identificación de modelos MusicGen/AudioGen. | **Pesos oficiales bajo licencia CC-BY-NC (No Comercial). Incompatible con monetización.** |
| **YouTube Data API v3** | `07` | Subida y gestión de videos por API (`videos.insert`) | 🟡 DISPONIBLE / DOC. | Documentación oficial de Google Developers. | La documentación oficial permite visibilidad pública en proyectos estándar. Sin embargo, no dispone de API para 'Prueba y Compara' A/B nativo. En fase piloto se prioriza carga manual en Studio. |

---

## 2. Recomendación Operativa para el Video Piloto

1. **Locución y Voz Neuronal:** Armar la locución provisional (*Scratch Track*) utilizando exclusivamente **motores de voz neuronal moderna** con entonación natural, respiración y pausas realistas (Google AI Studio Generate Speech, Luvvoice Free tier o ElevenLabs Free tier). **Queda terminantemente prohibido utilizar sintetizadores mecánicos locales arcaicos (como `/usr/bin/say` de macOS)**; su cadencia metálica y robótica imposibilita evaluar el ritmo del video y degrada la experiencia. El agente debe presentar las vías disponibles, dar su recomendación técnica y consultar al creador cuál prefiere antes de generar el archivo. Solo tras aprobar la narrativa, generar la locución final comercial.
2. **Montaje:** Intentar el montaje con **FilmCraft** por su integración con agentes (CLI/MCP). Si en este Mac Intel surgen fallos de render o inestabilidad, recurrir a un editor consolidado de escritorio (DaVinci Resolve o CapCut) como plan de contingencia documentado.
3. **Imágenes / B-Roll:** Descargar stock verificado desde las webs oficiales de Coverr/Pexels archivando la licencia en `licencias/`. Generar visuales con Midjourney/Flux bajo suscripción comercial.
4. **Publicación:** Subir manualmente a YouTube Studio y activar la prueba nativa "Prueba y Compara".

---

## 3. Lecciones Operativas de FilmCraft y EffectCraft en macOS Intel (Comprobadas en el Piloto)

A partir de la ejecución técnica real del video piloto de 09:36 minutos en este entorno, se establecen estas reglas de ingeniería:

1. **Orden Obligatorio de Inicialización:**
   `file.newProject` ➔ `file.newSequence` (con resolución y fps explícitos). Si no se crea la secuencia inmediatamente, los comandos posteriores (`inspect` o `timeline.place`) fallan con error `no active sequence`.
2. **Escala Temporal en Ticks Enteros:**
   FilmCraft calcula el tiempo de timeline en enteros exactos: **`254.016.000.000` ticks por segundo**. Cualquier inserción de clips o keyframes debe multiplicar los segundos por esta constante.
3. **Persistencia Obligatoria en Disco (`--save`):**
   Al ejecutar comandos headless vía `filmcraft-cli exec`, es obligatorio incluir el flag `--save`. De lo contrario, los cambios ocurren en la memoria RAM del proceso y no se escriben en el archivo `.fcproj`.
4. **Rendimiento de Render en macOS Intel:**
   En este Mac Intel x86_64, la exportación H.264 a 1080p @ 24fps procesa a **~12.6 fps** (aproximadamente la mitad de la velocidad de tiempo real; un video de 9.5 minutos tarda ~18 minutos de render). No es un cuelgue ni fallo de memoria; prever esa ventana de procesamiento.
5. **Generación de Placas y Títulos:**
   Para renderizar títulos, viñetas o gráficos sin dependencias externas (PIL o ImageMagick), el agente debe utilizar **`effectcraft-cli render-frame`** o compilar scripts nativos con Swift (`swiftc` con CoreGraphics/AppKit).
