A. Necesitas distinguir una observación de una regla fiable
Esta es mi principal preocupación sobre la nueva expansión.

Algunas técnicas proceden de casos concretos de creadores o modelos de vídeo con IA. Eso las convierte en ideas interesantes, pero no demuestra que funcionen siempre.

Por ejemplo, en el rol de dirección has incorporado:
- Un máximo de dos iteraciones consecutivas de edición imagen a imagen antes de reiniciar desde un prompt limpio.
- Un prefijo visual fijo para mantener la coherencia entre planos.
- La instrucción de impedir la música y los subtítulos generados dentro de los clips.
Las tres tienen sentido en determinadas circunstancias, pero no deberían tratarse como leyes universales.

El límite de iteraciones depende del modelo y del tipo de modificación. El prefijo visual debe admitir excepciones creativas intencionales. Y excluir música o subtítulos dentro de un generador resulta útil cuando necesitas controlar esas capas por separado, pero no en todos los formatos de vídeo.

Mi recomendación: clasifica cada técnica en cuatro niveles explícitos:
Nivel	Qué significa
Observación	Una fuente concreta muestra o afirma que funciona.
Hipótesis	Parece útil, pero hay que probarla en nuestro flujo.
Estándar recomendado	Se adopta como procedimiento habitual dentro de un ámbito definido.
Control obligatorio	Existe un criterio comprobable que debe cumplirse para superar una fase.

La distinción importa mucho: un consejo creativo no debería adquirir autoridad simplemente porque se haya copiado a un documento canónico.

Te aconsejo implementarlo como un sistema de clasificación, adopción y validación de técnicas dentro del propio framework, aprovechando las estructuras que ya tienes. No crearía un proceso nuevo que obligue a reescribir todo el repositorio.

Hay un detalle importante: tu repositorio ya distingue ADOPTADO, ADAPTADO, CONSERVADO SIN DUPLICAR y RECHAZADO. También incluye apartados como [Hipótesis Experimentales y Técnicas Narrativas]. El problema no es que no tengas ninguna clasificación; es que esas etiquetas describen cosas diferentes y todavía no forman un sistema completo.
1. Primero, separaría tres dimensiones
La tabla que te propuse antes mezclaba la evidencia de una técnica con la autoridad que le concedemos dentro del flujo. Las separaría así:
A. Fundamento y validación
¿Qué sabemos de la técnica y cómo lo sabemos?
FUENTE	Una fuente externa la describe o muestra. Todavía no demuestra que funcione en tu flujo.
HIPÓTESIS	Una explicación o propuesta plausible que aún no has validado suficientemente.
PILOTO	Se ha probado en tu propio entorno y existen resultados registrados.
REPETIDA	Ha dado resultados suficientemente consistentes en distintas pruebas comparables.
CONTRATO VERIFICADO	Un control determinista comprueba una condición técnica concreta. No necesita tratarse como hipótesis editorial.



B. Fuerza operativa
¿Qué debe hacer el agente con esa técnica?
INFORMATIVA	Conocimiento de referencia; no prescribe ninguna acción.
RECOMENDADA	Es la opción por defecto cuando se cumplen ciertas condiciones, pero admite alternativas justificadas.
OBLIGATORIA	El agente debe cumplirla en el ámbito definido, salvo excepciones expresamente permitidas.
COMPUERTA	No se avanza de fase hasta que se cumpla un criterio o se obtenga la aprobación requerida.



C. Decisión de incorporación
¿Qué has decidido hacer con lo aprendido?

Ya tienes esta dimensión en tus auditorías: ADOPTADO, ADAPTADO, CONSERVADO SIN DUPLICAR y RECHAZADO. La conservaría.


Así puedes tener una técnica adoptada, pero todavía no validada en tu entorno, que es precisamente una distinción que hoy te interesa hacer.
2. Lo implementaría en tres lugares del repositorio
No copiaría todos los datos en cada documento. Daría a cada archivo una responsabilidad concreta.

1. Crear _framework/gobernanza-evidencia.md

