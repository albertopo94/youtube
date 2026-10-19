<!-- ARCHIVO HISTÓRICO DE AUDITORÍA -->
<!-- Fecha: 19/10/2026 | Commit evaluado: dc70ec3 -->
<!-- Estado de los hallazgos: INTEGRADOS Y CORREGIDOS en el framework canónico -->

Los problemas que aún corregiría antes de confiar en el framework
P0. Quedan reglas algorítmicas antiguas en el rol de edición
Este es el problema de coherencia más importante que he encontrado.
En AGENTS.md, el apartado sobre Shorts todavía afirma que la viralidad suele comenzar matemáticamente entre la segunda y la cuarta publicación.
Por su parte, 04-direccion-y-edicion.md conserva directivas como estas:
- El primer Short funciona como una sonda para que el sistema determine la audiencia.
- Las piezas de 25–50 segundos tienen una ventaja matemática frente a las más cortas.
- Publicar mientras otro Short experimenta un pico puede perjudicar al nuevo vídeo.
- Diseñar un bucle continuo puede elevar el porcentaje medio visto por encima del 100 %.
Algunas de estas ideas pueden ser hipótesis útiles para experimentar. El problema es presentarlas como leyes algorítmicas generales, especialmente cuando otros documentos del mismo repositorio ya han corregido esa clase de afirmaciones.
Qué cambiaría: conservaría el arco narrativo de gancho, acción, complicación y desenlace, además de los bucles cuando encajen con el contenido. Retiraría las afirmaciones de causalidad algorítmica que no estén probadas y convertiría las tácticas de duración y cadencia en hipótesis experimentales con métricas, periodo de observación y resultados.
La síntesis del caso Tested Improved también necesita esa distinción: que un creador reporte una retención superior al 80 % no demuestra por sí solo que el arco en bucle la haya causado. Debe aparecer como una observación del caso, no como una regla general.
P0. El catálogo aún confunde documentación con capacidad operativa
En herramientas-y-apis.md se ha mejorado la clasificación de los servicios, pero siguen existiendo afirmaciones demasiado amplias:
Elemento	Señalamiento	Mejora necesaria
YouTube Audio Library	Se califica como «100 % segura contra reclamos».	Eliminar la garantía absoluta; documentar los términos y atribución de cada pista y cualquier incidencia conocida.
Google AI Studio	Se agrupan chat, visión, ingesta de documentos y generación de voz como capacidad probada.	Registrar qué función exacta se probó, con qué modelo, acceso, límites y resultado.
Luvvoice MCP	Se indica que está disponible para integración.	Probar una llamada real desde el agente elegido y verificar que devuelve un archivo de audio utilizable.
FilmCraft	Se mantiene como herramienta prioritaria para edición automatizada.	Demostrar la creación del proyecto, la manipulación de la línea de tiempo, el render y la reproducción del resultado en tu equipo.
Google Flow	Se atribuyen capacidades de coherencia de personajes y generación audiovisual.	Registrar qué flujo se ha probado y qué depende del modelo, plan o interfaz actual.
Google Imágenes	Se documenta una URL de búsqueda con filtro de tamaño y licencia libre.	Tratarla como descubrimiento y revisión de recursos, no como validación automática de licencia.
Un ejemplo especialmente importante: AGENTS.md recomienda utilizar Google AI Studio para trabajar con documentos científicos que pueden estar sujetos a un paywall. El agente podrá analizar un PDF al que tenga acceso legítimo, pero la herramienta no le concede automáticamente acceso al texto completo de un artículo restringido. La instrucción debe contemplar ese bloqueo y permitir que el agente trabaje con fuentes disponibles, o solicite el documento si el creador dispone de acceso.
Mi recomendación es ampliar la matriz con cuatro campos obligatorios: integración real, prueba ejecutada, evidencia de resultado y fecha de última validación. Si no se ha probado una función, debe permanecer como documentada o experimental, por muy convincente que resulte su documentación.
P1. La prueba nativa de títulos y miniaturas ya ha evolucionado
Aquí sí hay una actualización importante respecto a la documentación actual.
La plantilla 05-metricas-retencion.md indica que «Prueba y Compara» permite hasta tres miniaturas, y que no está disponible para emisiones en vivo ni estrenos.
La documentación oficial actual tiene una función de pruebas A/B de títulos y miniaturas. Permite probar hasta tres títulos y miniaturas diferentes o combinaciones de ambos. No admite Shorts, emisiones en directo programadas ni estrenos, aunque sí permite probar emisiones ya archivadas; los estrenos pueden probarse una vez finalizados y convertidos en vídeos largos. 

