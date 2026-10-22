# Revisión externa 4 — Disposición por hallazgo

**Fuente:** `apuntes del segundo amigo.md` (commit `f523833`, transcripción de video sobre generación de video IA + prompt de personaje). Análisis completo en `revision-externa-4-2026-10-22.md`.
**Restricción del creador:** el aporte no debe centrarse en Higgsfield/Seedance; son una de tantas herramientas, negociables en el momento.
**Trazabilidad:** esta revisión evalúa el contenido ACTUAL del archivo (tutorial de generación audiovisual). La `revision-externa-3` evalúa una versión HISTÓRICA (algoritmo de YouTube).
**Veredicto general:** valor práctico real; se incorpora como método agnóstico de herramientas (referencias, consistencia, pruebas preliminares, QC), no como dependencia de proveedor.

## Disposición resumida

| Estado | Significado |
| :--- | :--- |
| ✅ **ADOPTADO** | Se incorporó al framework, agnóstico de proveedor. |
| 🟡 **ADAPTADO** | Se corrigió el framing de la fuente y quedó como principio o heurística. |
| ❌ **RECHAZADO** | Se revisó y se decide no aplicarlo, con motivo. |
| 🔵 **PENDIENTE** | Idea válida para un proyecto concreto, no se ejecuta ahora. |

---

## 1. Política general de selección de herramientas

✅ **ADOPTADO** en `AGENTS.md` §02.4 (nueva subsección). Herramientas/modelos/plataformas del repo = ejemplos, no dependencias. El agente parte de lo que el creador tiene; puede proponer alternativas con argumentos (mejora/pérdida/costo/limitaciones) y el creador decide; **cambio unilateral prohibido**. Comprobar la capacidad de la función antes de proponer un flujo dependiente de ella. **Nunca** asumir gratuidad de modos "Draft/Preview/Borrador". **Prohibida** la afirmación de que nombrar un modelo "carga su base de datos". Las comparaciones informales de modelos son hipótesis, no reglas.

## 2. Referencia maestra del personaje

✅ **ADOPTADO** como **procedimiento opcional** en `03-storyboard-y-edicion.md` (ambas copias), aplicable solo cuando la continuidad visual sea importante. Con las 3 correcciones del análisis: no inventar el cuerpo que la referencia no muestra; separar el documento de referencia de la imagen que se anima (la lámina de 2 paneles documenta, no anima); el grano no es requisito de la referencia maestra. La lámina de dos paneles se mantiene como **opción práctica para documentar**, no como requisito universal.

## 3. Referencias de escenario e iluminación

✅ **ADOPTADO** en el mismo bloque de referencias de continuidad de `03-storyboard-y-edicion.md`. Mejora sobre lo existente: los 4 anclajes §1 (medio, paleta, iluminación, óptica) pasan de texto dentro del prompt a **archivos de referencia concretos** cuando la continuidad lo justifique.

## 4. Vigilar exceso de textura y artefactos

🟡 **ADAPTADO.** Se incorpora como control de **inspección del clip real** (no de la imagen de referencia): distinguir ruido artificial de textura natural; **no** se ordena que todo sea liso (una piel sin textura se ve plástica). La comprobación se hace sobre el clip generado y su integración en el montaje. La afirmación "el video exagera la textura" queda como **hipótesis de trabajo** (observación de un flujo concreto), no como ley de todos los modelos.

## 5. Pruebas preliminares / modo borrador

✅ **ADOPTADO** como regla de validación antes de generar recursos definitivos: comprobar si conviene una prueba (encuadre, acción, movimiento, identidad, continuidad), **registrar el coste real** y **no presuponer gratuidad**. Si la herramienta no ofrece modo económico, valorar alternativa (prueba más pequeña, imagen fija, clip simplificado o validación manual). En `04-registro-recursos.md` (ambas copias) se registran el plan, el costo real y la condición de uso verificada.

## 6. Secuencia de varias tomas vs. planos separados

🟡 **ADAPTADO.** Se permite **ambas vías**; el agente recomienda según continuidad, control por plano, coste y capacidades comprobadas de la herramienta. No se impone la generación multi-toma en un solo prompt (el video la presentaba como preferida) ni la generación separada (que da más control pero más costo/orquestación).

## 7. "Seedream 5.0 > GPT Image 2.5"

❌ **RECHAZADO** como regla. Conclusión del autor a partir de sus pruebas en un flujo concreto; no basta para declarar un ganador universal. Queda documentado en el análisis como observación de su flujo, sin peso en el framework.

## 8. "Nombrar el modelo en el prompt carga su base de datos"

❌ **RECHAZADO.** Explicación incorrecta o engañosa. Nombrar el modelo puede orientar al LLM, pero no carga una base de datos ni garantiza que conozca instrucciones recientes. La prohibición queda codificada en `AGENTS.md` §02.4.

## 9. "La plantilla de personaje siempre debe generar cuerpo completo + primer plano"

🟡 **ADAPTADO.** Opción práctica para personajes recurrentes, no requisito universal. El procedimiento opcional de `03-storyboard-y-edicion.md` permite la lámina de 2 paneles, una sola vista, o varias referencias separadas según la herramienta.

## 10. Ejemplos de proveedores fijos en las plantillas

