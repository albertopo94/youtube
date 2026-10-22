1. Evitar que una lámina de referencias se convierta en parte de la escena

La primera recomendación advertía de que una imagen con el personaje de cuerpo completo y un primer plano en dos paneles puede ser interpretada por un generador de vídeo como una composición partida que debe animar, en lugar de como dos vistas de referencia.

La última instrucción sí pide un paquete de referencias, pero no destaca suficientemente este riesgo.

Qué añadir: usar las referencias separadas cuando convenga y la herramienta lo permita; usar una lámina compuesta solo cuando se haya comprobado que el modelo la interpreta correctamente.




2. No confundir una imagen limpia con una imagen sin textura

La primera recomendación identificaba una contradicción concreta del prompt original: solicita conservar imperfecciones naturales, pero también pide grano cinematográfico. Si el objetivo es evitar que aparezcan artefactos artificiales al animar, añadir grano no siempre ayuda.

La última instrucción incluye el control de textura frente a ruido, pero no corrige esta contradicción en el propio diseño de las referencias.

Qué añadir: el grano, la nitidez, la textura de piel y el nivel de retoque deben ser parámetros estéticos elegidos según el proyecto, no valores obligatorios de toda referencia maestra.




3. Crear un ciclo de corrección dirigida

La última propuesta contempla inspeccionar el resultado, pero no desarrolla tanto qué debe hacer el agente cuando encuentra un defecto.

Qué añadir: identificar el defecto principal, determinar si procede de la referencia, el prompt, los parámetros o la herramienta, modificar ese elemento y volver a probar. Evitar regenerar todo sin una hipótesis de mejora. Registrar el resultado de cada iteración que aporte información.




4. Comparar modelos mediante pruebas controladas cuando la elección importe

La última instrucción dice que no deben aceptarse comparaciones informales como pruebas universales. Falta concretar cómo realizar una comparación útil.

Qué añadir: utilizar una tarea representativa y criterios comparables; registrar el modelo y la versión, los parámetros disponibles, las referencias y el coste. Evaluar los resultados en función del objetivo y del clip final, no solo por una captura seleccionada. No siempre hace falta comparar varios modelos: solo hacerlo cuando esa decisión pueda mejorar significativamente el proyecto.




5. Separar el objetivo creativo del formato específico de cada herramienta

Esta es una mejora de diseño importante para tu framework. El objetivo —qué debe ocurrir, qué debe mantenerse y qué resultado se busca— debería poder describirse de una forma portable. Después, el agente adapta esa especificación a la sintaxis, las referencias y los controles de la herramienta elegida.

Así evitas que todo el conocimiento quede atrapado en prompts creados para un producto concreto y facilitas cambiar de herramienta sin rehacer el razonamiento desde cero.



Texto adicional para tu agente de programación
No necesitas reemplazar la última instrucción. Añádele este bloque, dentro de los apartados de cambios en 03-storyboard-y-edicion.md y de verificación final:
### Matices adicionales que deben incorporarse

- **Referencias compuestas:** tener en cuenta que una lámina con varias vistas puede ser interpretada por un generador como parte de la escena, no como documentación del personaje. Usar vistas separadas cuando ofrezcan más control y comprobar el comportamiento del método elegido. No asumir que todas las herramientas interpretan igual las referencias múltiples.
- **Textura y tratamiento estético:** no imponer piel lisa, grano cinematográfico, nitidez máxima ni eliminación de textura como valores universales. Distinguir textura natural de artefactos y permitir que el acabado se ajuste al estilo aprobado. Evitar contradicciones entre los requisitos de la referencia y el objetivo de la generación.
- **Ciclo de corrección dirigida:** cuando un resultado falle, identificar primero el defecto más importante y su posible origen; ajustar la referencia, el prompt, los parámetros o el método correspondiente; volver a evaluar y registrar el aprendizaje relevante. Evitar regeneraciones indiscriminadas sin un criterio de mejora.
- **Comparación de modelos:** si la elección del modelo es material para el proyecto, realizar una prueba representativa con criterios comparables. Registrar las versiones y parámetros disponibles, las referencias, los costes y las limitaciones. Evaluar el resultado según el objetivo y su integración en el montaje. No presentar una prueba aislada como superioridad universal ni exigir comparaciones innecesarias.
- **Especificación portable:** separar la intención creativa y las restricciones del plano (acción, sujeto, elementos invariantes, cambios permitidos, cámara, duración y resultado esperado) de la sintaxis específica de una plataforma. Adaptar después la instrucción a la herramienta elegida, utilizando únicamente las funciones que admita y cuya disponibilidad se haya comprobado.

### Comprobación adicional de aceptación

Confirmar que el procedimiento contempla referencias separadas o compuestas según convenga, iteración dirigida, evaluación del clip integrado en el montaje y adaptación de una especificación creativa portable a herramientas diferentes. No convertir estos principios en requisitos de complejidad innecesaria para vídeos que no los necesiten.

Mi conclusión: la última recomendación conserva la dirección correcta. Estos cinco añadidos mejoran el procedimiento porque cubren no solo cómo preparar y validar recursos de IA, sino también cómo diagnosticar fallos, aprender de las pruebas y trasladar el trabajo entre herramientas. Son refinamientos de la propuesta, no motivos para crear un subsistema nuevo.
