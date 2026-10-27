# Rol: Investigación y Generación de Ideas

Este rol es el responsable de la fase de descubrimiento: encontrar nichos rentables, identificar oportunidades atípicas y validar si una idea tiene el potencial de alcanzar alto rendimiento antes de invertir recursos en producción.

---

## 1. Mapeo Exhaustivo del Nicho: Protocolo DFS Híbrido (Depth-First Search)

Para entender la demanda real de un nicho en YouTube sin dejar rincones sin explorar, aplicamos el algoritmo de **Búsqueda en Profundidad con Retroceso (*Depth-First Search + Backtracking*)** sobre el grafo de recomendaciones de YouTube.

> **Realidad Técnica:** YouTube bloquea el web scraping masivo y eliminó de su API oficial el acceso a la barra lateral de recomendaciones. Por ello, este protocolo opera en **modalidad híbrida (Agente = Cerebro y Pila / Creador o VA = Ojos en el Navegador)**.

---

### Conceptos del Grafo de YouTube:
- **Nodo Raíz (*Root Node*):** El nicho central que queremos investigar (ej. *salud cognitiva / papers simplificados*).
- **Nodo:** Cada término de búsqueda, video individual o canal descubierto.
- **Aristas (Conexiones):** La barra lateral derecha de **videos recomendados (*Up Next / Related*)** que el algoritmo de YouTube genera para cada video.
- **La Pila (*The Stack*):** Lista ordenada de elementos pendientes de explorar (LIFO: último en entrar, primero en salir) gestionada por el agente.
- **Base de Datos de Research:** La matriz en `estudio-mercado.md` donde se asientan todos los hallazgos validados.

---

### Los 6 Pasos del Algoritmo DFS:

1. **Generación de Semillas de Dolor (*Seed List*):**
   - El agente genera 10 a 15 términos en el lenguaje exacto que el mercado utiliza para describir su problema o deseo (no jerga técnica: ej. *"cómo quitar la niebla mental"*, *"por qué no descanso bien"*).
   - Estos términos se cargan en la **Pila (*Stack*)**.

2. **Búsqueda en Ventana de Incógnito (Creador / VA):**
   - El creador abre una ventana de navegación en **modo incógnito** (libre de sesgos de historial de visualización personal) y busca el primer término de la pila.

3. **Detección del Outlier (Anomalía Estadística con Contexto Temporal):**
   - Se localiza un video que haya superado significativamente el rendimiento habitual del canal.
   - **Contexto Temporal y Mediana:** No comparar únicamente vistas totales contra suscriptores (un video antiguo acumula vistas con los años). El ratio debe calcularse contrastando las vistas del video contra la **mediana de visualizaciones de videos comparables publicados por ese mismo canal en una ventana temporal reciente (últimos 3 a 6 meses)**.
   - **Filtro de Desglose de Formato (Long-form vs. Shorts):** Al auditar métricas de un canal competidor, comprobar si sus visualizaciones provienen de videos largos o de Shorts (aprovechando herramientas públicas gratuitas como Viewstats o inspeccionando directamente las pestañas del canal en YouTube). Un canal con decenas de millones de visitas mensuales infladas por Shorts no sirve como evidencia de retención ni modelo de empaque para producciones en formato largo.
   - **Filtro de Relatibilidad Universal sobre Volumen Bruto:** No elegir ciegamente el video con más millones de visitas si trata de un elemento hiper-especializado que nadie comprende fuera del nicho (ej. un "cuchillo de bismuto"). Es preferible modelar un outlier de 8M sobre un concepto universalmente reconocible (Red Bull, café, dinero, hábitos cotidianos, mascotas) que uno de 20M sobre un tecnicismo que carece de resonancia amplia.
   - El creador pasa el enlace o título al agente, quien lo registra en la base de datos de research y analiza su *curiosity gap*.

4. **Inmersión en el Canal:**
   - El creador entra al canal de ese video outlier y revisa sus videos más populares. Si hay otros videos con rendimiento sobresaliente en el mismo nicho, se registran en la base de datos para extraer patrones recurrentes del creador.

