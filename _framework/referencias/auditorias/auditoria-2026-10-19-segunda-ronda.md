<!-- ARCHIVO HISTÓRICO DE AUDITORÍA -->
<!-- Fecha: 19/10/2026 | Auditoría de madurez técnica y operativa -->
<!-- Estado de los hallazgos: INTEGRADOS Y RECONCILIADOS en el framework canónico -->

# Auditoría Técnica y Operativa del Repositorio (Segunda Ronda)

Los problemas prioritarios que corregiría
P0 — El flujo está documentado, pero todavía no está demostrado de extremo a extremo
Referencias: AGENTS.md, _framework/ciclo-produccion.md y _framework/herramientas-y-apis.md.
Tus documentos describen un proceso que puede abarcar investigación, packaging, guion, narración, generación de recursos visuales, montaje, exportación y publicación. Pero escribir cómo debe hacerse cada fase no hace que el agente pueda ejecutarla por sí solo.
Por ejemplo, para afirmar que la oficina puede producir un vídeo mediante un agente, debería existir evidencia de que este ha podido:
- Leer el estado real del proyecto y decidir correctamente qué paso corresponde.
- Generar los archivos y la locución provisional.
- Preparar recursos visuales y registrar sus procedencias.
- Crear un proyecto de montaje, construir una línea de tiempo y exportar un vídeo reproducible.
- Comprobar el archivo final y detenerse en los puntos de aprobación establecidos.
No he encontrado evidencia ejecutable de que el recorrido completo se haya realizado en este repositorio. Eso no demuestra que tus agentes locales no puedan hacerlo; significa que el repositorio aún no acredita esa capacidad.
Tu propio AGENTS.md ya contiene una regla acertada: no construir un sistema complejo de orquestación antes de completar un vídeo piloto. Yo la mantendría y la convertiría en la prioridad operativa.
P0 — El contrato de archivos por vídeo es inconsistente
Referencias: AGENTS.md, 00-estado-produccion.md y mis-canales/README.md.
He encontrado una discrepancia concreta:
- AGENTS.md exige que cada carpeta de vídeo en producción contenga exactamente los archivos 00 a 06.
- 00-estado-produccion.md define el cierre y la publicación usando 05-metricas-retencion.md y entregable-final.md.
- mis-canales/README.md indica que la carpeta se traslada a videos-publicados/, donde el entregable se llama entregable-final.md y las métricas se guardan como metricas-retencion.md.
Los conceptos son compatibles, pero el contrato exacto no está suficientemente definido. Un agente que respete literalmente una de las instrucciones podría incumplir otra.
Lo que haría: definir una única estructura canónica para el vídeo en producción y documentar explícitamente qué se traslada, qué se conserva y qué se genera al publicarlo. La palabra «exactamente» solo debe aparecer cuando el contenido de la carpeta sea realmente obligatorio y esté coordinado con el resto del ciclo.
Además, aclararía si los artefactos originales de producción deben permanecer en el archivo histórico o si solo se conserva un entregable resumido. No conviene perder la trazabilidad de fuentes, licencias y versiones aprobadas.
P0 — La plantilla de guion tiene tiempos incompatibles con la duración objetivo
Referencia: 02-guion.md.
El documento permite seleccionar una duración objetivo, pero después propone bloques con horarios predefinidos que terminan en el minuto 5:30. Además, hay un solapamiento en los tiempos: [B02_Roadmap_Compromiso] termina en 00:30, mientras que [B03_Conflicto] comienza en 00:25.
Esto puede ser útil como ejemplo de un formato concreto, pero no debería parecer la estructura temporal universal de un vídeo.
Lo que haría: conservaría los IDs estables y los objetivos narrativos de cada bloque, pero dejaría que la distribución temporal se calcule a partir de la duración solicitada, la densidad de contenido y la locución real. Los intervalos de tiempo del ejemplo deben identificarse como ilustrativos, no como límites obligatorios.
También permitiría que el agente cree, elimine, divida o combine bloques cuando la estructura seleccionada lo justifique, manteniendo identificadores estables para las unidades que realmente necesiten sincronizarse con audio y escenas.
2. Sigue habiendo reglas creativas demasiado obligatorias
Esta es la corrección conceptual más importante respecto a lo que veníamos hablando.
Referencias: AGENTS.md, 03-guion-y-narrativa.md y prompts-utiles.md.
La última actualización mejora el sistema: incorpora una caja de herramientas narrativa y prohíbe inventar credenciales, experiencias personales y títulos académicos. También has archivado el prompt externo en una ubicación de referencia en vez de utilizarlo como autoridad del sistema.
Sin embargo, persiste una contradicción importante: la sección de criterios de salida de AGENTS.md sigue exigiendo la fórmula de apertura de tres pasos —reafirmar la promesa, declaración de autoridad y roadmap— en determinados formatos educativos, científicos y de negocios. El prompt operativo, además, pide un gancho en bucle abierto y prescribe un CTA de tipo «Give».
Eso significa que ciertas técnicas que deberían elegirse según el vídeo siguen funcionando, en la práctica, como requisitos de aprobación.
Yo dividiría las reglas en dos grupos:
Debe ser obligatorio	Debe ser opcional
Cumplir la promesa editorial aprobada.	Que el gancho sea una pregunta o un enigma.
No inventar credenciales ni experiencia.	Incluir una declaración de autoridad personal.
Verificar las afirmaciones según su naturaleza y riesgo.	Añadir un roadmap explícito al principio.
Aportar valor editorial propio y respetar los derechos.	Introducir un giro inesperado a mitad del vídeo.
Adaptar el grado de guionado al formato.	Cerrar con un CTA concreto, cuando no resulte natural o útil.
En lugar de ordenar que cada vídeo tenga una fórmula específica, el agente debería identificar el género, la audiencia, la promesa, los recursos disponibles y el efecto buscado; después, elegir la estructura que mejor sirva al contenido y explicar brevemente su elección.
También cambiaría en el README.md la idea de que todo guion debe cumplir la promesa en los primeros cinco segundos. El rol narrativo ya diferencia entre formatos dinámicos, divulgación profunda y contenido pausado; la descripción general debería reflejar esa flexibilidad.
Por último, los IDs [Bxx] son una buena decisión de diseño, pero la regla de vincular la tabla audiovisual «1:1» con los bloques de guion puede ser demasiado estricta: un bloque puede requerir varias escenas y una escena puede cubrir más de un bloque. La relación debería ser trazable, no necesariamente uno a uno.
3. Revisa las reglas de veracidad y política de YouTube
Referencias: contingencia-y-politicas-sensibles.md y 02-guion.md.
A. La clasificación de los regímenes necesita basarse en el riesgo real
Actualmente, el Régimen 1 permite libertad narrativa y prescinde de la tabla de fact-checking; el Régimen 3 incluye «Ciencia, Salud, Dinero, Noticias» y exige rigor reforzado.
Hay dos problemas:
- Un relato ficticio puede incorporar afirmaciones reales sobre salud, hechos históricos o personas. Que sea ficción no convierte esas afirmaciones en verdaderas ni elimina los controles sobre los recursos usados.
- Un vídeo de ciencia sobre un tema de bajo riesgo no tiene necesariamente el mismo nivel de riesgo que uno que recomiende tratamientos médicos o productos financieros. Ambos requieren rigor factual, pero no necesariamente los mismos controles de seguridad.
Separaría dos dimensiones: qué afirmaciones del vídeo son factuales y qué daño podría causar un error. De esta manera, todo contenido factual se verifica en la medida apropiada y los temas de mayor riesgo reciben controles adicionales.
B. La declaración de música generada por IA podría quedarse corta
En el rol narrativo se limita el caso de música generada por IA a composiciones realistas que imitan estilos de artistas o ejecuciones reales. La plantilla de guion utiliza una formulación todavía más estrecha: «música IA fotorrealista».
La ayuda oficial vigente de YouTube incluye la música generada por IA entre los ejemplos de contenido cuyo uso debe declararse. La regla interna no debería reducirlo a imitaciones de artistas o a música «fotorrealista». Conviene revisar esa formulación y seguir los criterios actuales de YouTube Studio. 