Ayuda de YouTube



Esto exige actualizar coherentemente:
- 01-packaging.md, para separar los candidatos creativos de las variantes que se probarán.
- 05-metricas-retencion.md, para registrar los títulos y las miniaturas de cada variante y reflejar la elegibilidad real.
- README.md, que todavía describe las pruebas como si se limitaran a las miniaturas.
Además, no haría que la plantilla generase obligatoriamente tres miniaturas «para la prueba nativa» cuando se está creando un Short. Es razonable desarrollar variantes creativas en ese formato, pero el objetivo de la tarea tiene que adaptarse al vídeo.
3. Revisa estas otras incoherencias documentales
A. La auditoría que has incorporado al repositorio ya está desactualizada
El archivo Auditoría del repositorio.md está en la raíz, pero su contenido describe la versión anterior del repositorio: cita el commit dc70ec3 como el estado revisado, mientras que ya hay una corrección posterior.
También contiene referencias como «YouTube Help +1» y «developers.google.com» que no son enlaces completos y verificables. Esto debilita precisamente la trazabilidad que el framework trata de imponer a los agentes.
Lo movería a una carpeta de auditorías históricas, con fecha, commit inspeccionado, enlaces directos a las fuentes y una lista de hallazgos con su estado: abierto, corregido o pendiente de validación. No debería formar parte del marco operativo canónico.
B. El README.md todavía no refleja del todo el flujo de verificación nuevo
El README describe el fact-checking antes de redactar el guion, mientras que la plantilla de producción ya diferencia entre investigación previa y verificación del borrador.
La distinción correcta es:
1. Estudiar la idea y sus fuentes de partida.
2. Comprobar que existe evidencia suficiente para sostener la propuesta del vídeo.
3. Crear el guion por bloques.
4. Verificar cada afirmación relevante del borrador antes de aprobarlo.
Además, cuando el vídeo sea de historia, actualidad o divulgación técnica, no siempre habrá un DOI. La fuente principal puede ser un documento oficial, un archivo histórico, una norma, un conjunto de datos o una fuente institucional. Debe aceptarse esa variedad en los criterios de salida, aunque para un artículo científico el DOI siga siendo útil.
C. La estructura de los vídeos no está sincronizada en todos los README
AGENTS.md define una estructura por vídeo de 00 a 06, pero mis-canales/README.md presenta una estructura más reducida y omite archivos obligatorios.
También hay una diferencia entre el documento de estado, que incluye entregable-final.md en el cierre, y el contrato de estructura por vídeo, que solo enumera los archivos 00–06.
No es un problema grave de diseño, pero sí uno que puede producir instrucciones distintas según qué archivo consulte el agente. Mantendría una estructura canónica y aclararía que entregable-final.md se genera o se traslada al cerrar y publicar el vídeo.
D. La matriz de producción necesita demostrar el resultado final
En 00-estado-produccion.md se marca el montaje como completado si hay un vídeo exportado y un registro de licencias. Eso es necesario, pero no suficiente.
Añadiría evidencia técnica de la exportación y de la revisión del archivo final:
- Resolución, relación de aspecto, tasa de fotogramas, duración y pistas de audio.
- Comprobación de que el archivo se abre y reproduce de principio a fin.
- Verificación de sincronización entre voz e imagen, silencios no intencionales, fotogramas negros o congelados y niveles de audio.
- Revisión de subtítulos si corresponden.
- Ruta del archivo final y un identificador o hash que permita saber qué versión se inspeccionó.
No tiene que ser otro documento enorme. Puede ser una pequeña sección en el estado de producción o un informe de QA generado por una herramienta. Lo esencial es que «exportado», «verificado» y «aprobado» no se confundan.
4. Señalamientos sobre la estrategia editorial
Investigación de nichos y vídeos con potencial
En estudio-canal-template.md utilizas los vídeos que superan ampliamente el rendimiento habitual como indicios para detectar oportunidades. Es una buena técnica exploratoria, pero el sistema mezcla ratios de visualizaciones respecto a suscriptores con ratios respecto al promedio del canal.
No son métricas equivalentes. Para comparar un posible outlier, registraría al menos el número de visualizaciones, la antigüedad del vídeo, el formato, el tema y la mediana de visualizaciones de otros vídeos comparables del mismo canal en una ventana temporal similar. Así reduces el riesgo de elegir un vídeo solo porque ha tenido mucho tiempo para acumular reproducciones.
El procedimiento de investigación también exige intervención manual del creador para explorar recomendaciones laterales. Si tu meta es automatizar, conviene que quede registrado como una limitación conocida del método híbrido, y que las integraciones alternativas se validen por separado, no que se presuponga que el agente podrá hacer esa tarea automáticamente.
Ideas de contenido e hipótesis de negocio
ideas.md mezcla ideas, hipótesis de mercado y notas exploratorias. Por ejemplo, la suposición de que los vídeos para dormir producirán más anuncios porque mucha gente los deja reproduciéndose mientras duerme debe tratarse como hipótesis por validar, no como una ventaja de negocio probada.
Te recomiendo separar las ideas en tres estados: por explorar, investigada con evidencia y validada con datos propios. Para cada hipótesis importante, registra la señal que la confirma o la refuta. Esto también se aplica a la estrategia de idiomas: cualquier ranking debe considerarse una hipótesis hasta contrastarse con la competencia, la audiencia, el potencial económico y la dificultad de producción reales.
5. El repositorio sigue siendo una metodología, no un motor de producción
Esta distinción continúa siendo decisiva. El árbol actual se compone esencialmente de instrucciones, plantillas, registros y recursos de referencia. No he encontrado scripts propios de orquestación, pruebas ejecutables ni flujos de CI que comprueben automáticamente el pipeline audiovisual.
Eso no significa que el repositorio esté mal diseñado. Significa que, para conseguir el resultado que buscas, hay dos capas por desarrollar:
Capa operativa: el agente debe poder consultar el estado, investigar, generar archivos, invocar herramientas conectadas, descargar recursos permitidos y comprobar los resultados.
Capa ejecutable: scripts pequeños deben ayudar a crear una estructura de vídeo, comprobar que están los entregables requeridos, validar metadatos del material audiovisual y detectar errores recurrentes antes de dar una tarea por finalizada.
No construiría todavía un sistema complejo de automatización. Primero haría un vídeo piloto con este framework y mediría qué tareas realizó realmente el agente, cuáles dependieron de una interfaz manual, qué falló y qué coste tuvo cada etapa. Después automatizaría aquello que se demuestre repetible.
6. Qué haría ahora, en orden
1