5. **Exploración de la Barra de Recomendaciones Laterales:**
   - El creador vuelve al video outlier original y mira la **barra lateral derecha de recomendaciones**.
   - Identifica si hay videos de otros canales relacionados que también presenten rendimiento anómalo y los empuja a la pila (*push to stack*).

6. **Backtracking (Retroceso Ordenado):**
   - Cuando una rama o canal deja de producir información útil (*dead end*), el agente indica retroceder un paso en el grafo (*backtrack*) y continuar con el siguiente elemento pendiente de la pila.
   - El ciclo se repite hasta agotar los términos semilla y las ramas principales, obteniendo un **mapa 360° de la demanda real y los ángulos ganadores del nicho**.

---

### Filtro de Evidencia de Clientes Target:
No basta con que un video tenga millones de visitas si la audiencia es casual o infantil cuando buscas clientes cualificados. Pregunta obligatoria:
> *"¿Qué evidencia objetiva demuestra que las personas que quiero como clientes o seguidores cualificados ya están eligiendo ver activamente este tema en YouTube?"*
- Inspeccionar comentarios, preguntas recurrentes y patrones de búsqueda para confirmar dolor o interés genuino antes de producir.

---

## 2. Ingeniería de Demanda y Niveles de Conciencia (Eugene Schwartz)

Todo video exitoso se rige por el principio fundamental de *Breakthrough Advertising* (Eugene Schwartz):
> *"El contenido no puede crear deseo de la nada. Solo puede tomar los deseos, esperanzas, miedos y dolores que YA existen en las personas, y canalizarlos hacia un tema o solución particular."*

### La Regla de Oro de la Demanda:
> **"The broad desire gives the idea demand. The unfamiliar mechanism gives them a new reason to care."**  
> *(El deseo amplio le da demanda a la idea. El mecanismo desconocido les da una nueva razón para que les importe).*

La gente puede desear intensamente un resultado (dormir mejor, tener energía, ganar más dinero, entender cómo funciona el mundo) sin comprender el mecanismo biológico, técnico o histórico subyacente.

---

### Los Niveles de Conciencia de la Audiencia en YouTube:

1. **Inconsciente (Unaware):**
   - El espectador no sabe que tiene un problema ni le interesa. Titular con el nombre de un paper o concepto técnico aquí garantiza cero clics.
2. **Consciente del Problema (Problem Aware):**
   - El espectador sufre el síntoma o dolor pero no conoce la causa ni la solución (*"Me despierto cansado todos los días"*).
   - **Aquí se encuentra la mayor masa de audiencia.** El packaging debe conectar directamente con este dolor reconocido.
3. **Consciente de la Solución (Solution Aware):**
   - Sabe que existen soluciones genéricas (pastillas, meditación, rutinas), pero busca alternativas mejores o las existentes le fallaron.
   - Ideal para captar clientes con alta intención de acción.
4. **Consciente del Mecanismo (Mechanism Aware):**
   - Conoce el método técnico (ej. *"el sistema glinfático"* o *"la ventana anabólica"*) y busca detalles técnicos, comparaciones o matices. Solo funciona para nichos ya especializados.

---

### El Principio del Puente (The Bridge Principle):
> **"If direct demand exists, build around it. If it does not, change the subject or bridge it to something people already want."**  
> *(Si existe demanda directa, construye alrededor de ella. Si no existe, cambia el tema o construye un puente hacia algo que la gente ya desee).*

- Si tu video trata sobre un paper científico denso o un mecanismo técnico desconocido, **no lo empaques con el mecanismo**.
- Construye un **puente (*bridge*)**: conecta el deseo amplio que la gente ya busca (ej. *lucidez mental, evitar el envejecimiento*) con el mecanismo novedoso que vas a desvelar en el video.

---

## 3. Modelo Mental Editorial: Satisfacción del Espectador (*Viewer Satisfaction*) `[Práctica Editorial]`

> **"El objetivo de cada video es maximizar la satisfacción del espectador con respecto a la promesa del empaque, por encima de métricas superficiales o ruidosas."**