YouTube Help



C. No presentes los disclaimers como una garantía legal
La política interna exige incluir avisos médicos o financieros en la descripción y, en algunos casos, en pantalla. Como criterio editorial prudente puede tener sentido, pero un aviso genérico no garantiza cumplimiento legal, no valida un consejo y no sustituye los controles de contenido correspondientes.
Yo los identificaría como medida editorial interna sujeta al tipo de contenido y a la jurisdicción, no como una cláusula que blinda el vídeo.
D. Corrige las afirmaciones sobre políticas de reutilización
La distinción que haces entre copyright, permiso del creador original y monetización es muy útil y merece conservarse. Aun así, en algunos pasajes se usan conjuntamente términos como «prohíbe», «desmonetiza» y «contenido reutilizado».
Conviene mantener separados los tres planos: una infracción de derechos, una infracción de Normas de la Comunidad y una denegación de monetización no son decisiones equivalentes. La aportación original es un control editorial importante, pero no garantiza que el canal cumpla automáticamente las políticas de YouTube.
4. El catálogo de herramientas necesita pruebas reproducibles
Referencia: _framework/herramientas-y-apis.md.
Este archivo es especialmente importante para tu objetivo de automatización, porque es donde el agente debe distinguir entre una herramienta disponible, una capacidad documentada y algo que realmente puede ejecutar.
La clasificación por niveles es una buena idea, pero no se aplica de forma uniforme. Hay filas que dicen «disponible/documentada» utilizando el color reservado para «probada en entorno». En otros casos, acciones concretas —como organizar escenas— parecen haberse considerado prueba suficiente de capacidades más amplias.
Haría obligatorios cuatro campos de evidencia para cada integración:
Campo	Qué debe demostrar
Identidad y versión	URL oficial o repositorio, proveedor, modelo o versión exacta.
Prueba ejecutada	Qué acción real se probó, no solo qué documentación se leyó.
Resultado verificable	Archivo, captura, log, salida reproducible o evidencia equivalente.
Última validación	Fecha, entorno, plan y límites que se comprobaron.
Hay tres señalamientos específicos:
Google AI Studio. El catálogo habla de análisis de documentos de hasta dos millones de tokens. Esa capacidad debe quedar vinculada a un modelo concreto y vigente, no atribuirse globalmente a la suite. La documentación de Gemini 3.8 Flash consultada indica una ventana de contexto de un millón de tokens; el modelo Gemini 3.8 Flash TTS tiene un límite de entrada de 8.192 tokens. Son límites distintos para tareas diferentes, lo que refuerza la necesidad de registrar modelo y operación concretos. 

