Auditoría del repositorio albertopo94/youtube
He revisado la estructura actual de YouTube Creator Hub, su README.md, AGENTS.md, los documentos de estrategia, las plantillas de producción, la matriz de herramientas y las reglas editoriales. También he contrastado varias afirmaciones importantes con documentación oficial de YouTube y Google disponible actualmente.
Mi conclusión principal es esta: el repositorio ya tiene una metodología de producción bastante desarrollada, pero todavía no constituye un sistema de automatización audiovisual; además, mantiene algunas reglas que pueden llevarte a tomar decisiones equivocadas. Las dos cosas merecen atención antes de invertir tiempo en producir contenido a escala.
1. Los problemas más importantes, por prioridad

P0 — Riesgo editorial y de monetización
Crítico

AGENTS.md, _framework/contingencia-y-politicas-sensibles.md y los roles de producción incluyen afirmaciones que no están respaldadas, como que reemplazar entre el 30 % y el 50 % de las imágenes de un vídeo por material generado con IA ayuda a superar las auditorías de monetización. También se atribuyen efectos específicos al algoritmo de YouTube sin evidencia demostrada.
YouTube evalúa la originalidad, la aportación significativa y el carácter auténtico del canal; no establece un porcentaje mágico de sustitución por IA que garantice la monetización. 

YouTube Help
+1







P0 — Expectativas de automatización
Crítico

La estructura del repositorio es principalmente Markdown: instrucciones, plantillas, registros y criterios de aprobación. En el inventario actual no aparecen scripts propios de orquestación, pruebas automáticas ni flujos de CI que ejecuten el pipeline audiovisual.
Eso no impide que Codex, Claude Code, AgY u otro agente trabaje con los archivos y herramientas disponibles en tu equipo. Sí significa que el repositorio, por sí mismo, documenta el proceso, pero no ejecuta ni garantiza su automatización.




P1 — Reglas de crecimiento sin validar
Alta prioridad

El repositorio contiene reglas estrictas que recomiendan no publicar otro Short hasta que el anterior deje de crecer, esperar un número de horas determinado, preparar una cuenta nueva durante siete días y modificar un vídeo para evitar un supuesto bloqueo permanente por shadowban.
No conviene conservarlas como leyes operativas. YouTube indica expresamente que el aumento de visualizaciones no guarda relación con el intervalo entre publicaciones y recomienda priorizar la calidad y una frecuencia sostenible. 

Ayuda de YouTube







P1 — Capacidad real de las herramientas
Alta prioridad

_framework/herramientas-y-apis.md mezcla herramientas web, funciones probadas manualmente, integraciones documentadas y candidatas experimentales. La clasificación mejoró, pero aún no basta para saber si un agente puede invocar una herramienta, descargar un archivo, construir un proyecto, renderizar un vídeo y recuperar el resultado en tu entorno.



