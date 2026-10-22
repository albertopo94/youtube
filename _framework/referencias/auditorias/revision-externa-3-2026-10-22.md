He leído los apuntes completos de tu amigo y los he contrastado con el estado actual de tu repositorio, las plantillas que ya tienes y la documentación oficial de YouTube disponible a 22 de octubre de 2026.

Mi conclusión es bastante clara: tu amigo sí aporta valor, pero no incorporaría sus apuntes directamente al framework. Tiene buenas intuiciones de creador, algunas propuestas útiles y otras que convierten hipótesis sobre el algoritmo en reglas supuestamente demostradas. Precisamente esa última parte podría perjudicar tu proyecto.

Lo interesante es separar el conocimiento práctico sobre cómo captar y mantener la atención del espectador de las afirmaciones sobre cómo funciona internamente YouTube.
1. Lo más importante: qué conservaría y qué descartaría

Conservaría y desarrollaría

La distinción entre superficies de descubrimiento —Inicio, Sugeridos, Búsqueda y Shorts—; el análisis contextual de CTR e impresiones; y la comprobación de que la promesa de título y miniatura se corresponde con el contenido.




Ya está incorporado en buena medida

Los ganchos tempranos, las pruebas nativas de títulos y miniaturas, el análisis de la retención, las métricas específicas de Shorts y la idea de ofrecer un siguiente vídeo pertinente.




No incorporaría como reglas

La supuesta puntuación «Quality CTR», las cohortes de distribución predeterminadas, la obligación de poner una cara en cada miniatura, los intervalos fijos de interrupciones visuales y los cambios de miniatura a las tres o cuatro horas.



La razón fundamental es que tu framework ya tiene una filosofía mejor que muchas de esas propuestas: diferenciar las reglas verificables de las heurísticas creativas y adaptar la producción al género del vídeo.

2. Análisis de cada propuesta
A. Matriz de superficies algorítmicas
Sí aporta valor
Tu amigo propone distinguir cuatro superficies: Inicio, Sugeridos, Búsqueda y Shorts. Esa distinción tiene fundamento en la documentación oficial. YouTube explica que el Inicio se personaliza principalmente a partir del historial del espectador, que el vídeo actual es la señal principal de «A continuación» y que los Shorts utilizan señales de personalización y rendimiento. La Búsqueda emplea relevancia, interacción y calidad. 

YouTube Help
+2




Lo que no aceptaría es convertir esa información en una receta exacta para «hackear» cada superficie.

Así incorporaría la idea al proyecto:
Superficie	Qué debería estudiar el agente	Aplicación editorial
Inicio / Browse	Qué audiencia podría interesarse por el tema sin estar buscándolo activamente.	Conceptos, títulos y miniaturas que despierten interés sin confundir sobre el contenido.
Sugeridos / Up Next	Qué relación podría tener el vídeo con lo que el espectador acaba de ver.	Analizar vídeos relacionados, desarrollar continuaciones naturales y enlazar contenido complementario.
Búsqueda	Qué pregunta explícita intenta resolver el espectador.	Títulos comprensibles, intención de búsqueda clara y contenido que responda realmente a la consulta.
Shorts	Qué puede conseguir que el espectador decida seguir mirando y disfrute del vídeo.	Gancho temprano, desarrollo directo y evaluación de las métricas propias de Shorts.
Esto sería una matriz de estrategia editorial por superficie, no una tabla de pesos secretos del algoritmo.

Además, hay algo que tu amigo acierta de fondo: un mismo vídeo puede necesitar un enfoque distinto según la audiencia que pretendemos atraer. Yo sí añadiría esta matriz a _framework/roles/01-investigacion-ideas.md, junto al modelo de demanda y satisfacción que ya existe.
B. Visión por computadora, reconocimiento facial y miniaturas
Rechazar la justificación; conservar la heurística visual
Tu amigo afirma que YouTube ejecuta OCR, detecta expresiones faciales y utiliza esos resultados para clasificar las miniaturas en clústeres temáticos de una forma concreta. No he encontrado respaldo oficial suficiente para afirmar ese mecanismo específico de recomendaciones.

La afirmación de que cada miniatura debería incluir obligatoriamente un rostro humano y un objeto focal tampoco es una regla universal válida. Un rostro puede resultar útil en un canal de entretenimiento o de reacción, pero en un tutorial, una pieza de misterio, un ensayo científico o un canal musical puede funcionar mejor un objeto, una escena o una composición sin personas.