Sería el reglamento del sistema: definiciones, criterios para cambiar de nivel, qué evidencia exige cada estado y quién puede autorizar una regla obligatoria.

Es la fuente normativa que los agentes consultan cuando incorporan nuevas técnicas.



2. Crear _framework/registro-tecnicas.md

Sería el registro central de las técnicas que realmente has seleccionado para el framework. Cada técnica tendría un identificador estable, su estado de validación, fuerza operativa, ámbito y enlaces a la fuente y a la instrucción canónica.

Las auditorías conservarían el análisis detallado. El registro central permitiría saber de un vistazo qué conocimiento está incorporado y hasta dónde está validado.



3. Etiquetar las instrucciones en roles/ y las plantillas

Los agentes necesitan ver la fuerza operativa justo donde trabajan. Añadiría identificadores como [VID-IA-010] al lado de cada regla importante y mantendría la instrucción aplicable en el propio documento.

No haría que el agente tuviera que interpretar una etiqueta en una auditoría remota para saber si debe continuar o detenerse.



Referencias de tu estructura actual: estudios y auditorías, rol de dirección y edición y estándar operativo para agentes.
3. Así se vería una técnica real de tu repositorio
Tomemos el límite de dos iteraciones consecutivas de imagen a imagen (Image-to-Image) que has incorporado a partir del estudio de Hell Grind.

En la auditoría aparece como adoptado, pero eso no demuestra que el límite de dos iteraciones sea óptimo para tus herramientas.

Una entrada del registro podría tener este aspecto:
VID-IA-010
Pendiente de validar

Técnica: Límite de iteraciones consecutivas de Image-to-Image.
Campo	Valor de ejemplo
Fundamento	FUENTE
Validación propia	SIN_PROBAR
Incorporación	ADAPTADO
Fuerza operativa	RECOMENDADA
Aplicación	Edición encadenada de una misma imagen de referencia
Fuente	Estudio de Hell Grind, enlazado a su transcripción y al fragmento pertinente
Próxima acción	Comparar iteraciones encadenadas con el reinicio desde un prompt consolidado


La instrucción correspondiente en 04-direccion-y-edicion.md podría quedar así:
[VID-IA-010] Límite de iteraciones de imagen a imagen — recomendación experimental. Como regla inicial, evita más de dos iteraciones consecutivas sobre una misma imagen. Si aparecen degradación visual o inconsistencias, evalúa reiniciar desde un prompt consolidado. Este límite aún no está validado para todas las herramientas; registra las excepciones y los resultados durante el piloto.

Fíjate en lo importante: la técnica sigue disponible para el agente, pero no se presenta como una verdad universal.
4. Cómo se promueve una técnica a un nivel superior
Definiría un procedimiento sencillo para que una técnica no se convierta en obligatoria solo porque un agente la haya adoptado.
1. Capturar el hallazgo.
   
   La auditoría identifica la fuente original, la afirmación concreta y qué se ha decidido adoptar, adaptar o rechazar.
2. Delimitar su aplicación.
   
   Antes de incorporar una recomendación, indicar en qué formatos, herramientas o circunstancias tiene sentido. Una técnica para ficción generativa no debe convertirse automáticamente en regla para tutoriales de software.
3. Definir cómo probarla.
   
   Formular una prueba que permita evaluar resultados. Por ejemplo, comparar tomas equivalentes, registrar artefactos visuales, consistencia de personajes, coste y número de regeneraciones.
4. Registrar el resultado y revisar su estado.
   
   Tras el piloto, dejar constancia de qué se probó, en qué condiciones, qué ocurrió y qué limitaciones se observaron. Solo entonces decidir si se mantiene como hipótesis, se convierte en recomendación estable o se descarta.
5. Convertirla en compuerta únicamente cuando corresponda.
   
   Para bloquear una fase debe existir una condición comprobable o una aprobación explícita. Tiene que estar claro qué constituye el cumplimiento y qué evidencia permite continuar.