### 1. El Bucle de Recomendación de YouTube:
- La documentación pública de YouTube explica que sus sistemas de recomendación buscan personalizar el contenido para cada usuario según su historial, tiempo de visualización y señales de satisfacción (encuestas, retención, interacciones).
- **El Modelo Mental de Trabajo:**
  1. El packaging (título y miniatura) atrae al espectador adecuado planteando una expectativa honesta y atractiva.
  2. El video entrega y **supera la promesa inicial**, reduciendo abandonos tempranos y aumentando las señales de satisfacción.
  3. YouTube interpreta que este contenido responde con alta calidad a los intereses de ese grupo de usuarios y amplía su prueba hacia audiencias con perfiles de consumo similares.
  *(Tratamos esto como una hipótesis de trabajo editorial orientada a la excelencia del contenido, no como una certeza matemática infalible).*

### 2. El Canal como una Campaña Global Única (Peligro del *Off-Topic Hit*)
- **"Tu video con más visitas puede ser el menos valioso de tu canal."**
- Un éxito viral sobre un tema tangencial puede atraer espectadores que no vuelven para los siguientes videos. No es una penalización automática ni un daño irreversible por un solo experimento: YouTube evalúa la respuesta de cada audiencia a cada video. Sin embargo, publicar repetidamente contenido que no conecta con los espectadores recomendados puede debilitar el rendimiento del canal con el tiempo.
- **Principio editorial:** Un canal coherente ayuda a servir mejor a un espectador ideal recurrente; experimentar es válido, pero se evalúa por la respuesta observable de la audiencia, no por una teoría determinista del algoritmo.