De hecho, tu actual 02-packaging-miniaturas.md ya contempla rostros, objetos, contraste, composición, legibilidad y alternativas sin texto. Lo hace como heurísticas de diseño, sin exigir una fórmula visual para todos los vídeos.

Mi decisión: no añadir un requisito «1 rostro + 1 objeto». Tampoco utilizaría los supuestos mecanismos internos de OCR o detección de emociones como fundamento de decisiones del agente. Mantendría los principios de composición que se pueden evaluar directamente con una miniatura real.
C. Pruebas A/B nativas y Watch Time Share
Ya está incorporado
Esta es una de las propuestas técnicamente mejor encaminadas, pero en gran parte ya está aplicada.

Tu rol de packaging y la plantilla 05-metricas-retencion.md ya contemplan tres variantes, pruebas nativas y la evaluación basada en Watch Time Share. Actualmente, la documentación oficial permite probar hasta tres títulos, miniaturas o combinaciones de ambos en vídeos elegibles; la opción ganadora se determina a partir del tiempo de visualización y no exclusivamente por el CTR. 

YouTube Help




Lo importante de esta propuesta es que refuerza una filosofía que ya tienes: no confundir más clics con mejor resultado.

No añadiría otra sección duplicada. Revisaría que la política existente tenga actualizadas la elegibilidad de los vídeos, la duración variable de los experimentos y la distinción entre una variante ganadora y una prueba sin resultados concluyentes.
D. Ganchos en los primeros 5–10 segundos
Ya está incorporado
Tu 03-guion-y-narrativa.md ya contiene una sección sobre los primeros 5–30 segundos. Distingue los formatos dinámicos y tutoriales, donde propone validar la promesa en los primeros 5–10 segundos, de los ensayos científicos o documentales que pueden necesitar entre 15 y 30 segundos para plantear la tensión.

Es una distinción mejor que imponer un único tiempo a todos los géneros.

YouTube también ofrece un informe de retención que mide qué porcentaje de la audiencia continúa mirando tras los primeros 30 segundos. Sus recomendaciones incluyen revisar la coincidencia entre título, miniatura y apertura. Pero esto no demuestra que cualquier caída temprana congele inmediatamente las recomendaciones, como afirma tu amigo. 

YouTube Help




Mantendría la guía editorial que ya existe y descartaría el lenguaje determinista sobre el supuesto algoritmo.
E. El «Quality CTR», el MMoE y un linter de clickbait
Reformular
Aquí hay una intuición valiosa mezclada con una afirmación técnica que no conviene perpetuar.

Tu amigo propone un detector de «Quality CTR / QCR» y afirma que el modelo MMoE supervisa esa métrica para limitar la distribución cuando alguien hace clic, pero abandona pronto.

La documentación oficial sí explica que YouTube considera los clics, el tiempo de visualización y las señales de satisfacción. También explica por qué un CTR alto no basta si el vídeo no satisface la expectativa que generó. Sin embargo, no he encontrado una especificación pública que permita implementar el supuesto Quality CTR como puntuación concreta que el creador pueda calcular o reproducir. 

YouTube Blog
+1




Lo que sí construiría es un linter de congruencia entre promesa y contenido.

Antes de aprobar un guion, el agente comprobaría:
- ¿Qué promete explícitamente el título?
- ¿Qué expectativa genera la miniatura?
- ¿El vídeo entrega lo prometido?
- ¿La apertura permite reconocer pronto que el contenido corresponde a esa expectativa?
- ¿Hay alguna afirmación visual o textual que el vídeo no pueda justificar?
Eso se puede evaluar con criterios editoriales y ejemplos contrastables. No necesitamos fingir que conocemos un indicador interno de YouTube.
F. Interrupciones de patrón cada 20–30 segundos
No incorporar como obligación
Cambiar el encuadre, introducir un gráfico, alternar A-roll y B-roll o añadir una transición puede mejorar un vídeo cuando resuelve un problema real de atención o comprensión. Pero los intervalos que propone tu amigo —un cambio cada 3–5 segundos en vídeos cortos y una interrupción cada 20–30 segundos en vídeos largos— no deberían tratarse como requisitos algorítmicos universales.