No haría que una técnica necesite validación experimental para ser incorporada: algunas son buenas recomendaciones editoriales o decisiones de diseño razonables. Lo que sí exigiría es que el grado de certeza declarado nunca supere la evidencia disponible.
5. Diferencia entre una recomendación y una compuerta real
Esta es la separación más importante para tu proyecto.

Por ejemplo, «usa microacciones físicas para expresar emociones» es una recomendación editorial. No existe un medidor universal que demuestre que la actuación resultante es emocionalmente correcta.

En cambio, «el guion y el storyboard deben contener los mismos bloques y timecodes antes de aprobar la fase» sí puede transformarse en una compuerta técnica. Tu verificador de contrato ya comprueba parte de ese tipo de invariantes.

Para una compuerta obligatoria establecería siempre estos cuatro campos:
- Condición de aceptación: qué tiene que cumplirse.
- Verificador: qué persona, script o herramienta lo comprobará.
- Evidencia: dónde queda el resultado de la comprobación.
- Excepción: quién puede autorizarla y cómo se registra.
Si el criterio es subjetivo, puedes tener una aprobación editorial humana como compuerta; no necesitas fingir que una máquina puede verificarlo objetivamente.
6. Cómo empezaría sin crear una carga de mantenimiento excesiva
Haría una primera implantación pequeña:
1. Definir las tres dimensiones y sus transiciones en gobernanza-evidencia.md.
2. Registrar únicamente las técnicas recientes de mayor impacto en registro-tecnicas.md, en vez de migrar de golpe todas las reglas históricas.
3. Aplicar las etiquetas a unas pocas técnicas representativas: una recomendación cinematográfica, una heurística experimental de IA y una compuerta determinista de producción.
4. Añadir al estándar de agentes la obligación de consultar el registro cuando introduzcan o eleven la autoridad de una técnica.
5. Incorporar un control automático al CI para comprobar identificadores, campos obligatorios, enlaces internos y requisitos de las compuertas. La automatización comprobaría la estructura, no decidiría por sí sola si una teoría editorial es verdadera.
Mi recomendación final es que no empieces con una migración masiva ni con una base de datos compleja. Empieza con el reglamento y un registro reducido; pruébalo en nuevas técnicas durante una ronda de producción. Cuando veas que no introduce demasiada fricción y que evita confusiones reales, extiéndelo a las reglas antiguas.

Así podrás tener un framework que no solo dice qué debe hacer un agente, sino que también permite saber por qué se lo pide, hasta dónde confía en esa instrucción y qué tendría que pasar para convertirla en un control obligatorio.


C. Has reforzado los controles estructurales, pero falta demostrar la eficacia del método completo
El repositorio dispone de un verificador de contrato, una batería de pruebas y un workflow de GitHub Actions.

Estos controles comprueban aspectos concretos, como la presencia de los siete documentos del vídeo, los estados permitidos, la correspondencia de bloques y tiempos entre guion y storyboard, y la coherencia del catálogo de herramientas.

Eso es positivo. Sin embargo, no demuestra que todas las nuevas directrices creativas mejoren los resultados ni que un agente sea capaz de ejecutar el proceso completo sin saltarse controles.

Tampoco he podido confirmar el resultado de una ejecución de CI correspondiente al último commit; he revisado la configuración y los archivos, no ejecutado las pruebas.

El siguiente paso importante sería producir un vídeo piloto completo usando el framework: desde la selección de la idea hasta el master final, registrando qué reglas se siguieron, cuáles requirieron intervención humana, qué fallos aparecieron y cuánto costó corregirlos.


D. Quedan pequeños problemas de consistencia documental
En el estado actual del rol de guion, por ejemplo, aparece un apartado denominado «Fórmula de la Intro en 3 Pasos» que incluye cinco elementos. También hay dos subapartados consecutivos numerados como «4» en la arquitectura del guion.

Son detalles menores, pero una metodología que pretende servir como contrato para agentes debe cuidar sus propias referencias, numeración y títulos. Cuanto más grande sea el framework, más importante es detectar automáticamente este tipo de deriva documental.
