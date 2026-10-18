# Herramientas, APIs y Conexiones Técnicas

Catálogo técnico de plataformas, APIs y software para la oficina de YouTube.

> **Regla de ingeniería:** Una URL identificada o un servidor MCP documentado **no equivale a una capacidad validada**. Cada herramienta debe clasificarse por lo que realmente se ha podido ejecutar y comprobar en el entorno real de trabajo (macOS x86_64).

---

## 🚦 Niveles de Validación en el Entorno Local

- 🟢 **PROBADA EN ENTORNO:** Función ejecutada con éxito en este entorno (web o local). Lista para producción.
- 🟡 **DISPONIBLE / DOCUMENTADA:** Integración o API accesible, pero no probada exhaustivamente de extremo a extremo.
- 🔴 **EXPERIMENTAL / NO VERIFICADA:** Herramienta en fase temprana o que aún no ha completado una ejecución real con éxito localmente.
- ⛔ **RESTRICCIÓN LEGAL:** Licencias incompatibles con monetización en YouTube (ej. pesos CC-BY-NC).
- 🔵 **VISIÓN FUTURA:** No disponible por limitaciones oficiales de la API del proveedor.

---

## 1. Matriz de Capacidades Realmente Comprobadas (Entorno: macOS Intel x86_64)

| Herramienta / Servicio | Función Documentada | Estado en este Entorno | Acciones Específicamente Probadas | Limitaciones Detectadas | Última Comprobación |
| :--- | :--- | :---: | :--- | :--- | :---: |
| **YouTube Studio Web** | Analítica, retención y Test & Compare | 🟢 PROBADA EN ENTORNO | Acceso web, lectura de métricas de audiencia e investigación. | Las pruebas A/B son 100% manuales; no existe API pública. | 18/10/2026 |
| **Google Trends & Ngrams** | Volumen relativo e interés histórico | 🟢 PROBADA EN ENTORNO | Búsqueda de consultas y comparación de tendencias. | Muestra interés relativo, no volumen absoluto de búsquedas. | 18/10/2026 |
| **Google Scholar & Labs** | Búsqueda de papers académicos | 🟢 PROBADA EN ENTORNO | Búsqueda de DOIs, autores y lectura de abstracts. | Requiere suscripción institucional para acceder a ciertos papers completos. | 18/10/2026 |
| **VidIQ (Web)** | Outliers, palabras clave y competencia | 🟢 PROBADA EN ENTORNO | Identificación de videos con ratio 5x de visualizaciones. | Versión gratuita tiene límites en el historial de competidores. | 18/10/2026 |
| **Coverr (Web)** | Descarga de clips de stock libres | 🟢 PROBADA EN ENTORNO | Descarga directa de archivos de video para edición. | La web otorga licencia libre; la API impone condiciones no comerciales en plan demo. | 18/10/2026 |
| **Coverr (MCP / API)** | Búsqueda y descarga asistida por agente | 🟡 DISPONIBLE / DOC. | Identificación del servidor MCP (`mcp.coverr.co`). | Plan Demo limitado a 50 req/h; términos de API restringen uso comercial gratuito. | 18/10/2026 |
| **Pexels & Pixabay APIs** | Búsqueda de fotos y videos por API | 🟡 DISPONIBLE / DOC. | Documentación de API y generación de credenciales. | Requiere curaduría humana para descartar personas o marcas registradas. | 18/10/2026 |
| **Wikimedia Commons API** | Material histórico y documental | 🟡 DISPONIBLE / DOC. | Endpoints de búsqueda en MediaWiki. | Exige transcribir obligatoriamente la licencia exacta y atribución en cada asset. | 18/10/2026 |
| **FilmCraft** | Montaje en línea de tiempo para agentes | 🔴 EXPERIMENTAL | Lectura de repositorio y protocolo de control. | **En fase alfa (~56% de preparación). No ha ejecutado renders de producción exitosos en este Mac Intel.** | 18/10/2026 |
| **EffectCraft** | Motion graphics asistido por agentes | 🔴 EXPERIMENTAL | Lectura de documentación y protocolo. | Fase alfa temprana. No integrado en pipeline de producción real. | 18/10/2026 |
| **SoundCraft** | Mezcla de audio tipo Pro Tools | 🔴 EXPERIMENTAL | Lectura de repositorio. | Fase pre-alfa. No apto para mezcla master final. | 18/10/2026 |
| **AudioCraft (Meta)** | Generación musical por IA | ⛔ RESTRICCIÓN LEGAL | Identificación de modelos MusicGen/AudioGen. | **Pesos oficiales bajo licencia CC-BY-NC (No Comercial). Incompatible con monetización.** | 18/10/2026 |
| **YouTube Data API v3** | Subida y publicación desatendida | 🔵 VISIÓN FUTURA | Lectura de especificaciones de Google Cloud. | Subidas de apps no auditadas quedan privadas. No automatizar en fase piloto. | 18/10/2026 |

---

## 2. Recomendación Operativa para el Video Piloto

Para producir el **Video 01**:
1. **Locución:** Generar borrador de locución provisional (scratch track) con TTS gratuito; grabar o procesar locución final en ElevenLabs (plan comercial) una vez validado el animatic.
2. **Edición:** Utilizar editores consolidados de escritorio (**DaVinci Resolve, Premiere Pro o CapCut**) para el montaje manual asistido, en lugar de depender de versiones alfa de FilmCraft.
3. **Imágenes / B-Roll:** Descargar stock verificado desde las webs oficiales de Coverr/Pexels archivando la licencia en `licencias/`. Generar visuales con Midjourney/Flux bajo suscripción comercial.
4. **Publicación:** Subir manualmente a YouTube Studio y activar la prueba nativa "Prueba y Compara".
