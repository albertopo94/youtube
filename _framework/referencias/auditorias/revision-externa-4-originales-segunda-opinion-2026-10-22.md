Lo plantearé como un método audiovisual agnóstico de herramientas: las referencias, la consistencia entre planos, las pruebas de borrador y los controles de calidad serán principios generales; Higgsfield, Seedance, Seedream o GPT Image quedarán como ejemplos del tutorial, nunca como dependencias del sistema. También distinguiré lo que debe seguirse siempre de lo que el agente puede proponer, debatir y justificar según las herramientas y el objetivo del usuario.

1. AGENTS.md: establecer la política general de herramientas
Archivo: AGENTS.md

Dónde: sección 02. Gobernanza y Niveles de Autonomía, después de «Confirmación Obligatoria de Operaciones Sensibles» y antes de «Filtro de Comunicación Ejecutiva».

Añadir una subsección que establezca estas reglas:
- Las herramientas, modelos y plataformas mencionados en el repositorio son ejemplos, no dependencias obligatorias.
- El agente debe partir de las herramientas que el creador tiene disponibles y prefiere.
- Puede proponer otra herramienta si existe una ventaja relevante, pero debe explicar qué mejora, qué pierde, qué cuesta y qué limitaciones tiene.
- El creador puede debatir esa recomendación y decidir si acepta el cambio. El agente no debe cambiar de herramienta unilateralmente.
- Antes de proponer un flujo dependiente de una función específica, debe comprobar si la herramienta elegida ofrece esa capacidad o si existe un procedimiento equivalente.
- Nunca debe asumir que una función llamada «Draft», «Preview» o «Borrador» es gratuita.
- No debe afirmar que escribir el nombre de un modelo en un prompt le permite a otro LLM cargar automáticamente su documentación actual o conocer sus capacidades privadas.
Esto es más importante que simplemente quitar nombres comerciales de las plantillas: define cómo debe razonar el agente cuando aparezcan nuevas herramientas.
2. 03-storyboard-y-edicion.md: incorporar el método de producción
Archivo: 03-storyboard-y-edicion.md

Aquí incorporaría la mayor parte de las ideas útiles de tu amigo.

A. Referencias de continuidad

Añadir un bloque opcional para registrar referencias del personaje, escenario, producto, iluminación y estilo. Debe indicar qué características se conservan y cuáles pueden variar entre planos.

No exigirlo en vídeos que no necesitan continuidad. Una foto del rostro no permite conocer con precisión un cuerpo que no aparece en ella.



B. Pruebas preliminares

Antes de generar todos los recursos definitivos, comprobar si conviene realizar una prueba para validar encuadre, acción, movimiento, identidad y continuidad. Registrar el coste real de esa prueba y no presuponer que sea gratuita.

Si la herramienta disponible no ofrece un modo económico, el agente debe valorar una alternativa: una prueba más pequeña, una imagen fija, un clip simplificado o una validación manual.



C. Decisión sobre cómo generar los planos

Permitir tanto la generación de una secuencia con varias tomas como la generación de planos separados. El agente debe recomendar una opción en función de la continuidad, el control de cada plano, el coste y las capacidades comprobadas de las herramientas disponibles.



D. Inspección del resultado real

Añadir controles para identidad, vestuario, anatomía, movimiento, iluminación, parpadeos y artefactos. Distinguir el ruido artificial de la textura natural; no ordenar que todas las imágenes sean lisas.

La comprobación debe hacerse sobre el clip generado y su integración en el montaje, no solamente sobre la imagen de referencia.



También cambiaría dos elementos actuales de la plantilla:
- En «Ficha de Prompt Obligatoria», sustituir la obligación de indicar siempre una pestaña concreta por la de documentar el método y los parámetros que sean necesarios para ejecutar la tarea en la herramienta elegida.
- En los ejemplos de la tabla, sustituir Google Flow, Coverr y otros proveedores fijos por campos genéricos. Los nombres concretos pueden mantenerse en ejemplos ilustrativos, pero no deben condicionar el flujo.
No reescribiría el resto de la plantilla desde cero ni eliminaría los controles de calidad ya establecidos.
3. 04-registro-recursos.md: registrar referencias y procedencia
Archivo: 04-registro-recursos.md

Dónde: en la sección de activos visuales generados con IA y en una nueva sección final dedicada a referencias reutilizables.

Añadiría campos para registrar la herramienta y el modelo realmente utilizados, su versión cuando se conozca, el prompt empleado, los archivos de referencia, los parámetros disponibles y las condiciones de uso verificadas.