Estos problemas no invalidan todo el trabajo realizado. Sí indican que el siguiente avance debería centrarse en corregir las reglas dudosas y validar un proceso de producción real, en lugar de seguir añadiendo capas de documentación.
La versión que revisé es main, commit dc70ec3, fechado el 19 de octubre de 2026. Ese último commit introdujo varias de las reglas de crecimiento y de «hibridación con IA» que señalo a continuación.
2. Qué conservaría: hay una base aprovechable
No empezaría de cero. Hay decisiones de arquitectura editorial que tienen sentido y conviene mantener.
Separación entre investigación, producción y publicación. El diseño de canales-en-estudio/ y mis-canales/ permite evaluar ideas sin confundirlas con proyectos ya aprobados.
Estado persistente por vídeo. La plantilla 00-estado-produccion.md y el protocolo de inicio y continuidad de AGENTS.md intentan resolver un problema real: que un agente nuevo sepa qué existe, qué está aprobado y qué debe hacer a continuación. También es acertado que comprobar una casilla no equivalga a verificar el resultado real.
Guion por bloques e identificación estable. Los identificadores [Bxx] permiten relacionar cada parte de la narración con su escena, su recurso visual y, potencialmente, su archivo de audio. Esta es una de las decisiones mejor orientadas a la automatización.
Animatic antes de la producción definitiva. Validar primero la narración y el ritmo antes de gastar créditos generando imágenes o vídeos reduce desperdicios. El flujo audio-first tiene sentido para documentales, ensayos y divulgación, y está bien que el protocolo contemple también tutoriales, presentadores y vídeos musicales.
Trazabilidad de los recursos. La plantilla 04-registro-recursos.md intenta registrar origen, autor, licencia, plan, atribución y parámetros de generación. Es una buena base para gestionar material externo y generado por IA.
Validación antes de automatizar a gran escala. La decisión de no construir todavía una orquestación compleja antes de completar un primer vídeo piloto es correcta. El problema no es que el repositorio tenga mucha documentación; es que parte de ella contiene reglas poco fiables y falta probar la cadena operativa.
3. Señalamientos concretos que corregiría
A. Reutilización de vídeos ajenos: el repositorio mezcla conceptos distintos
Los archivos más relevantes son _framework/contingencia-y-politicas-sensibles.md, AGENTS.md y el documento raíz video de yotube.md.
El último contiene una transcripción extensa de un vídeo sobre el crecimiento de un canal reutilizando contenido popular de terceros. Está en la raíz, no figura en el índice del README.md y no incluye en el propio documento una ficha que identifique claramente el vídeo original y sus condiciones de uso.
No puedo determinar, solo a partir de ese archivo, si tienes autorización para redistribuir la transcripción. Sí considero necesario revisar si debe permanecer íntegra en un repositorio público. Lo más útil para tu objetivo sería conservar una síntesis de las ideas que quieras estudiar, con el enlace original, la fecha de consulta, las observaciones propias y las limitaciones de cada consejo.
Además, hay una distinción importante: derechos de autor, permiso del creador y monetización por contenido reutilizado son cuestiones diferentes. Según las políticas de YouTube, añadir atribución no basta para obtener derechos de uso ni para garantizar la monetización; la política de contenido reutilizado también puede aplicarse aunque el creador original haya concedido permiso. 

YouTube Help
+1



Por eso cambiaría las directivas que sugieren que dar crédito, rehacer el montaje, sustituir parte de las imágenes con IA o cambiar la locución permite superar automáticamente una revisión de monetización.
B. La política de contingencia contiene cifras y reglas sin evidencia suficiente
No dejaría estas reglas como obligaciones operativas:
Regla actual	Qué haría
Sustituir entre el 30 % y el 50 % de las escenas por material de IA para asegurar la monetización	Eliminar el porcentaje obligatorio y la promesa de monetización. Evaluar la contribución editorial real de cada vídeo.
Esperar 12–24 horas de aplanamiento o bajar de 5.000 visualizaciones por hora antes de publicar otro Short	Eliminar la prohibición automática. Decidir la cadencia según capacidad de producción, calidad y datos del canal.
Modificar audio, imagen y metadatos para evitar un shadowban permanente por una supuesta huella duplicada	Eliminar la explicación no verificada sobre el shadowban. Si se plantea volver a subir un vídeo, diagnosticar primero el problema real y corregirlo por un motivo legítimo.
Preparar una cuenta nueva durante siete días para evitar un supuesto «sandbox» de cero visualizaciones	Retirar la obligación mientras no exista evidencia fiable y pertinente que la justifique.
La afirmación de que el 80 % de los canales sancionados en salud usa estudios en animales como si fueran curas humanas	Suprimir la cifra si no puede documentarse con una fuente verificable. Mantener la advertencia científica sin esa estadística.
El límite de 800 caracteres para las apelaciones	Verificar el límite vigente en la interfaz o la documentación oficial antes de convertirlo en regla fija.
Hay evidencia oficial que contradice especialmente la regla sobre la cadencia: YouTube afirma que las variaciones de visualizaciones no dependen del tiempo transcurrido entre publicaciones y recomienda priorizar la calidad sobre una frecuencia arbitraria. 

Ayuda de YouTube



Mi propuesta es que toda regla de este tipo tenga un campo que indique si es una política oficial, una práctica editorial, una hipótesis experimental o una preferencia personal. No deben mezclarse.
C. Hay una afirmación desactualizada sobre la API de YouTube
En _framework/ciclo-produccion.md se afirma que los proyectos de la API no verificados tienen las subidas forzadas a privado.
La documentación oficial consultada actualmente para videos.insert dice explícitamente que los vídeos subidos desde proyectos de API no verificados no están restringidos al modo de visualización privada. 