Tu plantilla de storyboard ya establece un perfil de ritmo visual por defecto de cinco segundos y reconoce excepciones justificadas para música, ambient, ensayos contemplativos y explicaciones lentas. Convertir la recomendación de tu amigo en una regla adicional generaría contradicciones y podría fomentar una edición nerviosa, llena de estímulos innecesarios.

Sí aprovecharía la idea como una caja de herramientas de montaje. El agente podría identificar tramos visualmente estáticos y proponer alternativas; la decisión dependería del género, la intención de la escena y, después de publicar, de los datos de retención.

No impondría una interrupción porque haya transcurrido un cronómetro.
G. Modelo de cohortes y diagnóstico por CTR
La parte útil merece una mejora
Aquí hay, probablemente, una de las mejores aportaciones del documento.

Tu amigo recomienda no cambiar una miniatura automáticamente cuando el CTR cae mientras las impresiones aumentan. Esa cautela está respaldada por la documentación oficial reciente: YouTube explica que el CTR puede disminuir al crecer las impresiones porque el contenido empieza a mostrarse a una audiencia más amplia, menos familiarizada con el canal. También advierte que el CTR varía significativamente según la fuente de tráfico y el contexto. 

YouTube Help
+1




Pero hay dos matices:
1. El patrón observado no demuestra que el vídeo esté atravesando unas cohortes fijas «primaria, secundaria y amplia». Podemos utilizar esa secuencia como hipótesis ilustrativa, no como una descripción confirmada del proceso interno.
2. El criterio de cambiar la miniatura inmediatamente tras tres o cuatro horas es demasiado agresivo. YouTube aconseja evitar decisiones con datos insuficientes y cambios por pequeñas variaciones del CTR. 
   
   YouTube Help
Tu plantilla actual 05-metricas-retencion.md ya registra fuentes de tráfico y contempla una revisión del packaging durante las primeras 24 horas. Yo mejoraría ese protocolo para evitar decisiones automáticas o precipitadas:
Situación observada	Interpretación prudente	Acción del agente
Aumentan las impresiones y baja el CTR.	Podría estar llegando a una audiencia más amplia; también puede variar la mezcla de fuentes.	No cambiar automáticamente. Comparar fuentes, volumen de datos, visualizaciones y tiempo de visualización.
CTR bajo con pocas impresiones.	La muestra puede ser insuficiente para diagnosticar el packaging.	Esperar evidencia suficiente y contextualizar con resultados comparables.
CTR alto y retención temprana débil.	El empaquetado podría generar una expectativa que el inicio no cumple.	Revisar la promesa y la apertura, sin concluir que el título sea necesariamente la única causa.
Prueba nativa con resultado concluyente.	Hay evidencia directa para comparar las variantes evaluadas.	Registrar el resultado y la variante ganadora.
Esta sí sería una mejora concreta del framework.
H. Tiempo de visualización valorizado
Conservar el principio, no intentar medir una señal oculta
El blog oficial de YouTube ha explicado el concepto de valued watchtime, incluyendo encuestas de satisfacción de uno a cinco estrellas y modelos que estiman respuestas para espectadores que no completan encuestas. Esa explicación aparece en una publicación de 2021. 

YouTube Blog




Por tanto, el principio editorial de priorizar el valor real por encima de inflar artificialmente la duración está bien orientado.

Lo que no haría es introducir esa cifra como si el creador tuviera acceso a una métrica directa por vídeo o pudiera calcular cuánto «tiempo de visualización valorizado» ha producido una publicación. En 05-metricas-retencion.md debemos registrar indicadores observables en Studio y mantener la satisfacción como criterio interpretativo.
I. Reacción inmediata, «Hidden Gem» y prohibición de despedidas
Solo conservaría la intención editorial
Evitar una despedida larga y sin contenido, hacer que el cierre mantenga el ritmo y ofrecer un siguiente vídeo pertinente pueden ser buenas decisiones creativas.

Pero la afirmación de que una «joya oculta» al final acostumbra a la audiencia a llegar al 100 % de reproducción, o que las frases de despedida envían una señal que reduce la distribución, no está suficientemente demostrada en los términos que plantea tu amigo.

Además, tu 03-guion-y-narrativa.md ya promueve un CTA como «el siguiente paso más útil», adaptado al género y a la madurez del canal.

