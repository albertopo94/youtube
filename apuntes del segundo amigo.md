### **1\. Integración en** **\_framework/roles/01-investigacion-ideas.md** **y** **01-packaging.md**

#### **Matriz de Objetivos y Dinámicas por Superficie Algorítmica**

YouTube no opera con un único algoritmo monolítico, sino con múltiples superficies independientes ajustadas a objetivos de usuario y señales de comportamiento completamente distintas.

* **Página de Inicio (** **Homepage / Browse Feed** **):**
  * **Mecánica y Señales del Sistema:** Evalúa el historial de reproducción de largo plazo (*watch history*) del usuario, su afinidad temática global y el rendimiento de retención general del vídeo. Utiliza filtrado colaborativo (*Collaborative Filtering*) para emparejar espectadores con hábitos de consumo similares.
  * **Objetivo de la Plataforma:** Personalización de amplio espectro y descubrimiento de contenido afín antes de que el usuario busque algo específico.
  * **Directiva Operativa para el Agente:** Configurar las propuestas de empaquetado (*packaging*) con una identidad visual e iconográfica consistente. Si el canal construye un lenguaje visual reconocible, los espectadores frecuentes identificarán de inmediato la miniatura en un feed saturado, aumentando el CTR orgánico repetido.
  * **Fuentes de Referencia Exactas:**
    * **Documento Markdown:** *Arquitectura Algorítmica, Métricas de Satisfacción y Dinámicas de Audiencia...* (Sección: *Arquitectura Multietapa del Sistema de Recomendación / Tabla de Superficies*).
    * **Documentación Oficial de Google Help:** *How YouTube recommendations work* ([https://support.google.com/youtube/answer/16089387](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fsupport.google.com%2Fyoutube%2Fanswer%2F16089387)).
    * **Manual de Industria Gyre:** *YouTube recommendation system 2026: how to grow with it* ([https://gyre.pro/blog/youtube-recommendation-system-how-to-hack-it-for-explosive-growth](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fgyre.pro%2Fblog%2Fyoutube-recommendation-system-how-to-hack-it-for-explosive-growth)).
* **Panel "A continuación" / Recomendados (** **Up Next / Suggested Videos** **):**
  * **Mecánica y Señales del Sistema:** El detonante primario es el **vídeo actual** que el usuario está reproduciendo en ese preciso instante. El sistema mide la coherencia semántica y el comportamiento de sesión a corto plazo.
  * **Objetivo de la Plataforma:** Garantizar la continuidad de la sesión de visualización en curso.
  * **Directiva Operativa para el Agente:** Cada idea y guion debe plantearse conceptualmente como la "continuación lógica" (*logical next watch*) de los vídeos más populares del nicho o del propio catálogo del canal. Se deben programar enlaces explícitos en el guion, tarjetas intermedias y pantallas finales hacia el siguiente vídeo para acumular créditos de *Session Continuation*.
  * **Fuentes de Referencia Exactas:**
    * **Paper Académico Fundamental:** Zhe Zhao et al. (Google/YouTube), *Recommending What Video to Watch Next: A Multitask Ranking System* ([https://openreview.net/pdf?id=gxlKBGBBwN](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fopenreview.net%2Fpdf%3Fid%3DgxlKBGBBwN) / Conferencia ACM RecSys [https://www.semanticscholar.org/paper/Recommending-what-video-to-watch-next%3A-a-multitask-Zhao-Hong/e85f83d76b443795a9aee58e51c6cd76834c59f9](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fwww.semanticscholar.org%2Fpaper%2FRecommending-what-video-to-watch-next%253A-a-multitask-Zhao-Hong%2Fe85f83d76b443795a9aee58e51c6cd76834c59f9)).
    * **Blog Oficial de YouTube:** Cristos Goodrow (VP de Ingeniería), *On YouTube's recommendation system* ([https://blog.youtube/inside-youtube/on-youtubes-recommendation-system/](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fblog.youtube%2Finside-youtube%2Fon-youtubes-recommendation-system%2F)).
    * **Documento Markdown:** *Arquitectura Algorítmica...* (Sección: *Panel A Continuación*).
* **Resultados de Búsqueda (** **Search** **):**
  * **Mecánica y Señales del Sistema:** Combina la relevancia contextual del título, descripción enriquecida y subtítulos automáticos (procesados mediante NLP/Procesamiento de Lenguaje Natural) con el CTR y la retención generada específicamente tras realizar esa consulta.
  * **Objetivo de la Plataforma:** Resolver de forma directa e inmediata una duda o consulta explícita formulada por el usuario.
  * **Directiva Operativa para el Agente:** Tratar la búsqueda como un embudo de conversión (*funnel* de adquisición) para transformar tráfico frío en espectadores recurrentes. Exigir títulos de menos de 60 caracteres redactados con las palabras exactas que teclearía un usuario y descripciones narrativas estructuradas de más de 200 palabras.
  * **Fuentes de Referencia Exactas:**
    * **Libro de Creador:** Derral Eves, *The YouTube Formula* (Análisis por Brandon Boswell: [https://brandonkboswell.com/sources/The-YouTube-Formula](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fbrandonkboswell.com%2Fsources%2FThe-YouTube-Formula)).
    * **Documento Markdown:** *Arquitectura Algorítmica...* (Sección: *Resultados de Búsqueda* y *Filtrado Basado en Contenido*).
* **Feed de Shorts:**
  * **Mecánica y Señales del Sistema:** Mide la tasa de finalización del clip (*completion rate*), la tasa de bucle (*seamless loop*) y la frecuencia de deslizamiento sin ver (*swipe-away rate* vs *viewed*).
  * **Directiva Operativa para el Agente:** Eliminar cualquier tipo de introducción, saludo o cierre tradicional. El gancho visual y conceptual debe ocurrir en el segundo cero.
  * **Fuentes de Referencia Exactas:**
    * **Manual de Industria Gyre:** *YouTube recommendation system 2026: how to grow with it* ([https://gyre.pro/blog/youtube-recommendation-system-how-to-hack-it-for-explosive-growth](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fgyre.pro%2Fblog%2Fyoutube-recommendation-system-how-to-hack-it-for-explosive-growth)).

---

### **2\. Integración en** **\_framework/roles/02-packaging-miniaturas.md**

#### **A. Optimización para Visión por Computadora (OCR + Detección Facial)**

* **Mecánica Algorítmica de la Plataforma:** YouTube analiza las imágenes de las miniaturas antes y durante su publicación utilizando algoritmos de visión por computadora (*Computer Vision*). El sistema ejecuta **OCR (Reconocimiento Óptico de Caracteres)** para leer cualquier texto incrustado y aplica **modelos de detección facial y emocional** para evaluar los rostros presentados. Esta información visual se transforma en vectores de datos que agrupan el vídeo en clústeres temáticos específicos (por ejemplo, relacionándolo con otros vídeos que incluyen al mismo personaje, objeto o emoción).
* **Directiva Operativa para el Agente:**
  1. Cada concepto visual propuesto para una miniatura debe cumplir la regla de composición comprobada: **1 rostro humano con una expresión emocional clara y legible + 1 objeto/elemento focal de alto impacto**.
  2. El texto incrustado no debe superar las 3 o 4 palabras, usando fuentes gruesas con alto contraste cromático para facilitar la lectura inmediata en pantallas móviles (que representan más del 70% del tráfico).
* **Fuentes de Referencia Exactas:**
  * **Libro de Creador y Resumen:** Derral Eves, *The YouTube Formula* (Resumen en Shortform: [https://www.shortform.com/pdf/the-youtube-formula-pdf-derral-eves](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fwww.shortform.com%2Fpdf%2Fthe-youtube-formula-pdf-derral-eves) y notas de Brandon Boswell: [https://brandonkboswell.com/sources/The-YouTube-Formula](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fbrandonkboswell.com%2Fsources%2FThe-YouTube-Formula)).
  * **Documento Markdown:** *Arquitectura Algorítmica...* (Sección: *Análisis Visual de Miniaturas*).
  * **Guía Especializada:** Music Tomorrow, *YouTube's Recommendation Algorithm for Artists: Complete Guide* ([https://music-tomorrow.com/blog/a-complete-guide-to-youtube-recommendation-algorithms-for-music-and-artists](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fmusic-tomorrow.com%2Fblog%2Fa-complete-guide-to-youtube-recommendation-algorithms-for-music-and-artists)).

#### **B. Protocolo de Pruebas A/B Nativas (** **Test &amp; Compare** **) y Métrica** **Watch Time Share**

* **Mecánica Algorítmica de la Plataforma:** La herramienta nativa de pruebas A/B dentro de YouTube Studio permite subir hasta 3 variantes de miniatura por vídeo. A diferencia de las herramientas externas que determinan la ganadora basándose únicamente en la Tasa de Clics (CTR) inicial, el sistema nativo de YouTube evalúa el éxito según la **Cuota de Tiempo de Visualización (** **Watch Time Share** **)** que aporta cada opción.
* **Directiva Operativa para el Agente:**
  1. Si una miniatura genera muchos clics pero los usuarios abandonan el vídeo rápidamente, el sistema la descartará por perjudicar la retención.
  2. El agente debe redactar las 3 variantes de empaquetado en `01-packaging.md` bajo dos enfoques complementarios: una variante orientada al beneficio explícito y otra al hueco de curiosidad (*curiosity gap*), asegurando que ambas sean 100% coherentes con el contenido real del vídeo.
* **Fuentes de Referencia Exactas:**
  * **Informe de Industria:** John Circle Associates, *YouTube Launches First Stage of Thumbnail A/B Testing in YouTube Studio* ([https://johncircleassociate.com/youtube-launches-first-stage-of-thumbnail-a-b-testing-in-youtube-studio/](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fjohncircleassociate.com%2Fyoutube-launches-first-stage-of-thumbnail-a-b-testing-in-youtube-studio%2F)).
  * **Documento Markdown:** *Arquitectura Algorítmica...* (Sección: *Experimentación Mediante Pruebas A/B*).

---

### **3\. Integración en** **\_framework/roles/03-guion-y-narrativa.md**

#### **A. Regla de los Primeros 7–10 Segundos y Estructura del Gancho (** **Hook** **)**

* **Mecánica Algorítmica de la Plataforma:** El algoritmo analiza minuciosamente la retención durante los primeros 30 segundos de reproducción. Caídas abruptas en esta fase indican al sistema que la promesa visual/textual de la miniatura no se cumplió, lo que congela de inmediato la recomendación del vídeo hacia nuevas audiencias.
* **Directiva Operativa para el Agente:**
  1. En el primer bloque del guion (`[B01]`), **prohibir estrictamente** cortinillas animadas, intros corporativas, saludos vacíos ("hola a todos, bienvenidos a mi canal...") o patrocinios tempranos.
  2. Los primeros 5 a 10 segundos deben validar de inmediato la propuesta del título/miniatura, exponer el conflicto principal e introducir un gancho de curiosidad que sostenga la atención hasta el minuto 1.
* **Fuentes de Referencia Exactas:**
  * **Documento Markdown:** *Arquitectura Algorítmica...* (Sección: *Análisis de la Curva de Retención de Audiencia*).
  * **Libro de Creador:** Derral Eves, *The YouTube Formula* ([https://brandonkboswell.com/sources/The-YouTube-Formula](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fbrandonkboswell.com%2Fsources%2FThe-YouTube-Formula)).
  * **Manual Gyre:** *YouTube recommendation system 2026* ([https://gyre.pro/blog/youtube-recommendation-system-how-to-hack-it-for-explosive-growth](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fgyre.pro%2Fblog%2Fyoutube-recommendation-system-how-to-hack-it-for-explosive-growth)).

#### **B. Detector/Linter de** **Quality CTR** **(Prevención de Clickbait Engañoso)**

* **Mecánica Algorítmica de la Plataforma:** El sistema MMoE supervisa la **Tasa de Clics de Calidad (** **Quality CTR** **/ QCR)**. Si un par título-miniatura logra un CTR muy elevado (por ejemplo, 12%), pero los espectadores abandonan el metraje en los primeros 15 a 30 segundos, el algoritmo clasifica la publicación como **engañosa (** **deceptive clickbait** **)**. Esto frena la distribución en la Página de Inicio y reduce el alcance futuro de todo el canal.
* **Directiva Operativa para el Agente:** Implementar un control de calidad obligatorio en la fase de guionado: todo concepto o promesa destacada en la miniatura o título debe ser explicada, mostrada o satisfecha explícitamente en la primera mitad del guion.
* **Fuentes de Referencia Exactas:**
  * **Documento Markdown:** *Arquitectura Algorítmica...* (Sección: *La Tasa de Clics de Calidad (Quality CTR) vs. Clickbait Deceptivo*).
  * **Blog Oficial de YouTube:** Cristos Goodrow, *On YouTube's recommendation system* ([https://blog.youtube/inside-youtube/on-youtubes-recommendation-system/](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fblog.youtube%2Finside-youtube%2Fon-youtubes-recommendation-system%2F)).

#### **C. Interrupciones de Patrón (** **Pattern Interrupts** **) para la Curva de Retención**

* **Mecánica Algorítmica de la Plataforma:** Para mantener una retención superior al 50% en vídeos de más de 8-10 minutos, la curva de audiencia exige estímulos visuales y auditivos recurrentes que eviten la fatiga de atención.
* **Directiva Operativa para el Agente:** Obligar a que la plantilla de guion y la tabla de storyboard incluyan una **interrupción de patrón cada 20 a 30 segundos**. Esto incluye cambios de plano (A-roll a B-roll), efectos de sonido (SFX), zooms de reencuadre, textos explicativos en pantalla o variaciones en la música de fondo.
* **Fuentes de Referencia Exactas:**
  * **Libro de Creador:** Derral Eves, *The YouTube Formula* ([https://brandonkboswell.com/sources/The-YouTube-Formula](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fbrandonkboswell.com%2Fsources%2FThe-YouTube-Formula)).
  * **Documento Markdown:** *Arquitectura Algorítmica...* (Sección: *Tabla de Estrategia de Retención Recomendada*).

---

### **4\. Integración en** **05-metricas-retencion.md** **y** **\_framework/reglas-sistema.md**

#### **A. Modelo de Expansión Algorítmica por Cohortes de Audiencia**

* **Mecánica Algorítmica de la Plataforma:** Un vídeo recién subido no se muestra a toda la audiencia de golpe. El algoritmo lo testea primero en una **cohorte primaria** (suscriptores más activos y espectadores recurrentes). Si las métricas de retención y *Quality CTR* son positivas, se escala a una **cohorte secundaria** (usuarios con hábitos similares que no conocen el canal). Si el rendimiento se sostiene, se distribuye a la **cohorte amplia** en la Página de Inicio global.
* **Directiva Operativa para el Agente:** Configurar la lógica de lectura de analíticas en `05-metricas-retencion.md`: si la Tasa de Clics (CTR) disminuye pero las **Impresiones aumentan exponencialmente**, el agente **no debe cambiar la miniatura**. Esta disparidad indica que el algoritmo está probando el vídeo con éxito en cohortes frías más amplias.
* **Fuentes de Referencia Exactas:**
  * **Documento Markdown:** *Arquitectura Algorítmica...* (Sección: *Evaluación por Cohortes y Expansión Algorítmica*).
  * **Manual Gyre:** *YouTube recommendation system 2026* ([https://gyre.pro/blog/youtube-recommendation-system-how-to-hack-it-for-explosive-growth](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fgyre.pro%2Fblog%2Fyoutube-recommendation-system-how-to-hack-it-for-explosive-growth)).

#### **B. Métrica de Tiempo de Visualización Valorizado (** **Valued Watch Time** **)**

* **Mecánica Algorítmica de la Plataforma:** El algoritmo ya no mide únicamente los minutos brutos consumidos. Muestrea a los usuarios mediante encuestas de satisfacción de 1 a 5 estrellas. Mediante aprendizaje automático, la plataforma predice la probabilidad de satisfacción para el 100% de las reproducciones. Solo las visualizaciones asociadas a calificaciones de 4 o 5 estrellas computan como **Tiempo de Visualización Valorizado**.
* **Directiva Operativa para el Agente:** Priorizar la entrega de valor real, veracidad probada y claridad conceptual sobre la extensión artificial del vídeo. Metrajes largos inflados sin sustancia generan valoraciones negativas en encuestas, penalizando la distribución del canal.
* **Fuentes de Referencia Exactas:**
  * **Blog Oficial de YouTube:** Cristos Goodrow, *On YouTube's recommendation system* ([https://blog.youtube/inside-youtube/on-youtubes-recommendation-system/](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fblog.youtube%2Finside-youtube%2Fon-youtubes-recommendation-system%2F)).
  * **Paper Académico de Google:** Zhe Zhao et al., *Recommending What Video to Watch Next: A Multitask Ranking System* ([https://openreview.net/pdf?id=gxlKBGBBwN](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fopenreview.net%2Fpdf%3Fid%3DgxlKBGBBwN)).
  * **Documento Markdown:** *Arquitectura Algorítmica...* (Sección: *La Transición al Tiempo de Visualización Valorizado*).

#### **C. Protocolo de Diagnóstico y Toma de Decisiones en Tiempo Real**

* **Lógica Operativa para el Agente de IA:**
  1. **Caso A (CTR Bajo + Impresiones Altas):** *Diagnóstico:* Expansión a cohorte fría en progreso. **Acción:** Mantener empaquetado intacto.
  2. **Caso B (CTR Bajo + Impresiones Bajas/Promedio tras 3-4 horas):** *Diagnóstico:* Fallo de impacto en la primera impresión. **Acción:** Ordenar cambio inmediato a la miniatura variante B preparada en `01-packaging.md`.
  3. **Caso C (Caída de retención &gt;50% en los primeros 30 segundos):** *Diagnóstico:* Falso gancho o desalineación con la miniatura. **Acción:** Registrar la falla estructural en `05-metricas-retencion.md` para corregir la fórmula de inicio en la plantilla de guion del próximo vídeo.
* **Fuentes de Referencia Exactas:**
  * **Libro de Creador:** Derral Eves, *The YouTube Formula* ([https://brandonkboswell.com/sources/The-YouTube-Formula](https://www.google.com/url?sa=E&amp;q=https%3A%2F%2Fbrandonkboswell.com%2Fsources%2FThe-YouTube-Formula)).
  * **Documento Markdown:** *Arquitectura Algorítmica...* (Sección: *Marco Estratégico de Ejecución para Creadores*).
