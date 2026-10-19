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

3. **Detección del Outlier (Anomalía Estadística):**
   - Se localiza un video que haya superado ampliamente el rendimiento habitual (métrica: **5x a 10x de visualizaciones respecto al promedio del canal o a suscriptores**).
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

## 3. Metodología: Cómo Encontrar una Idea de Video Increíble

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
Antes de pasar una idea a guion, debe aprobar estos 6 filtros:
1. **Feasibility (Factibilidad):** *¿Es factible esta idea? ¿Es posible para nosotros ejecutarla con los recursos y herramientas actuales?*
2. **New Audience Interest:** *¿Un nuevo espectador casual se mantendría interesado por este video?*
3. **Existing Audience Interest:** *¿Esta idea será interesante para al menos el 80% de mi audiencia actual o target?*
4. **View Potential:** *¿Tiene el potencial real de alcanzar el objetivo de visualizaciones del canal?*
5. **Alineación con el Branding:** *¿Esta idea encaja con la marca, tono, misión y visión del canal? (En un canal nuevo no limita tanto, pero no debe desvirtuar el concepto).*
6. **Packageability (Adaptabilidad de packaging):** *¿Puedes idear un título contundente y una miniatura atractiva e irresistible para esta idea? Si no tiene buen packaging, la idea no avanza.*

---

## 3. Protocolo de Verificación de Hechos y Rigor de Fuentes (Fact-Checking)

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

## 4. Maduración de Ideas: De la Variedad a la Decisión Estratégica
Tener un banco amplio de ideas en `ideas.md` (papers, noticias satíricas, cócteles, lore, relax/dormir) es valioso como semillero, pero **cada canal exige una estrategia, público y métricas distintas**:
- Un canal de divulgación científica exige rigor, gráficos claros y credibilidad.
- Un canal pausado para dormir exige diseño sonoro inmersivo y duraciones extendidas.
- **Regla:** No evaluar ideas de naturalezas incompatibles bajo el mismo molde ni mezclar públicos en un mismo canal. Cada canal en `canales-en-estudio/` debe responder a una apuesta de contenido clara y coherente.

---

## 5. Estrategia Lingüística como Hipótesis de Mercado
La tabla de mercados de `_framework/estrategia-idiomas.md` (Español, Inglés, Hindi) debe tratarse como una **herramienta para formular hipótesis**, no como un ranking definitivo obligatorio:
- Un mercado de cientos de millones de hablantes solo es una oportunidad real si somos capaces de producir contenido con la calidad cultural, idiomática y diferenciación requerida para competir en ese nicho.