✅ **ADOPTADO.** En `03-storyboard-y-edicion.md` y `04-registro-recursos.md` (ambas copias de cada una) los proveedores fijos (Google Flow, Coverr, Midjourney, Flux, EffectCraft, ElevenLabs) pasan de ser el flujo a **ejemplos ilustrativos** con campos genéricos. Los nombres concretos quedan solo donde ayudan a ilustrar, no condicionan el flujo.

## 11. Licencias presentadas como verificadas en la plantilla 04

✅ **ADOPTADO.** Los ejemplos de `04-registro-recursos.md` (Coverr "Comercial permitido", Midjourney "Comercial permitido", ElevenLabs "Sí") presentaban permisos como **confirmados**. Se reemplazan por **marcadores pendientes de verificación** (`[VERIFICAR]` / `[Pendiente]`) o valores ilustrativos explícitos. Una plantilla no debe inducir al agente a dar por autorizado un recurso no investigado.

## 12. Registro de referencias reutilizables

✅ **ADOPTADO.** Nueva sección final opcional en `04-registro-recursos.md` (ambas copias): ID de referencia (REF-01), archivo/ruta, función (personaje/escenario/producto/iluminación/estilo), elementos invariantes, variaciones permitidas, procedencia y permisos, escenas relacionadas. Permite repetir una generación y saber qué produjo cada resultado.

## 13. Trazabilidad de modelo/versión/prompt/referencias en activos de IA

✅ **ADOPTADO.** En `04-registro-recursos.md` §2 se refuerzan los campos: **archivo de referencia de entrada** y **condiciones de uso verificadas** como campos distintos de "modelo + versión + prompt + parámetros".

## 14. Trazabilidad de las revisiones sobre el archivo

✅ **RESUELTO.** La fuente se conserva inmutable en `_framework/referencias/apuntes-segundo-amigo.md` (movida desde la raíz en el complemento de esta revisión; contenido idéntico al commit `f523833`). Esta revisión (`revision-externa-4-*`) evalúa su contenido actual. La `revision-externa-3-*` evalúa la versión histórica anterior (algoritmo de YouTube). Los documentos de análisis del primer amigo quedan archivados verbatim como `revision-externa-4-originales-senalamientos-2026-10-22.md`, `revision-externa-4-originales-segunda-opinion-2026-10-22.md` y, del complemento, `revision-externa-4-originales-complemento-2026-10-22.md`.

## 15. Integración con plataforma concreta (Higgsfield, Seedance, Seedream, Google Flow, Midjourney)

🔵 **PENDIENTE — decisión explícita de NO hacer.** No se creó subsistema de generación de personajes ni integración con ninguna plataforma. La oficina enseña al agente a razonar sobre referencias, continuidad, costes y calidad; el producto concreto se decide después, según cada proyecto y las herramientas disponibles del creador.

---

## Complemento (C1–C5) — señalamientos adicionales del primer amigo (2026-10-22)

*Fuente: `revision-externa-4-originales-complemento-2026-10-22.md` (archivado verbatim). Son refinamientos de la propuesta, no un subsistema nuevo. Se aplican sobre `AGENTS.md` §02.4 y `03-storyboard-y-edicion.md` (ambas copias).*

### C1. Referencias compuestas: solo si se comprobó su interpretación
🟡 **ADAPTADO.** `03` §1.1 ya advertía el riesgo de la lámina partida; se refuerza: usar vistas separadas cuando la herramienta lo permita; usar una lámina compuesta **solo si se comprobó** que el modelo la interpreta como referencia y no como escena. No asumir que todas las herramientas interpretan igual las referencias múltiples.

### C2. Textura y acabado como parámetros estéticos del proyecto
✅ **ADOPTADO.** En `03` §1.1: piel lisa, grano cinematográfico, nitidez máxima o eliminación de textura **nunca** son valores universales de una referencia maestra: son parámetros estéticos elegidos según el proyecto, sin contradecir el objetivo de la generación.

### C3. Ciclo de corrección dirigida ante defectos
✅ **ADOPTADO.** En `03` §3.1: ante un resultado defectuoso, identificar el defecto principal, localizar su origen (referencia / prompt / parámetros / método), corregir solo ese elemento, reevaluar y registrar el aprendizaje. Prohibidas las regeneraciones indiscriminadas sin hipótesis de mejora.

### C4. Comparación de modelos por pruebas controladas, solo cuando importa
✅ **ADOPTADO.** En `03` §3.1: si la elección del modelo es material para el proyecto, comparar con una tarea representativa y criterios comparables; registrar versión, parámetros, referencias, coste y limitaciones; evaluar sobre el objetivo y el clip final integrado (no sobre una captura seleccionada). No convertir una prueba aislada en superioridad universal y no exigir comparaciones cuando la decisión no es material.

### C5. Especificación creativa portable
✅ **ADOPTADO.** En `AGENTS.md` §02.4 (principio nuevo) y `03` §3: la intención del plano (acción, sujeto, elementos invariantes, cambios permitidos, cámara, duración, resultado esperado) se describe de forma **portable**, independiente de la sintaxis de la herramienta; el agente adapta después la especificación a la plataforma elegida usando solo funciones comprobadas. El conocimiento no queda atrapado en prompts de un producto concreto.