developers.google.com



Actualizaría el documento en vez de tomar esa restricción como una limitación permanente de la arquitectura. Eso no significa que debas automatizar la publicación inmediatamente: la autorización, la configuración del proyecto y el comportamiento real de tu canal deben probarse antes de confiarle al agente una publicación real.
D. El flujo de verificación de fuentes necesita una fase más precisa
El estado de producción ordena el proceso así:
1. Packaging.
2. Fact-checking.
3. Guion y control de originalidad.
Sin embargo, 06-fuentes-y-verificacion.md registra afirmaciones vinculadas a identificadores de bloques del guion ([B01_Hook], [B04_Desarrollo], etc.). Para verificar afirmaciones concretas contra un guion, normalmente necesitas tener al menos un borrador.
Lo resolvería dividiendo el trabajo en dos actividades:
- Investigación previa: fuentes de partida, hechos conocidos, preguntas abiertas, posibles riesgos y límites de la evidencia. Se hace antes de redactar el guion factual.
- Verificación del borrador: contraste de las afirmaciones efectivamente escritas en el guion, con sus fuentes primarias, matices, fechas de consulta y revisión humana cuando corresponda. Se completa antes de aprobar el guion definitivo.
Así evitas tanto redactar un vídeo factual a ciegas como verificar un guion que todavía no existe.
También corregiría los ejemplos de las plantillas que parecen datos reales. Por ejemplo, 10.1038/... y 10.1016/... no son referencias bibliográficas completas; deben identificarse inequívocamente como ejemplos ficticios o sustituirse por placeholders que el agente no pueda confundir con fuentes verificadas.
E. Las pruebas A/B deben condicionarse al formato del vídeo
La plantilla 05-metricas-retencion.md incluye el seguimiento de Shorts y la sección «Prueba y Compara».
La función nativa de pruebas A/B de YouTube permite probar hasta tres combinaciones de título y miniatura, pero actualmente no admite Shorts, emisiones en directo programadas ni estrenos. 

Ayuda de YouTube



Añadiría un campo obligatorio de elegibilidad:
- Vídeo largo elegible para la prueba.
- Short: seguimiento de métricas, sin asumir que existe esa prueba.
- Directo u otro formato: comprobar las funciones disponibles antes de diseñar el experimento.
Esto evita que el agente genere tareas de publicación que no pueden ejecutarse.
4. La principal carencia técnica: falta el puente entre las instrucciones y la ejecución
En el árbol actual del repositorio hay 46 archivos, fundamentalmente documentación, plantillas y recursos estáticos. No encontré scripts propios de orquestación, una carpeta de pruebas ejecutables, un manifiesto de dependencias o flujos de integración continua.
Eso es compatible con una primera fase de diseño. Pero para lograr que varios agentes colaboren y automaticen la producción hace falta convertir cada etapa en un contrato operativo.
Por ejemplo, para la búsqueda de recursos audiovisuales, _framework/herramientas-y-apis.md contempla Google Imágenes, Coverr, Pexels, Pixabay, Wikimedia Commons y Openverse. Sin embargo, la fila de Google Imágenes describe un handoff: el agente genera la URL y el creador selecciona y descarga el material. Eso no equivale a una integración automática de descarga.
Google advierte que su filtro de derechos de uso se basa en la información proporcionada por los sitios de origen y recomienda verificar la licencia con el proveedor y la página que aloja la imagen. 

Ayuda de Búsqueda de Google