**Fuente y límite:** YouTube Help, [Performance FAQ & Troubleshooting](https://support.google.com/youtube/answer/141805) y [Good to know about recommendations](https://support.google.com/youtube/answer/16559651). Esta regla guía la consistencia editorial; no predice ni garantiza recomendaciones.

### 3. El Peaje de la Especificidad (*The Specificity Trade-off*)
- La especificidad siempre te cobra un peaje en alcance (*reach*): cuanto más técnico o específico sea el packaging, menos vistas brutas obtendrá.
- **Debes pagar ese precio cuando hace que el cliente ideal se sienta profundamente comprendido.**
- **Regla:** Diseñar el título y la miniatura tan amplios como sea posible (*Broad Desire*) **sin sacrificar jamás la resonancia con tu cliente objetivo central**. Si al ampliar el título diluyes la claridad para el espectador que realmente te importa, no hagas ese intercambio.

### 3.4 Superficies de Descubrimiento y Estrategia Editorial por Superficie `[Hipótesis Editorial]`

> **Origen y naturaleza:** Esta matriz se destiló del análisis de `_framework/referencias/auditorias/revision-externa-3-2026-10-22.md` sobre los apuntes del segundo amigo. No es una tabla de pesos secretos del algoritmo: es una **hipótesis de trabajo editorial** sobre a qué superficie de YouTube conviene prestar atención y cómo. Cada fila se marca como hipótesis, con enlace a la fuente oficial, y sin atribuir pesos internos ni mecanismos no verificados.

YouTube no opera con un único algoritmo monolítico, sino con múltiples superficies independientes ajustadas a objetivos de usuario y señales de comportamiento distintas. Un mismo vídeo puede necesitar un enfoque editorial diferente según la audiencia que se pretenda atraer.

| Superficie | Qué estudia el agente | Aplicación editorial |
| :--- | :--- | :--- |
| **Inicio / Browse Feed** | Qué audiencia podría interesarse por el tema sin estar buscándolo activamente. El sistema evalúa historial de reproducción de largo plazo, afinidad temática global y retención general; usa filtrado colaborativo para emparejar espectadores con hábitos similares. | Conceptos, títulos y miniaturas que despierten interés sin confundir sobre el contenido. Identidad visual e iconográfica consistente para que los espectadores frecuentes identifiquen la miniatura en un feed saturado. |
| **Sugeridos / Up Next** | Qué relación podría tener el vídeo con lo que el espectador acaba de ver. El vídeo actual es la señal principal; el sistema mide coherencia semántica y comportamiento de sesión a corto plazo. | Analizar vídeos relacionados, desarrollar continuaciones naturales y enlazar contenido complementario (tarjetas intermedias, pantallas finales) para acumular créditos de *Session Continuation*. |
| **Búsqueda** | Qué pregunta explícita intenta resolver el espectador. Combina relevancia contextual (título, descripción, subtítulos) con CTR y retención específicas de esa consulta. | Títulos comprensibles con intención de búsqueda clara y contenido que responda realmente a la consulta. Tratar la búsqueda como embudo de adquisición para transformar tráfico frío en espectadores recurrentes. |
| **Shorts** | Qué puede conseguir que el espectador decida seguir mirando y disfrute del vídeo. Mide tasa de finalización, tasa de bucle y frecuencia de deslizamiento sin ver. | Gancho temprano (el segundo cero), desarrollo directo y evaluación de las métricas propias de Shorts. Eliminar introducciones, saludos o cierres tradicionales. |

**Fuentes oficiales de referencia:**
- Documentación oficial de Google Help: *How YouTube recommendations work* — <https://support.google.com/youtube/answer/16089387>
- Blog oficial de YouTube: Cristos Goodrow (VP de Ingeniería), *On YouTube's recommendation system* — <https://blog.youtube/inside-youtube/on-youtubes-recommendation-system/>
- Paper académico de referencia: Zhe Zhao et al. (Google/YouTube), *Recommending What Video to Watch Next: A Multitask Ranking System* (ACM RecSys) — <https://openreview.net/pdf?id=gxlKBGBBwN>

**Límite de esta matriz:** Las filas describen la *intención* de cada superficie y su *señal observable*, no su ponderación interna. Cualquier interpretación que convierta esta tabla en una receta de "cómo hackear cada superficie" va más allá de lo que las fuentes oficiales permiten y debe ser tratada como experimentación, no como regla.

---

## 4. La Técnica de Transposición Cross-Niche (El Atajo de Viralidad)

> **"Taking the core components of a viral video (hook, pacing, climax, payoff) from one saturated niche and applying it to a different, massive topic is a systematic way to engineer success."**

### El Principio de Trasplante Estructural:
- En lugar de competir frontalmente en nichos hiper-saturados donde canales históricos dominan el feed (ej. gaming/Minecraft con millones de videos idénticos), se analiza qué dinámicas narrativas alcanzaron **40M a 80M+ de reproducciones** en esos ecosistemas.
- Se aísla el **esqueleto de la viralidad**:
  1. *El Hook inicial:* El desafío o dilema visual planteado en los primeros 2 segundos.
  2. *La Acción Creciente (*Rising Action*):* Tensión o progresión acelerada por turnos o intentos.
  3. *El Clímax / Giro:* El momento de fallo inesperado o dificultad extrema.
  4. *El Payoff final:* La recompensa, venganza, transformación o remate cómico.
- **El Trasplante:** Se sustituyen los personajes, escenarios y objetos por los de tu propio nicho o temática (ej. personajes de Minecraft cambiados por futbolistas legendarios; o un reto de videojuegos cambiado por un experimento científico cotidiano).
- **La Estructura del Título también es transplantable:** al aislar el esqueleto de un outlier, registrar además **qué palanca de título usó** (`_framework/roles/02-packaging-miniaturas.md` §3) y si su miniatura emparejaba (`Moment`/`Story`/`Result`/`Transformation`/`Novelty`). Reutilizar la *estructura* (ej. "X vs Y", "I [reto extremo] for [tiempo]", "The ugly truth behind [tema]") adaptándola al contenido propio; nunca copiar el título literal ni importar sus métricas como promesa.
- Se conserva la cadencia sonora y la estructura matemática que ya demostró resonar a escala masiva en el cerebro de la audiencia.

### Matriz de Transposición Tridimensional (Género, Época y Medio) y la Regla del 3% (Virgil Abloh):
> **Origen:** Masterclass de YouTube 2025 (Virgil Abloh, Zach King, MrBeast). ✅ **ADOPTADO.**
- **La Regla del 3% de Virgil Abloh:** Para que una idea sea percibida como innovadora, no hace falta reinventar la rueda: basta con aplicar un **cambio intencional del 3%** a una estructura ya validada.
- **Las Tres Vías de Transposición:**
  1. *Transposición por Género / Nicho:* Mover la premisa estructural entre sectores alejados (ej. comparar barato vs. caro en comida rápida ➔ trasladado a hoteles, autos o herramientas de software).
  2. *Transposición por Época:* Buscar inspiración décadas o un siglo atrás (ej. Zach King estudiando el cine mudo de Buster Keaton de los años 1920 para adaptar gags físicos, dinamismo visual y cortes de salto). Mientras la competencia copia lo que salió la semana pasada, el catálogo histórico es una cantera inexplorada libre de saturación.
  3. *Transposición por Medio:* Adaptar formatos exitosos de la televisión clásica, concursos o cine a la velocidad de YouTube (ej. shows de MTV ➔ retos en la vida real de YouTube; dinámicas de Gran Hermano ➔ retos de convivencia en espacios confinados).

### Arquetipo Opcional de Estudio: Dinámicas de Shorts de Entretenimiento Masivo
*(Patrón de referencia extraído de canales de entretenimiento viral; no es un filtro obligatorio para canales educativos, técnicos, B2B ni de nicho)*:
1. **Universalmente Relatable (Accesibilidad):** En entretenimiento puro, temas cotidianos (mascotas, comida, transformaciones, orden) facilitan el alcance masivo sin barreras de entrada.
2. **Esfuerzo Visible o Inusual:** En retos y entretenimiento, un nivel de obsesión o detalle desproporcionado engancha por curiosidad. En canales educativos o serios, este principio se traduce simplemente en **demostrar rigor, datos contrastados o pruebas tangibles**.
3. **Compulsión de Finalización:** Plantear un dilema, enigma o estado inicial que invite naturalmente a quedarse hasta el final para conocer el desenlace.

---

## 5. Metodología: Cómo Encontrar una Idea de Video Increíble

### 1. Tema (Subject) Increíble: El "What"
- *¿De qué va el video?*
- *¿Podría este video obtener un millón de visitas?*
- Encontrar y explotar Outliers (excepciones, casos atípicos).

### 2. Formato (Type) Increíble: El "How"
El tema puede ser "cocinar una hamburguesa", pero el formato cambia radicalmente la experiencia y el público:
- **Tutorial:** "Cómo cocinar una burger".
- **Challenge:** "Hice la hamburguesa más pequeña del mundo".
- **Breakdown:** "The history of cooking burgers".
- **Commentary:** "Ranking every burger-making technique".
- **Vlog:** "Day in the life of a burger chef".
- **Interview:** "Asking Michelin star chefs how to cook a burger".

Cada formato brinda un tipo de valor distinto. Piensa en: *¿Qué tipo de valor quiero darle a los espectadores?*

**Notabilidad:**
- *¿Por qué darían click en el mío si muchos otros creadores ya tienen un video del mismo tema a través del mismo formato (especialmente creadores mucho más grandes)?*
- *How to be remarkable?*
  - Siendo significativamente mejor.
  - Siendo significativamente diferente.
  - Combinar formatos ayuda enormemente a ser significativamente diferente.

### 4. La Prueba de la Servilleta y Anclas Visuales (Johnny Harris & Cleo Abram) `[Filtro de Medio]`
> **Origen:** Masterclass de YouTube 2025. ✅ **ADOPTADO.**
- **El Filtro de Medio:** Muchas buenas historias fracasan en YouTube porque debieron ser un artículo de blog, un hilo de X o un post de LinkedIn. El medio audiovisual exige **anclas visuales** (elementos físicos o simbólicos que muestran en lugar de contar: ej. billetes convertidos en origami para ilustrar hiperinflación sin jerga macroeconómica).
- **La Prueba de la Servilleta:** Imagina explicarle la idea a un amigo en una cafetería:
  - *¿Sientes la necesidad de tomar una servilleta y dibujar un diagrama o esquema?*
  - *¿Necesitas sacar el teléfono y mostrarle una foto o video diciendo "mira esto"?*
  - *¿Te descubres señalando un objeto o contraste físico mientras explicas?*
  - Si la respuesta es **SÍ** ➔ existe un ancla visual legítima y la idea pertenece al medio video.
  - Si la respuesta es **NO** (la idea se explica enteramente con prosa abstracta sin apoyo gráfico indispensable) ➔ es un ensayo o artículo escrito, no un video de YouTube.
- **Heurística de Formato según Densidad de Anclas:**
  - *Múltiples anclas visuales y pruebas:* video largo de YouTube (Long-form).
  - *Una o dos anclas concentradas:* YouTube Short.
  - *Cero anclas:* texto o guion no prioritario.

### 3. Ángulo (Spice) Increíble
Son todas las ideas base posibles que pueden salir de un binomio `Topic + Format`. Diez ángulos de los innumerables que existen:
1. **Superlativos en el título** ("El más rápido", "El más caro").
2. **Stakes angle** (Riesgo o recompensa: qué hay en juego).
3. **Money angle** (Importancia universal ligada al costo/dinero).
4. **Tiempo / Time constraint** (Límite de tiempo urgente o desafío temporal).
5. **Comprehensive angle** (Guía definitiva o análisis exhaustivo).
6. **List angle** (Listas estructuradas).
7. **Familiarity angle** (Apelar a elementos o conceptos ya conocidos por todos).
8. **Topic but twist angle** (Tema conocido pero con un giro inesperado).
9. **Comparison angle** (Comparativa directa A vs. B).
10. **Transformation angle** (De cero a experto, de antes a después).
*(Se pueden usar combinaciones de ellos si el branding del canal y la narrativa del video lo permiten).*

### 4. Criterios de Eliminación: The Elimination Trials
Antes de pasar una idea a guion, debe aprobar estos 7 filtros:
1. **Feasibility (Factibilidad):** *¿Es factible esta idea? ¿Es posible para nosotros ejecutarla con los recursos y herramientas actuales?*
2. **New Audience Interest:** *¿Un nuevo espectador casual se mantendría interesado por este video?*
3. **Existing Audience Interest:** *¿Esta idea será interesante para al menos el 80% de mi audiencia actual o target?*
4. **View Potential:** *¿Tiene el potencial real de alcanzar el objetivo de visualizaciones del canal?*
5. **Alineación con el Branding / Campaña Única:** *¿Esta idea atrae exactamente al mismo cliente ideal de los demás videos del canal, o es un 'off-topic hit' que diluirá la audiencia?*
6. **Packageability (Adaptabilidad de packaging):** *¿Puedes idear un título contundente y una miniatura atractiva e irresistible para esta idea? Si no tiene buen packaging, la idea no avanza.*
7. **Auditoría de Evidencia Negativa (Anti-Sesgo de Positividad):** *¿Hemos analizado los videos que usaron este mismo formato y fracasaron?*  
   *(La evidencia positiva demuestra que la idea puede funcionar; la evidencia negativa enseña los errores de ejecución que debemos evitar, ej. ritmo, cantidad de puntos o profundidad).*

---

## 6. Protocolo de Verificación de Hechos y Rigor de Fuentes (Fact-Checking)

Para videos que aborden papers científicos, divulgación tecnológica, historia, noticias o finanzas, **el rigor es un pilar de retención y credibilidad**:
- **Peligro de la sobresimplificación:** Explicar un paper complejo o un concepto técnico de forma accesible para todos los públicos no debe significar distorsionar las conclusiones originales de los autores ni afirmar correlaciones dudosas como hechos demostrados.
- **Registro de afirmaciones y fuentes:** Para cada afirmación sustancial del guion, debe registrarse:
  1. *Afirmación relevante:* Qué se dice en el video.
  2. *Fuente primaria:* DOI del paper, libro, documento histórico o medio de origen.
  3. *Fecha de consulta:* Cuándo se verificó la información.
  4. *Segunda fuente independiente:* Obligatoria ante afirmaciones polémicas, extraordinarias o no consensuadas en la comunidad científica.
  5. *Estado de verificación:* `Verificado` / `En debate` / `Descartado`.
*(Utilizar la plantilla `_framework/plantillas/registro-verificacion-fuentes-template.md`).*

---

## 7. Protocolo de Experimentación Ágil en Primeras Publicaciones `[Protocolo Canónico]`

> **Origen:** extraído de la revisión externa 5 (ronda de pulido 2) y consolidado aquí como definición canónica. Remitida desde `AGENTS.md` §04.7 → «Véase también: Enfoque Ágil en Primeras Subidas».

**Principio:** en las primeras publicaciones de un canal (cualquier formato), prioriza la **agilidad y el aprendizaje práctico** sobre la perfección técnica. El objetivo es acumular **reps reales** (reps = repeticiones = publicaciones) para observar qué temáticas, formatos y empaques generan tracción real.

**Protocolo:**
1. **Cadencia de aprendizaje:** publicar con la mayor frecuencia sostenible que permita mantener un estándar mínimo de calidad (no "basura", pero tampoco "perfección paralizante").
2. **Hipótesis por video:** cada publicación prueba una hipótesis concreta (tema, ángulo, packaging, duración, estructura). Registrar la hipótesis en `01-packaging.md` o `02-guion.md` antes de producir.
3. **Feedback loop obligatorio:** tras cada publicación, registrar en `05-metricas-retencion.md` qué hipótesis se validó/invalidó y **una mejora concreta** para la siguiente publicación (ver `05-metricas-retencion.md` §5 — Mejora Única Nombrada).
4. **Criterio de parada de la fase ágil:** cuando el canal tenga **datos suficientes para identificar patrones** (mínimo 5–10 videos con métricas estables), pasar a una estrategia basada en evidencia en lugar de experimentación pura. **Este umbral es una orientación editorial, no una cantidad científicamente validada.**

**Límites:** no es "subir cualquier cosa". El estándar mínimo es que el video cumpla la **Puerta de Congruencia** (rol 03 §1) y la **Puerta de Correspondencia del Arranque** (rol 03 §1). La agilidad es en la **frecuencia y variedad de hipótesis**, no en bajar el estándar editorial.

**Cuándo NO aplica:** canales ya consolidados con patrones probados; videos de alto presupuesto/riesgo donde el coste de error no permite experimentación.

---

## 8. Maduración de Ideas: De la Variedad a la Decisión Estratégica
Tener un banco amplio de ideas en `ideas.md` (papers, noticias satíricas, cócteles, lore, relax/dormir) es valioso como semillero, pero **cada canal exige una estrategia, público y métricas distintas**:
- Un canal de divulgación científica exige rigor, gráficos claros y credibilidad.
- Un canal pausado para dormir exige diseño sonoro inmersivo y duraciones extendidas.
- **Regla:** No evaluar ideas de naturalezas incompatibles bajo el mismo molde ni mezclar públicos en un mismo canal. Cada canal en `canales-en-estudio/` debe responder a una apuesta de contenido clara y coherente.

---

## 9. Estrategia Lingüística como Hipótesis de Mercado
La tabla de mercados de `_framework/estrategia-idiomas.md` (Español, Inglés, Hindi) debe tratarse como una **herramienta para formular hipótesis**, no como un ranking definitivo obligatorio:
- Un mercado de cientos de millones de hablantes solo es una oportunidad real si somos capaces de producir contenido con la calidad cultural, idiomática y diferenciación requerida para competir en ese nicho.

---

## 10. Registro de Inspiración y Conexiones entre Temas `[Procedimiento Complementario Opcional]`

> **Origen:** revisión externa 5 (`_framework/referencias/auditorias/revision-externa-5-2026-10-22.md`). El protocolo DFS (§1) encuentra **demanda y outliers**; este registro cultiva **materia prima para ideas originales**. Son complementarios: no es otra metodología de ideación.

**Por qué:** quien solo busca videos que ya funcionaron termina repitiendo el mismo pozo de ideas. Ampliar deliberadamente lo que se conoce (otras disciplinas, formatos, temas vecinos) da más elementos con los que combinar conceptos nuevos.

**Cómo:** para cada hallazgo que resulte inesperado, el agente registra cinco campos (en `estudio-mercado.md` del canal o en el bloque de notas que el creador prefiera):
1. **Qué se descubrió y en qué fuente** (con enlace/fecha).
2. **Qué aspecto resultó inesperado** o interesante.
3. **Qué pregunta, reto o posibilidad creativa sugiere.**
4. **Cómo se relaciona con el público del canal** (qué dolor o deseo amplio toca — ver §2).
5. **Qué idea original podría desarrollarse** a partir de ello.

**Límite ético y editorial:** la inspiración es un punto de partida, **no una autorización para copiar** el concepto, el título o la ejecución de otro creador. Lo transplantable es la *estructura* (§4), nunca el empaque literal ni las métricas ajenas como promesa.

---

## 11. Heurística de Capitalización de Interés (*Market Cap of Interest*)

> **Origen:** estudio de fuente 2 (MrBeast), capítulo 12. ✅ **ADOPTADO.**

Cuando se debe decidir entre dos o más entidades, temas o sujetos competidores parecidos (ej. Lamborghini vs. Ferrari, una fruta vs. otra, dos retos similares), **no se elige por intuición ni por el primer dato que aparezca**. Se compara el **volumen agregado de búsquedas y vistas históricas** que acumulan esos términos en YouTube.

**Protocolo de decisión:**
1. Identificar las entidades candidatas que compiten por el mismo espacio temático.
2. Consultar el volumen de demanda histórica acumulado de cada una (búsquedas + vistas totales en YouTube, no solo el canal propio).
3. **Regla de decisión por orden de magnitud:** si una entidad tiene un orden de magnitud superior de atracción comprobada (ej. 100B vs. 500M de vistas históricas), **se elige esa entidad** para el título o el sujeto del video.
4. **Si la diferencia es nominal o no significativa,** la decisión se toma por intuición, contexto de audiencia o criterio creativo del canal.

**Por qué importa:** elegir la entidad con mayor masa crítica de interés no es solo un detalle de packaging. Una diferencia de un orden de magnitud en demanda preexistente se traduce directamente en más impresiones iniciales, mayor alcance del algoritmo y, al final, más vistas. Es una de las palancas de mayor impacto con coste cero.

**Límite:** esta heurística aplica cuando la diferencia es **significativa** (orden de magnitud). No es una fórmula mágica: si dos temas tienen masas críticas similares, el criterio creativo y la alineación con el canal prevalecen.

---

## 12. Regla de Retirada de Formato (*Format Fatigue*)

> **Origen:** estudio de fuente 2 (MrBeast), capítulo 6. ✅ **ADOPTADO.**

Los formatos y series tienen una **vida útil finita**. Continuar empujando un formato que ya demostró su techo genera fatiga de audiencia, encasillamiento del canal y degradación de la retención general.

**Protocolo de gestión de formatos:**
1. **Tope máximo de entregas por serie:** planificar de antemano un número máximo de episodios (ej. 3-5 para series cortas, 8-10 para formatos extendidos). No hay series infinitas.
2. **Espaciado en el calendario:** no apretar episodios consecutivos. Espaciar las entregas (semanas o meses entre ellas) mantiene la novedad y evita que la audiencia prevea cada paso.
3. **Retirada en el pico de rendimiento:** cuando el formato alcanza su máximo de rendimiento (CTR, retención y vistas), **se retira voluntariamente** antes de que los datos empiecen a bajar. No esperar a que la audiencia lo abandone; retirar con dignidad protege el capital de atención del canal.
4. **Rotación activa:** una vez retirado un formato, el canal introduce uno nuevo o variantes frescas para mantener la percepción de renovación.

**Señales de retirada temprana (no esperar a que fallen):**
- El CTR del mismo formato empieza a bajar consistentemente entre entregas.
- Los comentarios muestran repetición ("otro video más de lo mismo").
- La retención media cae porque el espectador ya conoce el desenlace antes de empezar.
- El canal empieza a encasillarse en el feed (algoritmo asociando el canal a un solo tipo de contenido).

**Equilibrio:** esta regla no justifica cancelar un formato que aún crece. La retirada es **estratégica y basada en datos**, no caprichosa.
