# Ciclo de Producción y Automatización

## Ciclo / Proceso Macro
1. **Área / Nicho:** Escoger un nicho vs. crear algo que sea muy práctico/útil en general (cualquiera puede funcionar si se hace bien). Estudiar antes canales que funcionan bien en la idea/nicho que se seleccione.
2. **Branding:** Entre otras cosas, Logo del canal y Banner del canal, y quizás algún detalle o estilo característico de las miniaturas de los videos.
3. **Crear Video (y shorts a partir del video):** Script/guion, video, audio/voces.
4. **Edición:** Ensamblaje visual, ritmo, efectos y diseño sonoro.
5. **Miniatura:** 
   - Que sea amigable para ser vista en Smart TV (que los elementos importantes o partes de dichos elementos se vean en o desde la parte superior).
   - Que genere más información o interés que el título.
   - Que genere preguntas y/o emociones.
6. **Publicación:** Configuración de metadatos, tags y pantallas finales.

---

## Flujo Automatizado Objetivo (Visión Futura y Realidad Operativa)

> **Nota de ingeniería:** El siguiente flujo define la arquitectura objetivo hacia la que evoluciona la oficina. Si bien la API de YouTube (`videos.insert`) permite subidas programáticas, no ofrece endpoints para la herramienta nativa "Prueba y Compara" de títulos y miniaturas. Por prudencia operativa y control de calidad, durante la fase piloto los pasos 3 y 4 se ejecutan con **asistencia del agente pero con carga y configuración manual por el creador en YouTube Studio**.

1. **Generación de ideas:** Asistida por agentes mediante análisis de outliers y Google Trends.
2. **Producción de títulos y miniaturas (Packaging First):** El agente produce variantes de títulos y prompts/bocetos de 3 miniaturas.
3. **Publicación del video:** El creador sube el archivo a YouTube Studio, configura la descripción, tags y pantallas finales.
4. **Prueba A/B nativa:** El creador carga las 3 variantes en la herramienta "Prueba y Compara" de YouTube Studio.
5. **Recopilación y análisis:** El agente asiste en la lectura de métricas tras el cierre del experimento (por *Watch Time Share*).
6. **Aprendizaje y retroalimentación:** Los resultados alimentan la incubadora de ideas para el siguiente ciclo.
