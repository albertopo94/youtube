He profundizado en el código de Gentle-Shell y he contrastado sus mecanismos con las plantillas y los verificadores actuales de tu repositorio youtube. Con eso ya podemos pasar de la analogía a una propuesta de arquitectura bastante concreta.

He preparado además un documento técnico que puedes entregar a un agente de programación para convertirlo en un PRD e implementarlo por etapas.

1. Qué debemos aprender realmente de Gentle-Shell
Hay un descubrimiento importante: la fase que muestra Gentle-Shell en su interfaz no es, por sí sola, una autorización para ejecutar operaciones.

Su módulo odd-phase.ts mantiene una señal de fase para la etiqueta visual del agente. En cambio, el código de child-safety.ts bloquea determinadas llamadas a herramientas antes de ejecutarlas, y verifier-admission.ts comprueba condiciones concretas antes de permitir el lanzamiento de un verificador.

Son dos problemas distintos:
- Saber en qué fase está trabajando el agente es seguimiento.
- Impedir que realice una operación incompatible con el estado actual es control de ejecución.
También encontré una advertencia útil. Gentle-Shell documenta un intento histórico de limitar las escrituras a varios archivos, pero el test actual de main dice expresamente que una segunda escritura directa no debe rechazarse solo por el historial de escrituras de la sesión. No debemos copiar aquella regla como si fuera su arquitectura vigente. (Test actual, documentación del intento anterior).

La lección es que no debemos imponer restricciones arbitrarias al agente. Debemos comprobar invariantes reales de producción audiovisual.
2. La arquitectura que propongo
1. Pi: runtime
Recibe las peticiones del modelo y ejecuta las herramientas.


2. Control de ejecución
Comprueba fase, permisos, rutas, requisitos previos y autorizaciones antes de permitir cada operación sensible.


3A. Verificación

Archivos, IDs, timecodes, estructura y estado del contrato.


3B. Medición

FFprobe/FFmpeg: streams, sonoridad, silencios, frames negros y otros controles definidos.




4. Decisión y evidencia
Resultado verificable, informe, huellas de archivos y aprobación humana cuando corresponda.


Pi ya ofrece los puntos de integración necesarios: before_agent_start permite preparar el contexto y la selección de herramientas, y tool_call permite bloquear una llamada antes de ejecutarla. Su documentación aclara, sin embargo, que las extensiones se ejecutan con los permisos del proceso de Pi. (Documentación oficial de extensiones).

Eso nos permite construir controles sólidos frente a los errores y atajos habituales del agente, pero no debemos confundir una extensión con un aislamiento absoluto del sistema operativo.
3. Cómo impedir que el agente se autoapruebe
La decisión más importante es separar el estado que el modelo puede proponer del estado que tiene autoridad sobre la producción.

Por ejemplo, una fase podría seguir este recorrido:
1
EN_CURSO

El agente trabaja en el entregable de la fase.



2
PENDIENTE_APROBACION

Los controles automáticos obligatorios han pasado y existe evidencia identificable.



3
APROBADO

El creador ha confirmado explícitamente la aprobación mediante una acción de usuario en Pi.



!
Aprobación obsoleta

Un archivo aprobado ha cambiado; su aprobación anterior deja de ser válida hasta verificarlo de nuevo.



La aprobación tendría que quedar vinculada a la versión concreta de los archivos aprobados, sus huellas SHA-256, los resultados de las comprobaciones y la identidad del creador que confirmó la acción.

Así evitamos una situación peligrosa: el agente obtiene tu aprobación del guion, lo modifica después y continúa como si siguiera trabajando sobre el mismo guion aprobado.

La aprobación no debe ser una herramienta genérica que el modelo pueda llamar con estado = APROBADO. Debe existir una acción separada para el creador. El registro puede mantenerse mediante la extensión y mostrarse en tu archivo 00-estado-produccion.md, pero no confiar exclusivamente en una casilla Markdown modificable.
4. La advertencia técnica más importante: la vía alternativa
Imagina que estamos en una fase donde no se permite editar el guion. youtube-shell retira la herramienta de escritura de las herramientas disponibles y bloquea las llamadas incompatibles en tool_call.

Eso constituye una buena barrera. Pero ¿qué ocurre si el agente conserva acceso a bash y ejecuta un programa que modifica directamente el guion? ¿Y si utiliza otra herramienta MCP capaz de escribir archivos?

Por eso tenemos que aplicar tres medidas:

Primera: reducir las herramientas disponibles según la fase.

Segunda: interceptar las operaciones sensibles y verificar sus capacidades, rutas de destino y requisitos en tiempo de ejecución. Las herramientas MCP no deben quedar exentas por ser MCP.

