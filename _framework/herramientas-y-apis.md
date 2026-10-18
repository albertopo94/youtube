# Herramientas, APIs y Conexiones Técnicas

Catálogo técnico de plataformas, APIs y software para la oficina de YouTube, clasificado rigurosamente por su **estado de madurez y viabilidad operativa real**.

---

## 🚦 Leyenda de Madurez y Estado Operativo
- 🟢 **Operativo Verificado:** Funcional hoy en día sin bloqueos de desarrollo (vía web o API madura).
- 🟡 **Alfa / Experimental:** En desarrollo activo; no utilizar como única dependencia para el video inicial.
- 🔴 **Restricción Legal / No Comercial:** Herramientas con pesos o licencias restringidas para monetización.
- 🔵 **Visión Futura / No Implementado:** Automatizaciones que requieren auditorías de cuotas o no disponen de API pública oficial.

---

## 1. Analítica, Competencia e Investigación de Audiencia

| Plataforma / Herramienta | Enlace / Endpoint | Estado Operativo | Notas y Condiciones de Uso |
| :--- | :--- | :---: | :--- |
| **YouTube Studio Web** | [studio.youtube.com](https://studio.youtube.com/) | 🟢 Operativo | Interfaz nativa para analítica, retención, fuentes y "Prueba y Compara" de miniaturas. |
| **Google Trends** | [trends.google.es](https://trends.google.es/trends/) | 🟢 Operativo | Detección de volumen de búsqueda relativo e interés estacional en tiempo real. |
| **Google Books Ngrams** | [books.google.com/ngrams](https://books.google.com/ngrams/) | 🟢 Operativo | Análisis de frecuencia histórica de términos y evolución cultural. |
| **Google Scholar & Labs** | [scholar.google.com](https://scholar.google.com/) | 🟢 Operativo | Búsqueda de papers académicos primarios para el protocolo de fact-checking. |
| **VidIQ (Web & Extension)** | [vidiq.com](https://vidiq.com/es/) | 🟢 Operativo | Auditoría de competidores, detección de outliers y análisis de palabras clave. |
| **Thumblytics** | [thumblytics.com](https://thumblytics.com/) | 🟢 Operativo | Simulación previa de miniaturas en feed antes de publicar. |
| **AdForum** | [adforum.com](https://www.adforum.com/) | 🟢 Operativo | Referencias de creatividad publicitaria y ganchos audiovisuales. |
| **Google AI Studio** | [aistudio.google.com](https://aistudio.google.com/) | 🟢 Operativo | Prototipado rápido de prompts largos y análisis multimodal. |

---

## 2. Repositorios de Recursos de Stock, APIs y MCPs

| Plataforma | Integración | Estado | Consideraciones Legales y de Acceso |
| :--- | :--- | :---: | :--- |
| **Coverr (Web)** | Descarga directa vía [coverr.co](https://coverr.co/) | 🟢 Operativo | Videos de stock libres bajo términos web. Guardar evidencia en cada descarga. |
| **Coverr (MCP / API)** | MCP Server ([api.coverr.co/docs/mcp/](https://api.coverr.co/docs/mcp/)) | 🟡 Precaución | Requiere API Key (Demo: 50 req/h). **Atención:** la documentación de la API condiciona el acceso gratuito a uso no comercial. Antes de monetizar con clips obtenidos vía API, verificar términos por escrito; por defecto, descargar desde la web oficial. |
| **Pexels API** | [pexels.com/api/](https://www.pexels.com/api/) | 🟢 Operativo | Fotos y videos gratuitos con API Key. Permite uso comercial; prohibido redistribuir o vender assets no modificados. |
| **Pixabay API** | [pixabay.com/api/docs/](https://pixabay.com/api/docs/) | 🟢 Operativo | Amplio catálogo de ilustración, vector y video. Verificar restricciones de marcas registradas. |
| **Wikimedia Commons** | [mediawiki.org/wiki/API:Search](https://www.mediawiki.org/wiki/API:Search) | 🟢 Operativo | Ideal para material documental e histórico. **Exige registrar la licencia exacta (ej. CC-BY) y transferir la atribución obligatoria**. |
| **Openverse API** | [api.openverse.org](https://api.openverse.org/v1/) | 🟢 Operativo | Buscador federado de contenido con licencias abiertas verificables. |

---

## 3. Suite ArtCraft (Estado Real de los Repositorios para Agentes)

> ⚠️ **Advertencia de Arquitectura:** ArtCraft es una iniciativa prometedora para control de agentes, pero actualmente se encuentra en fase temprana de desarrollo. **No depender de esta suite como pipeline único para el primer video**. Utilizar editores tradicionales (Premiere, DaVinci Resolve, CapCut) como base segura mientras la suite madura.

| Herramienta | Repositorio / Documentación | Estado Real | Madurez y Evaluación Técnica |
| :--- | :--- | :---: | :--- |
| **FilmCraft** | [github.com/storytold/filmcraft](https://github.com/storytold/filmcraft) | 🟡 Alfa (~56%) | Montaje en línea de tiempo. El propio equipo estima que está aproximadamente al 56% de preparación para trabajo de producción real frente a Premiere. |
| **EffectCraft** | [github.com/storytold/effectcraft](https://github.com/storytold/effectcraft) | 🟡 Alfa | Motion graphics y efectos visuales vía protocolo de control para agentes. |
| **SoundCraft** | [github.com/storytold/soundcraft](https://github.com/storytold/soundcraft) | 🟡 Pre-Alfa | Mezcla y edición de audio basada en arquitectura similar a Pro Tools (no Audition). Aún en fases iniciales. |
| **AudioCraft (Meta)** | Modelo externo | 🔴 No Comercial (CC-BY-NC) | Si se refiere a la suite abierta de Meta (MusicGen / AudioGen), sus pesos oficiales se publican bajo licencia **CC-BY-NC (No Comercial)**. Prohibido su uso para canales que moneticen en YouTube. |

---

## 4. Música y Locución

| Servicio | Tipo | Estado | Términos de Licencia |
| :--- | :--- | :---: | :--- |
| **YouTube Audio Library** | Música y SFX integrados en Studio | 🟢 Operativo | 100% seguro contra reclamos de Content ID. Cuidar si requiere atribución. |
| **ElevenLabs / PlayHT** | TTS y Voces sintéticas | 🟢 Operativo | Requiere plan de pago comercial (Creator o superior) para explotar en YouTube. |
| **FlowMusic / Flow Google** | Herramientas experimentales de música | 🟡 Experimental | Verificar los términos comerciales del generador antes de incluir en videos públicos. |

---

## 5. Automatización del Pipeline (Realidad de la API de YouTube)

- 🔵 **Subida automática y publicación por API:** Las aplicaciones que utilizan la YouTube Data API v3 creadas después de julio de 2020 tienen sus subidas marcadas como `privadas` de forma predeterminada hasta que el proyecto pase una auditoría formal de seguridad y cumplimiento de Google.
- 🔵 **Lanzamiento de pruebas A/B "Prueba y Compara" por API:** Actualmente YouTube no dispone de endpoints públicos para inicializar ni gestionar pruebas nativas de Test & Compare. 
- **Decisión operativa:** La publicación definitiva y la carga de variantes de miniaturas para A/B testing se realizan **manualmente por el creador en YouTube Studio**.
