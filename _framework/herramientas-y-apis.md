# Herramientas, APIs y Conexiones Técnicas

Catálogo técnico de plataformas, software y APIs de la oficina de YouTube.

> **Reglas operativas del catálogo:**
> 1. Una URL identificada o un servidor MCP documentado **no equivale a una capacidad validada**. Cada herramienta se clasifica por lo que realmente se ha podido ejecutar y comprobar en este entorno (macOS Intel x86_64).
> 2. **Proactividad con Visto Bueno:** El agente debe sugerir activamente herramientas gratuitas o FOSS si detecta cuellos de botella en el flujo, pero **solo el creador autoriza su incorporación a esta matriz**.
> 3. **Prioridad de Montaje:** **FilmCraft** se mantiene como la herramienta objetivo principal para edición automatizada por su compatibilidad nativa con CLI y MCP para agentes. Su viabilidad definitiva para renders locales se resolverá en la prueba del **Video Piloto**.

---

## 🚦 Niveles de Validación en el Entorno Local

- 🟢 **PROBADA EN ENTORNO:** Función ejecutada con éxito en este entorno (web o local). Lista para producción.
- 🟡 **DISPONIBLE / DOCUMENTADA:** Integración o API accesible con credenciales, pendiente de validación de extremo a extremo.
- 🔴 **EXPERIMENTAL / CANDIDATA A PILOTO:** Herramienta en fase temprana cuyo rendimiento se evaluará en el video piloto.
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
| **Google AI Studio** | `01 / 03` | Prototipado rápido de prompts largos y multimodal | 🟢 PROBADA EN ENTORNO | Análisis de referencias visuales y refinamiento de guion. | Interfaz web de Google para experimentación con modelos Gemini. |
| **Google Scholar & Labs** | `02` | Búsqueda de papers primarios (Fact-checking) | 🟢 PROBADA EN ENTORNO | Localización de DOIs, abstracts y autores. | Ciertos papers completos exigen suscripción institucional. |
| **Google Docs Video Scene Editor** | `03 / 04` | Estructuración colaborativa de escenas y guion | 🟢 PROBADA EN ENTORNO | Organización visual de escenas por bloques. | Editor colaborativo en la nube de Google. |
| **ElevenLabs (Tier Free)** | `04` | Locución provisional (*Scratch Track*) para animatic | 🟢 PROBADA EN ENTORNO | Generación rápida de voz para validar ritmo sin costo. | Cuota mensual limitada de caracteres; apto para pruebas internas. |
| **Luvvoice (Web, MCP & Skill)** | `04` | Locución provisional (TTS gratuito) con soporte MCP y Skill | 🟢 DISPONIBLE / MCP | Web: [luvvoice.com/es](https://luvvoice.com/es) (Docs: [/es/doc](https://luvvoice.com/es/doc), MCP: [/es/mcp](https://luvvoice.com/es/mcp), Skill: [/es/skill](https://luvvoice.com/es/skill)). | **Solo Free Tier.** Ideal para locución provisional (*Scratch Track*) y animatic sin costo. Dispone de servidor MCP oficial y Skill para integración con agentes. |
| **ElevenLabs (Tier Creator)** | `05` | Locución comercial definitiva | 🟡 DISPONIBLE / DOC. | Derechos comerciales de salida bajo suscripción de pago. | Requiere suscripción activa para monetización en YouTube. |
| **FilmCraft** | `04 / 05` | **Montaje y timeline asistido por agentes (CLI / MCP)** | 🔴 CANDIDATA A PILOTO | Lectura de repositorio y protocolo de control para agentes. | **Herramienta prioritaria para automatización.** En fase alfa (~56%); su viabilidad para renders se decidirá en el piloto. |
| **EffectCraft** | `05` | Motion graphics y efectos visuales vía agentes | 🔴 EXPERIMENTAL | Protocolo de control documentado. | Fase alfa temprana. Se evaluará tras consolidar FilmCraft. |
| **SoundCraft** | `05` | Mezcla y edición de pistas de audio | 🔴 EXPERIMENTAL | Arquitectura tipo Pro Tools documentada. | Fase pre-alfa. No apto para master final inmediato. |
| **Coverr (Web)** | `05` | Descarga de clips de stock libres de derechos | 🟢 PROBADA EN ENTORNO | Descarga directa de archivos mp4 para edición. | La web otorga licencia libre; guardar captura de términos en `licencias/`. |
| **Coverr (MCP / API)** | `05` | Búsqueda asistida de clips para agentes | 🟡 DISPONIBLE / DOC. | Identificación del servidor MCP (`mcp.coverr.co`). | Plan Demo limitado a 50 req/h; términos de API restringen uso comercial gratuito. |
| **Pexels & Pixabay APIs** | `05` | Catálogo de fotos y videos de stock | 🟡 DISPONIBLE / DOC. | Documentación y obtención de credenciales de API. | Exige verificar derechos de imagen de personas y marcas registradas. |
| **Wikimedia Commons API** | `05` | Archivo histórico y documental de licencia abierta | 🟡 DISPONIBLE / DOC. | Endpoints de MediaWiki Search. | Exige transcribir obligatoriamente la licencia exacta y atribución en cada asset. |
| **Openverse API** | `05` | Buscador federado de contenido con licencias libres | 🟡 DISPONIBLE / DOC. | Endpoints de búsqueda federada. | Filtrar por licencias que permitan uso comercial. |
| **Google Imágenes (Web Handoff)** | `04 / 05` | Búsqueda curada de imágenes en alta resolución mediante URL parametrizada | 🟢 PROBADA (HANDOFF) | Plantilla abierta: `https://www.google.com/search?udm=2&tbs=isz:l&q={QUERY}` (y variante libre: `tbs=isz:l,il:cl`). | El agente construye la URL codificada; el creador abre el link, selecciona el asset y pasa la fuente para registro en `04`. |
| **Google Flow** | `04 / 05` | AI Creative Studio de Google para video cinemático, imágenes de alta fidelidad y prototipado visual | 🟢 DISPONIBLE / DOC. | Web: [flow.google.com](https://flow.google.com/). Modelos generativos avanzados de Google Labs / AI Test Kitchen. | Ideal para generar B-roll cinemático y tomas sintéticas cuando no existen en stock libre. |
| **Google Flow Music** | `01 / 04 / 05` | Creación de canciones de estudio completas, jingles de branding, remixing de instrumentos y diseño sonoro | 🟢 DISPONIBLE / DOC. | Web: [flowmusic.app](https://www.flowmusic.app/). Generación musical con letra, voces cantadas y vibe-coding. | Permite crear la firma sonora oficial del canal (intro/outro) y pistas con cambios dinámicos de energía según el guion. |
| **YouTube Audio Library** | `05` | Música y efectos sonoros libres de Content ID | 🟢 PROBADA EN ENTORNO | Descarga de pistas seguras directamente desde Studio. | 100% segura contra reclamos en YouTube. Cuidar atribución si aplica. |
| **AudioCraft (Meta)** | `05` | Generación musical por IA de Meta | ⛔ RESTRICCIÓN LEGAL | Identificación de modelos MusicGen/AudioGen. | **Pesos oficiales bajo licencia CC-BY-NC (No Comercial). Incompatible con monetización.** |
| **YouTube Data API v3** | `07` | Subida y publicación desatendida | 🔵 VISIÓN FUTURA | Lectura de especificaciones de Google Cloud. | Subidas de apps no auditadas quedan privadas. No automatizar en fase piloto. |

---

## 2. Recomendación Operativa para el Video Piloto

1. **Locución:** Armar la locución provisional con el tier gratuito de ElevenLabs, el tier gratuito de **Luvvoice** (vía web o MCP oficial: `luvvoice.com/es/mcp`) o TTS de sistema para el animatic. Solo tras aprobar la narrativa, generar la locución final comercial.
2. **Montaje:** Intentar el montaje con **FilmCraft** por su integración con agentes (CLI/MCP). Si en este Mac Intel surgen fallos de render o inestabilidad, recurrir a un editor consolidado de escritorio (DaVinci Resolve o CapCut) como plan de contingencia documentado.
3. **Imágenes / B-Roll:** Descargar stock verificado desde las webs oficiales de Coverr/Pexels archivando la licencia en `licencias/`. Generar visuales con Midjourney/Flux bajo suscripción comercial.
4. **Publicación:** Subir manualmente a YouTube Studio y activar la prueba nativa "Prueba y Compara".