La tabla de referencias tendría campos como estos:
Campo	Qué registrar
ID de referencia	Identificador único, por ejemplo REF-01.
Archivo o ruta	Dónde se encuentra la imagen o el recurso.
Función	Personaje, escenario, producto, iluminación, estilo, etc.
Elementos invariantes	Rasgos que deben permanecer.
Variaciones permitidas	Qué puede cambiar en cada plano.
Procedencia y permisos	Origen del recurso y permisos pertinentes.
Escenas relacionadas	Dónde se utiliza la referencia.
Además, sustituiría los ejemplos que presentan licencias y permisos comerciales como si ya estuvieran comprobados por marcadores pendientes de verificación. Una plantilla no debe inducir al agente a dar por autorizados unos recursos que todavía no ha investigado.
4. Documentar la revisión sin modificar los apuntes originales
Crearía dos documentos nuevos en _framework/referencias/auditorias/:

revision-externa-4-2026-10-22.md: análisis de cada consejo, su utilidad, las limitaciones de la transcripción y los cambios propuestos.

revision-externa-4-disposicion-2026-10-22.md: tabla breve que indique qué se adopta, qué se adapta y qué se rechaza, junto con los archivos en los que se aplica.

Mantendría apuntes del segundo amigo.md como fuente original, sin transformarlo en una especificación del sistema.

5. Instrucción lista para darle a tu agente de programación
Puedes copiarle este texto. Le indica qué debe modificar, dónde y qué debe evitar:
"## Tarea: integrar la revisión de generación audiovisual con IA sin dependencia de proveedores

Trabaja sobre el repositorio `albertopo94/youtube` y la rama `main`.

### Objetivo

Integrar los consejos aprovechables de `apuntes del segundo amigo.md`, actualizado en el commit `f523833`, como un método audiovisual agnóstico de herramientas. Higgsfield, Seedance, Seedream, GPT Image y cualquier otro producto mencionado en la fuente son ejemplos, no dependencias del framework.

### Archivos que debes modificar

1. `AGENTS.md`
   - Añadir en la sección 02 una política general de selección de herramientas.
   - Priorizar las herramientas disponibles y preferidas por el creador.
   - Permitir que el agente defienda y debata alternativas con argumentos verificables, costes y limitaciones, dejando la decisión al creador.
   - Prohibir cambios de herramienta unilaterales y suposiciones no verificadas sobre capacidades, créditos o documentación de modelos.

2. `_framework/plantillas/pipeline-video-template/03-storyboard-y-edicion.md`
   - Incorporar un paquete opcional de referencias de continuidad para personajes, escenarios, productos, iluminación y estilo.
   - Añadir la validación de pruebas preliminares y del coste real antes de generar recursos definitivos.
   - Permitir elegir entre secuencias de varias tomas y planos separados según las capacidades y el control requeridos.
   - Añadir la inspección del clip real para detectar problemas de identidad, movimiento, continuidad, textura y artefactos.
   - Sustituir las herramientas y pestañas fijas de los ejemplos por campos genéricos, conservando ejemplos de proveedores únicamente como ejemplos explícitos.
   - Preservar las reglas y los controles de calidad existentes que no contradigan esta nueva política.

3. `_framework/plantillas/pipeline-video-template/04-registro-recursos.md`
   - Generalizar los ejemplos de proveedores y evitar presentar permisos o licencias como verificados cuando son datos ilustrativos.
   - Añadir trazabilidad de los modelos y parámetros disponibles, los prompts y las referencias de entrada.
   - Incorporar un registro opcional de referencias reutilizables con elementos invariantes, variaciones permitidas, procedencia y escenas relacionadas.

### Auditoría

Crear:
- `_framework/referencias/auditorias/revision-externa-4-2026-10-22.md`
- `_framework/referencias/auditorias/revision-externa-4-disposicion-2026-10-22.md`

El primer documento debe analizar los consejos originales, sus límites y la razón de cada decisión. El segundo debe resumir qué se adopta, adapta o rechaza y dónde se aplica.

### Límites obligatorios

- No modificar `apuntes del segundo amigo.md`.
- No introducir dependencia obligatoria de ningún proveedor o modelo.
- No suponer que los modos preliminares son gratuitos.
- No tratar comparaciones informales de modelos como pruebas universales.
- No declarar capacidades sin evidencia; distinguir la documentación verificada, las pruebas observadas y las hipótesis.
- No reescribir documentos ajenos al alcance sin justificarlo.
- No publicar cambios hasta terminar la revisión y las comprobaciones.

### Verificación final

Comprobar que las tres plantillas mantienen coherencia entre sí; que no quedan referencias a funciones propietarias como requisitos universales; que las licencias no aparecen como confirmadas por defecto; y que el procedimiento se puede seguir usando cualquier herramienta compatible que el creador ya tenga.

Antes de cerrar, presentar un resumen de los cambios realizados, los archivos modificados, las comprobaciones ejecutadas y cualquier inconsistencia previa que haya quedado pendiente. No afirmar que las pruebas se superaron si no se ejecutaron realmente."

Mi recomendación final: primero integra esta política y la metodología reutilizable en las plantillas existentes. No crearía un subsistema de generación de personajes ni una integración específica con ninguna plataforma todavía. La oficina debe enseñar al agente a razonar sobre referencias, continuidad, costes y calidad; el producto concreto se decide después, según cada proyecto y las herramientas disponibles.