ai.google.dev
+1



Google Docs Video Scene Editor. No he encontrado una referencia oficial verificable con ese nombre exacto. Puede haber una confusión de nombre o de producto. No lo daría por inexistente, pero sí dejaría la capacidad como pendiente hasta enlazar la herramienta oficial correcta y documentar qué se probó.
FilmCraft, EffectCraft y SoundCraft. En el catálogo se consideran objetivos o capacidades experimentales, lo cual es mejor que presentarlos como listos para producción. Aun así, faltan referencias suficientemente concretas para que otra persona pueda saber qué software exacto se está nombrando, en qué versión, cómo se invoca y qué puede hacer. Si son proyectos tuyos o integraciones privadas, conviene enlazar el repositorio correspondiente y registrar el resultado de la prueba en tu Mac.
La mejora práctica es sencilla: no cambies el objetivo de FilmCraft ni añadas más herramientas por ahora. Demuestra con un proyecto pequeño que puedes crear una línea de tiempo, insertar un recurso, generar un render y reproducirlo en tu entorno. Si eso falla, activa el editor alternativo documentado y registra el motivo.
5. Hay dos hipótesis algorítmicas que no deberían presentarse como hechos
Referencias: 01-investigacion-ideas.md y estudio-canal-template.md.
Aunque has corregido parte de los mitos sobre Shorts, todavía veo afirmaciones de estrategia que deben llevar una etiqueta clara de hipótesis, o eliminarse si no existe una base verificable.
A. «Calentamiento» de cuenta durante siete días
La plantilla de estudio de canal establece que una cuenta recién creada debe usarse durante siete días antes del primer vídeo para evitar un supuesto sandbox de cero vistas.
Esa regla se presenta como obligatoria, pero el repositorio no aporta evidencia que la sustente. Yo la retiraría como requisito operativo. Si quieres estudiar si la antigüedad o actividad previa de la cuenta tiene alguna relación con el resultado inicial, regístralo como hipótesis experimental, sin asegurar que el periodo de siete días evita un bloqueo algorítmico.
B. El modelo «Winner-Take-All»
La investigación describe el rendimiento de YouTube como una dinámica donde el vídeo que gana en clics y satisfacción se vuelve hegemónico y absorbe el tráfico. El texto convierte una idea de estrategia editorial en una explicación bastante determinista del sistema de recomendaciones.
La documentación pública de YouTube sí explica que las recomendaciones intentan mostrar vídeos que interesan a los espectadores y que la satisfacción importa, pero eso no demuestra una secuencia causal universal del tipo «supera expectativas → el sistema empuja el vídeo → domina el nicho». 