Para tu objetivo, mantendría Google Imágenes como opción de descubrimiento o revisión manual, pero priorizaría una integración ejecutable con fuentes que proporcionen mecanismos de búsqueda y descarga documentados. Cada descarga debería conservar, como mínimo:
- URL de origen y URL directa del archivo.
- Autor y licencia exacta, incluyendo las condiciones comerciales y de atribución.
- Fecha de consulta y evidencia de los términos aplicables.
- Ruta local, formato y comprobación de que el archivo descargado se puede abrir.
- Resultado de la validación: aprobado, rechazado o pendiente de revisión.
Si el agente no puede verificar la licencia, debe registrar el recurso como pendiente, no marcarlo como autorizado.
Lo mismo aplica a FilmCraft, EffectCraft, SoundCraft y demás herramientas del catálogo. Para que el estado «probada en entorno» sea realmente útil, documentaría la versión exacta, el enlace al proyecto o API, la plataforma, las acciones que se probaron, la fecha, el resultado y las limitaciones. En la situación actual, la matriz es una guía de investigación valiosa, pero no constituye por sí sola una prueba reproducible de las capacidades disponibles.
5. Hay duplicación de plantillas y falta un mecanismo para mantenerlas sincronizadas
He comprobado que varios archivos de las plantillas del framework son idénticos a sus copias dentro de la plantilla del canal. Por ejemplo, estudio-canal-template.md y canales-en-estudio/_plantilla-canal/estudio-mercado.md tienen el mismo contenido y el mismo identificador de blob.
Esto no es necesariamente un error: una plantilla canónica debe poder copiarse para crear un canal. El problema es que, sin un mecanismo de generación o actualización, las copias pueden divergir cuando corrijas una regla o añadas un campo.
Mi recomendación sería mantener las plantillas del framework como fuente de verdad y crear un script pequeño que inicialice la estructura de un canal y la de un vídeo a partir de ellas. No hace falta todavía desarrollar una aplicación de orquestación completa. Basta con automatizar la creación de carpetas, la copia de plantillas y la comprobación de que los archivos obligatorios existen.
También aclararía una inconsistencia: el README.md dice que el vídeo se cierra con entregable-final.md, pero el contrato de estructura por vídeo en AGENTS.md describe únicamente los archivos 00 a 06. Especificaría dónde se genera ese entregable y cuándo se mueve el vídeo a videos-publicados/.
6. Cómo avanzaría para alcanzar tu objetivo
El siguiente paso no debería consistir en añadir más teoría, sino en demostrar que el proceso funciona de principio a fin.
Hoja de ruta priorizada

1. Corregir las reglas poco fiables
Revisar AGENTS.md, contingencia-y-politicas-sensibles.md, estudio-canal-template.md y 05-metricas-retencion.md. Eliminar las garantías de monetización por porcentaje de IA, los umbrales de cadencia presentados como leyes y las afirmaciones no acreditadas sobre shadowban.




2. Elegir un vídeo piloto y registrar cada paso
Ejecutar el proceso con una idea concreta: investigación, packaging, fuentes, guion, locución provisional, recursos, animatic, montaje, exportación y control de calidad. Mantener los checkpoints humanos previstos.




3. Validar la herramienta de montaje de verdad
No basta con que el agente conozca el protocolo de FilmCraft. Debe demostrar que puede crear o modificar un proyecto, montar clips, sincronizar la voz y producir un render reproducible. Si falla en tu Mac Intel, usar el editor alternativo previsto y documentar el límite.




4. Definir cuándo una fase está realmente terminada
Cada etapa debe especificar sus entradas, archivos de salida, criterio de aceptación, prueba de resultado, aprobación requerida y recuperación si la herramienta falla. El agente debe distinguir entre «generado», «verificado» y «aprobado».




5. Automatizar lo que el piloto demuestre repetible
Una vez validado el recorrido, automatizar la búsqueda y descarga de recursos, la generación de audios por bloques, la creación del proyecto, el render y la recopilación de evidencias. Medir el tiempo ahorrado, los fallos y los costes reales antes de ampliar el sistema.



Veredicto
Daría luz verde a un vídeo piloto, pero no a escalar todavía la producción automatizada. La base documental ya permite iniciar una prueba controlada; antes, corregiría las reglas editoriales y de crecimiento que hoy se presentan como certezas sin suficiente respaldo.
El éxito del repositorio no debería medirse por el número de roles, reglas o herramientas mencionadas. Debería medirse por algo mucho más concreto: que un agente pueda retomar un proyecto, producir los entregables previstos, comprobarlos, registrar el origen y los permisos de los recursos, recuperarse de los fallos y dejar un vídeo exportado y revisado con una intervención manual conocida.
Esa prueba es la que permitirá distinguir qué partes de tu oficina de YouTube ya están operativas, cuáles dependen de una persona y cuáles merecen convertirse en software.