No introduciría una obligación de esconder una recompensa al final. Una conclusión satisfactoria es más importante que manipular artificialmente la curva de retención.
J. Descripciones, subtítulos, NLP y MuLan
Separar utilidad real de especulación algorítmica
La recomendación de preparar subtítulos correctos y sincronizados es razonable por accesibilidad, comprensión y calidad de producción. Pero no asumiría que la existencia de subtítulos revisados genera por sí misma una ventaja algorítmica cuantificable.

En Búsqueda, YouTube sí explica que evalúa la coincidencia de título, etiquetas, descripción y contenido del vídeo con la consulta, además de señales de interacción y calidad. Recomienda descripciones únicas, describir el contenido desde las primeras líneas e incluir naturalmente una o dos palabras principales. No establece una regla general de más de 200 palabras. 

YouTube Help
+1




Tampoco convertiría referencias a MuLan y a supuestos modelos de visión en instrucciones generales del sistema: solo serían relevantes para una investigación específica, por ejemplo, si el proyecto decidiera trabajar con canales musicales.

3. Una advertencia sobre la calidad de los apuntes
Hay un problema documental que conviene resolver antes de aprovechar estas referencias.

El archivo remite repetidamente a un documento llamado «Arquitectura Algorítmica, Métricas de Satisfacción y Dinámicas de Audiencia...», así como a referencias numeradas como [cite: 31, 32, 237]. He revisado el árbol actual del repositorio y no he encontrado el documento citado ni una bibliografía que permita resolver esas referencias numéricas.

Eso significa que no podemos verificar desde el repositorio de dónde proceden varias afirmaciones. Además, el archivo repite buena parte de las recomendaciones sobre los primeros segundos, las interrupciones de patrón y el cierre en dos grupos de secciones. Antes de incorporarlo habría que deduplicarlo y reconstruir sus fuentes.

No es un problema que tu amigo no sepa de software: es un problema de trazabilidad de las afirmaciones. Sus observaciones sobre la práctica de YouTube pueden ser valiosas, pero no deben transformarse en reglas del sistema mientras no sepamos distinguir las fuentes oficiales, la experiencia de creadores y las hipótesis propias.

4. Qué haría en tu repositorio, concretamente
No copiaría el documento completo a AGENTS.md, ni añadiría otro manual general sobre el algoritmo. Haría tres cambios focalizados, y dejaría el resto como referencia.

1. Añadir una matriz de superficies a 01-investigacion-ideas.md.

Distinguir intención de búsqueda, descubrimiento en Inicio, relación temática en Sugeridos y comportamiento de Shorts. Cada estrategia se marcaría como hipótesis editorial, con enlace a las fuentes oficiales y sin atribuir pesos internos al algoritmo.




2. Revisar el diagnóstico postpublicación en 05-metricas-retencion.md.

Evitar reempaquetados precipitadamente; utilizar CTR por fuente, impresiones suficientes, retención y tiempo de visualización. Incorporar explícitamente el caso en el que las impresiones crecen mientras el CTR cae.




3. Convertir la propuesta del Quality CTR en un control editorial comprobable.

El linter compararía promesa, miniatura, título y guion; señalaría promesas sin respaldo y desalineaciones en la apertura. No afirmaría calcular una puntuación interna de YouTube.



Las demás propuestas —obligar a mostrar rostros, imponer interrupciones visuales a intervalos fijos, acortar siempre los títulos o introducir una recompensa oculta al final— no las incorporaría como reglas del sistema. Algunas podrían servir como ideas de experimentación, pero no justifican una modificación del framework en su forma actual.
Veredicto final
Tu amigo aporta valor principalmente como fuente de hipótesis editoriales y conocimiento práctico de creador, no como fuente fiable de especificaciones internas del algoritmo.

Su mejor aportación no consiste en descubrir una fórmula secreta de YouTube. Consiste en llamar la atención sobre tres cuestiones que tu framework puede explotar mejor: diseñar para distintas superficies de descubrimiento, interpretar las analíticas sin reaccionar ante métricas aisladas y comprobar que el contenido cumple la expectativa que genera el packaging.

Esos tres elementos sí merecen integrarse. El resto debe quedarse como referencia descartable, hipótesis pendiente de validar o conocimiento específico de ciertos formatos.

Mi recomendación es no fusionar los apuntes completos. Extraería esas tres aportaciones, las documentaría con fuentes verificables y mantendría el resto fuera de las reglas operativas. Así enriqueces el repositorio sin debilitar la distinción entre evidencia, heurística y especulación que has ido construyendo.