YouTube Blog



Conservaría el principio de hacer coincidir la promesa con el contenido y estudiar señales de satisfacción. Cambiaría la explicación del algoritmo por una hipótesis de trabajo y evitaría afirmar que una mala elección de vídeo «destruye» la distribución de los siguientes.
También ampliaría la ficha de detección de outliers: no basta con las visualizaciones respecto a suscriptores. Deberías registrar la antigüedad del vídeo, su formato, la mediana de visualizaciones de vídeos comparables del mismo canal y el rendimiento relativo dentro de una ventana temporal similar. Un vídeo con millones de visitas puede ser un caso de estudio interesante sin ser necesariamente un patrón transferible a tu canal.
6. Las métricas deben adaptarse al formato y evitar las explicaciones circulares
Referencia: 05-metricas-retencion.md.
La plantilla recoge buenas variables y propone una retrospectiva de lo aprendido, pero mezcla métricas y diagnósticos de formatos diferentes:
- «Viewed vs Swiped» tiene sentido para Shorts, no como campo universal para vídeos largos.
- El CTR y las impresiones ayudan a diagnosticar el packaging, pero dependen de dónde y a quién se mostró el vídeo.
- Un descenso de retención no demuestra por sí solo que el guion estuviera mal; puede estar relacionado con el ritmo, la promesa, una sección concreta o la audiencia que llegó.
- «Winner-Take-All» no debería utilizarse como regla causal dentro de las conclusiones.
Mantendría tres mediciones de referencia —primer día, primera semana y primer mes—, pero las trataría como puntos de observación, no como un calendario universal. Añadiría un campo para registrar la hipótesis que se está probando, el tamaño de muestra disponible cuando corresponda, las limitaciones del resultado y la decisión editorial que se tomará.
La parte de «cada vídeo debe mejorar la decisión siguiente» es excelente. Haz que la conclusión sea concreta: qué hipótesis se mantiene, cuál se descarta y qué cambio específico se probará en el siguiente vídeo.
Un acierto que sí debes conservar es el estado actual de Prueba y Compara: la herramienta de YouTube permite probar hasta tres títulos, miniaturas o combinaciones de ambos en vídeos elegibles; no está disponible para Shorts, directos programados ni estrenos en curso, aunque sí para emisiones archivadas y estrenos finalizados que ya sean vídeos largos. 

YouTube Help



