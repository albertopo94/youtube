modificaría algunas formulaciones tal como están escritas, porque contradicen versiones más matizadas del mismo conocimiento dentro de tu propio repositorio.
Corrección necesaria
Caso 1. La prohibición absoluta de los vídeos fuera de temática

En AGENTS.md, §04.6 aparece la instrucción:
«Prohibido proponer videos virales fuera de temática (off-topic hits); un éxito que atrae a la audiencia equivocada destruye la retención de los videos posteriores».

Sin embargo, el documento canónico _framework/roles/01-investigacion-ideas.md explica que un vídeo tangencial no provoca necesariamente una penalización automática y que experimentar es válido si se evalúa la respuesta observable de la audiencia.

Qué cambiaría: quitaría la afirmación determinista de que un vídeo fuera de temática destruye la retención posterior y la prohibición general de proponerlo. Mantendría la regla estratégica: priorizar la coherencia entre el vídeo, el público objetivo y la propuesta del canal, y justificar cualquier experimento que se aparte de ella.

No sobra el conocimiento. Sobra la formulación absoluta, porque contradice una versión más rigurosa que ya tienes documentada.

Método que debe actualizarse
Caso 2. Cómo detectar vídeos atípicos (outliers)

En AGENTS.md, §04.5, el paso de detección de outliers pide calcular el ratio de visualizaciones frente a suscriptores.

En cambio, la versión desarrollada de roles/01-investigacion-ideas.md advierte que no basta con comparar visualizaciones totales y suscriptores: propone contrastar el vídeo con la mediana de vídeos comparables del mismo canal en una ventana reciente de entre tres y seis meses, y distinguir Shorts de vídeos largos.

Esa segunda formulación es más completa para detectar rendimientos atípicos.

Qué cambiaría: sustituiría el ratio visualizaciones/suscriptores como criterio principal por la comparación temporal entre vídeos comparables. El ratio de suscriptores podría seguir siendo una señal auxiliar, pero no el método central.

Este caso también afecta a youtube-shell: su skill yts-investigacion-ideas todavía incluye el ratio visitas/suscriptores como parte de las instrucciones del barrido DFS. Por tanto, aquí no basta con corregir el texto maestro: hay que trasladar la metodología más completa al consumidor.

Estos dos ejemplos ilustran algo importante: el peligro no es conservar demasiado conocimiento, sino que dos versiones del conocimiento lleguen al agente con diferente fuerza o precisión.
2. ¿Qué contenido es redundante, sin que eso signifique que sea prescindible?
Hay dos casos donde distinguiría la utilidad del conocimiento de la necesidad de repetirlo.
Los cuatro modos audiovisuales

AGENTS.md, §03, describe los cuatro flujos de producción. El mismo conocimiento se desarrolla en roles/04-direccion-y-edicion.md.

No eliminaría los modos ni sus diferencias. Consideraría dejar en AGENTS.md un resumen que explique cuándo seleccionar un flujo y remita al documento canónico para la metodología completa. Así evitas que las dos descripciones evolucionen en direcciones distintas.



El Prompt Maestro de prompts-utiles.md

_framework/plantillas/prompts-utiles.md contiene un prompt para guionado que recoge principios que también aparecen en el rol de guion y narrativa.

No lo borraría: sigue siendo útil como recurso independiente para trabajar con modelos externos. Pero no hace falta tratarlo como una segunda fuente normativa si la metodología canónica ya está recogida en el rol y en la skill del consumidor.



En ambos casos conservaría el conocimiento y evitaría duplicar su definición completa. Si una copia es necesaria porque se utiliza de forma independiente, puede mantenerse, siempre que su relación con la fuente canónica esté clara.
3. ¿Y las instrucciones técnicas específicas del piloto?
En _framework/herramientas-y-apis.md aparecen datos como la escala de ticks de FilmCraft, la necesidad de --save y el rendimiento observado en el Mac Intel durante el piloto.

No los considero inútiles. Son resultados de aprendizaje de una prueba real y pueden ahorrar errores al repetir ese flujo.

Lo que haría es distinguir su ámbito:
- La metodología audiovisual y las decisiones de diseño son conocimiento de dominio que debe orientar la creación.
- Los detalles de FilmCraft son conocimiento operativo para un proveedor y un entorno concretos.
- El informe del piloto es evidencia que explica el origen y los límites de ciertas conclusiones.
Conservaría las tres clases. La diferencia sería cuándo las consulta el agente, no si merecen existir en el repositorio.