Eliminar las reglas obsoletas sobre Shorts
Unificar AGENTS.md, 04-direccion-y-edicion.md y sintesis-casos-shorts.md. Mantener las estructuras narrativas que aportan valor, pero separar los datos observados de las hipótesis sobre el algoritmo.



2

Actualizar las instrucciones de Test & Compare
Corregir el soporte actual de títulos y miniaturas en el README y las plantillas, incluidos los tipos de vídeo que pueden utilizar la función.



3

Completar la matriz de herramientas
Incluir para cada integración una prueba real, una fecha, la versión o modelo utilizado y la evidencia que demuestra el resultado. Ninguna herramienta debería considerarse operativa solo por contar con documentación o un servidor identificado.



4

Cerrar las discrepancias entre documentos
Sincronizar el README, AGENTS.md, los README de canales y la estructura de archivos por vídeo. Reubicar la auditoría actual como documento histórico y conservar referencias verificables.



5

Ejecutar el vídeo piloto y documentar sus resultados
Verificar la investigación, la locución, la búsqueda de recursos, el montaje, el render y la revisión final. Medir qué ha realizado el agente de forma autónoma y qué pasos han necesitado intervención humana antes de escalar.



Conclusión
El repositorio está más sólido que en la revisión previa y las correcciones de políticas y de fact-checking van en la dirección correcta. No aconsejo reiniciar la arquitectura ni seguir añadiendo teoría indiscriminadamente.
Mi recomendación es dar luz verde a un piloto controlado, después de corregir las instrucciones contradictorias que aún quedan. El objetivo no es que cada documento parezca completo: es que un agente pueda retomar un vídeo, saber qué tarea toca, ejecutar lo que esté a su alcance, no inventar capacidades, conservar la procedencia de los recursos y entregar un archivo final que haya pasado comprobaciones reproducibles.
Ese será el verdadero indicador de que YouTube Creator Hub está pasando de ser una oficina documental a convertirse en un sistema de producción asistida por IA.