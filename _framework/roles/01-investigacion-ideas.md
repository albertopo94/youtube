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
- Un éxito viral sobre un tema tangencial o superficial atrae a miles de suscriptores que ignorarán los siguientes videos. Esto destruye la métrica de satisfacción inter-video y provoca que el algoritmo deje de empujar tus publicaciones posteriores.
- **Principio:** Un canal de YouTube es **una sola campaña coherente orientada a un espectador ideal recurrente**, no una colección de videos aislados que compiten por audiencias distintas.

### 3. El Peaje de la Especificidad (*The Specificity Trade-off*)
- La especificidad siempre te cobra un peaje en alcance (*reach*): cuanto más técnico o específico sea el packaging, menos vistas brutas obtendrá.
- **Debes pagar ese precio cuando hace que el cliente ideal se sienta profundamente comprendido.**
- **Regla:** Diseñar el título y la miniatura tan amplios como sea posible (*Broad Desire*) **sin sacrificar jamás la resonancia con tu cliente objetivo central**. Si al ampliar el título diluyes la claridad para el espectador que realmente te importa, no hagas ese intercambio.

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

## 7. Maduración de Ideas: De la Variedad a la Decisión Estratégica
Tener un banco amplio de ideas en `ideas.md` (papers, noticias satíricas, cócteles, lore, relax/dormir) es valioso como semillero, pero **cada canal exige una estrategia, público y métricas distintas**:
- Un canal de divulgación científica exige rigor, gráficos claros y credibilidad.
- Un canal pausado para dormir exige diseño sonoro inmersivo y duraciones extendidas.
- **Regla:** No evaluar ideas de naturalezas incompatibles bajo el mismo molde ni mezclar públicos en un mismo canal. Cada canal en `canales-en-estudio/` debe responder a una apuesta de contenido clara y coherente.

---

## 8. Estrategia Lingüística como Hipótesis de Mercado
La tabla de mercados de `_framework/estrategia-idiomas.md` (Español, Inglés, Hindi) debe tratarse como una **herramienta para formular hipótesis**, no como un ranking definitivo obligatorio:
- Un mercado de cientos de millones de hablantes solo es una oportunidad real si somos capaces de producir contenido con la calidad cultural, idiomática y diferenciación requerida para competir en ese nicho.