7. El banco de ideas necesita estados, no más ideas sueltas
Referencias: ideas.md, referentes.md y banco-visual.md.
Estos documentos no son la parte más crítica del sistema, pero reflejan la diferencia entre una colección de notas y una oficina que aprende de sus decisiones.
ideas.md mezcla ideas de contenido, hipótesis de negocio, instrucciones de investigación y una metodología para evaluar vídeos. Además, la idea que formulamos sobre YouTube como nueva televisión y un estudio creativo independiente sigue sin incorporarse: el punto 9 continúa vacío.
En vez de añadir más texto sin clasificar, asignaría a cada idea uno de estos estados:
- Por explorar: es una intuición o posibilidad.
- Investigada: hay ejemplos y evidencia de que merece una prueba.
- Validada con datos propios: se ha publicado contenido relacionado y existen resultados que apoyan o debilitan la hipótesis.
- Descartada o en pausa: hay razones registradas para no continuar por ahora.
De este modo, las ideas dejan de competir por atención solo porque suenan atractivas. El agente puede recomendar cuál investigar o producir a continuación según la evidencia, el coste y la estrategia del canal.
Los documentos referentes.md y banco-visual.md también podrían beneficiarse de una ficha mínima para cada referencia: qué observar, qué no copiar, qué aprendizaje se extrae y en qué proyecto se ha aplicado. No necesitas convertirlos en bases de datos complejas para que resulten más útiles.
8. Hay una última señal de mantenimiento documental que corregiría
Referencia: auditoria-2026-10-19.md.
El archivo está correctamente ubicado en una carpeta de auditorías históricas, pero su comentario inicial dice que los hallazgos están «integrados y corregidos», mientras que el cuerpo conserva una lista de problemas que aún se recomienda corregir.
No es un problema de la arquitectura principal, pero puede confundir a un agente que consulte el informe como fuente de verdad.
Mantendría el archivo como histórico, aclarando su estado y el commit evaluado. Para las próximas auditorías, registraría cada hallazgo con su estado explícito: abierto, corregido, parcialmente corregido o pendiente de validación. Así puedes comprobar el progreso entre revisiones sin asumir que el simple hecho de haber documentado una corrección significa que ya está resuelta.

9. Qué haría ahora, en orden
No aconsejo invertir otra semana en reorganizar instrucciones. El siguiente paso debería servir para descubrir qué puede ejecutar realmente tu entorno.
1

Cerrar primero los defectos que provocan errores.
Unificar el contrato de carpetas y publicación, corregir los horarios de 02-guion.md, ajustar la distinción entre controles obligatorios y técnicas narrativas opcionales y corregir la regla de declaración de música generada por IA.



2

Crear un proyecto de canal y un único vídeo piloto.
No hace falta elegir ahora un canal definitivo para siempre. Escoge uno suficientemente sencillo y representativo para probar investigación, packaging, guion, locución, recursos, edición y publicación asistida, con el mismo estado persistente y los mismos controles que pretendes utilizar habitualmente.



3

Validar una herramienta por vez con un resultado real.
Empezaría por la locución provisional y el montaje. El objetivo es obtener un archivo reproducible y comprobar qué parte del trabajo puede realizar el agente, cuál requiere intervención manual y dónde falla la integración. Si FilmCraft no funciona de extremo a extremo en el entorno local, utilizaría el editor alternativo ya contemplado, sin detener todo el piloto.



4

Medir el proceso, no solo el vídeo.
Para cada fase, registrar cuánto tarda, qué coste tiene, qué acciones realizó el agente de forma efectiva, qué tuvo que hacer el creador, qué archivos produjo y qué errores necesitaron corrección. Ese registro dirá qué automatizar a continuación.



5

Automatizar las tareas repetitivas después del piloto.
Las primeras candidatas serían un script para inicializar la carpeta de vídeo, un validador de entregables y estados, y una comprobación técnica del archivo final —duración, resolución, códec y pistas de audio—. Las decisiones creativas y la inspección final seguirían sujetas al criterio editorial correspondiente.



Veredicto
Tu repositorio tiene una dirección conceptual coherente: investigación, promesa editorial, guion adaptable, pruebas de audio y vídeo, trazabilidad y mejora a partir de métricas. Las últimas correcciones del prompt externo y de la credibilidad narrativa van en la dirección correcta.
El principal riesgo ahora no es que el sistema carezca de instrucciones, sino que se le atribuyan capacidades o reglas que todavía no se han demostrado. Para obtener el resultado que buscas —agentes que produzcan vídeos y automaticen cada vez más trabajo— necesitas que el primer piloto compruebe las conexiones reales y la calidad del resultado, no que otra ronda de documentación haga que el proceso parezca más completo.
Esta revisión no modifica el repositorio; identifica los cambios que priorizaría antes de dar por validada la oficina como sistema de producción asistida por IA.