Tercera: evitar que el agente disponga de una vía genérica que permita saltarse la política. Para v0.1 recomiendo no ofrecer shell arbitrario en el flujo de producción controlado y usar herramientas propias para las operaciones necesarias, como la medición audiovisual.

No basta con inspeccionar cadenas de comandos mediante expresiones regulares y declarar que son seguras. El propio guard de comandos de Gentle-Shell reconoce expresamente que no es un intérprete completo de shell ni un sandbox.

Más adelante podremos estudiar aislamiento a nivel del sistema operativo. Para el primer MVP, lo razonable es controlar las herramientas que realmente exponemos y demostrar con tests que las operaciones bloqueadas no llegan a producir efectos.
5. Qué construir primero en youtube-shell
No empezaría por copiar la persona, las skills o la interfaz de Gentle-Shell. Empezaría por cuatro piezas pequeñas.
Prioridad	Componente	Qué tiene que demostrar
1	Motor de estados	Impide transiciones inválidas y detecta aprobaciones obsoletas.
2	Controlador de operaciones de Pi	Bloquea las llamadas incompatibles antes de ejecutarlas.
3	Verificador del contrato	Comprueba que existen los entregables y que sus referencias y estructuras son coherentes.
4	Medidor del master	Compara el archivo real con una hoja de aceptación definida previamente y devuelve resultados estructurados.
Un detalle que he encontrado en tu verificador actual
Tu check-contrato.sh es un buen punto de partida, pero todavía no debería convertirse sin cambios en el árbitro de las transiciones.

He detectado dos defectos concretos en la versión inspeccionada:
- La sección que verifica los estados busca una línea Fase activa, mientras que la plantilla actual contiene Estado actual y una tabla de estados por fase. El script puede declarar que el estado es válido sin haberlo comprobado realmente.
- La ausencia de un bloque del guion en el storyboard se registra como advertencia, no como error. Por tanto, el script podría terminar con código de salida 0 aunque falte esa correspondencia.
Son precisamente los problemas que queremos eliminar: un verificador no puede dar luz verde simplemente porque no sabe demostrar que algo está mal. Incluyo ambos defectos, con la corrección y sus tests de regresión pendientes, en la guía técnica.
6. El master piloto y cómo probar el sistema sin engañarnos
La medición archivada del piloto ya proporciona una buena fixture de prueba. Entre otros datos, registra una única pista AAC, sonoridad de −17,5 LUFS, true peak de −7,3 dBTP y ausencia de fotogramas negros y silencios superiores a un segundo. El informe aclara también que no se ejercitaron música, SFX, mezcla de tres pistas ni ducking. (Informe original).

Hay una distinción que debemos mantener: el piloto sirve como caso de prueba negativo para una hoja de aceptación que exija explícitamente las propiedades que faltan; no demuestra retroactivamente que incumpliera reglas que se definieron después de renderizarlo.

La herramienta debería producir resultados como PASS, FAIL, WARN o NOT_EVALUABLE. Por ejemplo, contar un solo stream de audio no demuestra necesariamente cuántas pistas había en la línea de tiempo del editor, y la ausencia de música significa que tampoco podemos afirmar que el ducking falló: sencillamente, ese comportamiento no se puso a prueba.

Los estándares que sean obligatorios deben quedar definidos antes del render. Las excepciones deben justificarse y aprobarse, no inventarse después al conocer el resultado.
7. El orden de trabajo que recomiendo
La guía que te adjunto desarrolla cada pieza, incluye la máquina de estados propuesta, la política de herramientas, los casos de prueba y un encargo listo para delegar a un agente.

El orden que seguiría es:
1. Alinear las fases reales 01–07 con los documentos canónicos 00–06, sin confundir identificadores de archivos con fases del proceso.
2. Crear el motor de estados independiente de Pi y probar transiciones válidas e inválidas.
3. Incorporar las aprobaciones humanas y la evidencia vinculada a huellas de archivos.
4. Integrar los controles en Pi y comprobar que las llamadas denegadas no modifican nada.
5. Corregir y testar el verificador del contrato.
6. Implementar la medición del master con una hoja de aceptación explícita.
7. Probar el conjunto con fixtures válidas e inválidas y conectar FilmCraft MCP después de inventariar sus operaciones reales.
8. Empaquetarlo cuando el control básico funcione.
Mi recomendación es avanzar con este diseño como base de youtube-shell v0.1. La pieza central no es tener una IA que recuerde mejor tu metodología; es un runtime que pueda demostrar por qué permite una operación, por qué la bloquea y qué evidencia justifica el resultado.
