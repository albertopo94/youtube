# Revisión externa 4 — Análisis: generación audiovisual con IA (agnóstico de herramientas)

**Fuente:** `_framework/referencias/apuntes-segundo-amigo.md` (commit `f523833`; la fuente se archivó allí desde la raíz para este complemento. Transcripción de video de 17 min sobre "Cómo hacer videos con IA que NO parecen IA" + prompt plantilla de personaje).
**Análisis por el primer amigo:** `revision-externa-4-originales-senalamientos-2026-10-22.md` (primera pasada) y `revision-externa-4-originales-segunda-opinion-2026-10-22.md` (segunda pasada tras la restricción del creador).
**Restricción del creador (decisión que condiciona esta revisión):** *"No enfoquemos o centremos el aporte a la herramienta Higgsfield o Seedance, esas son solo una de tantas, y puede que el usuario tenga otras, se puede debatir o convenzer en el momento."*
**Trazabilidad:** esta revisión evalúa el **contenido actual** del archivo (tutorial de generación audiovisual). La `revision-externa-3-2026-10-22.md` corresponde a una **versión histórica** del archivo (contenido sobre el algoritmo de YouTube) y sigue vigente para esa versión.

---

## 1. Limitaciones de la fuente

- **Transcripción generada por ASR** que deforma los nombres de herramientas: "Sidans 2.5" = Seedance 2.5, "Cdream 5.0 Pro" = Seedream 5.0 Pro, "Higfield" = Higgsfield, "Chaji GPT" = ChatGPT, "Somburst" = modelo de imagen no identificable con certeza.
- **Nombres verificados contra documentación pública** (verificación del creador, 2026-10-22): Seedance 2.0 (ByteDance, feb-2026) y Seedance 2.5 (jul-2026, hasta 30 s, referencias multimodales); Seedream 5.0 Pro (ByteDance); OpenAI Images 2.5 (según el primer amigo, sep-2026, mejor conservación de personas en imágenes de referencia). Los nombres sí corresponden a productos reales, pero **no se puede deducir de las capacidades oficiales que un modelo gane siempre en un caso particular**.
- El video incluye marketing integrado (comunidad gratuita, masterclass de pago) que no genera acción.

## 2. Consejos aprovechables

### A. Referencia maestra del personaje — RECOMENDABLE
Preparar una referencia con rostro, cuerpo, ropa y rasgos que deben mantenerse es buena práctica cuando se reutiliza el mismo personaje: da consistencia entre tomas y al agente un recurso identificable. La lámina de dos paneles sirve para **documentar** al personaje, pero no siempre es el mejor archivo para pasar directamente al generador de video (ver §3.2).

### B. Referencias de escenario e iluminación — RECOMENDABLE
Definir antes de los planos definitivos la localización, dirección de luz, paleta, punto de vista y aspecto visual reduce diferencias entre tomas. Encaja con los 4 anclajes ya existentes en `03-storyboard-y-edicion.md` §1; la mejora es **convertir esos anclajes en archivos de referencia concretos**, no solo texto dentro de un prompt.

### C. Vigilar exceso de textura y artefactos — ÚTIL, CON MATICES
Una imagen con detalles artificiales, ruido excesivo o irregularidades visibles puede producir un video en el que esos defectos sean más evidentes. **Pero no debe convertirse en "cuanto más lisa, más realista"**: una piel sin textura también se ve plástica. El objetivo es eliminar artefactos artificiales conservando detalles naturales, evaluando el resultado **después de animarlo**. La explicación del video es una observación de su flujo concreto; no demuestra que todos los modelos amplifiquen los defectos del mismo modo.

### D. Borradores antes de la versión final — MUY RECOMENDABLE
La idea más importante: validar primero movimiento, composición y continuidad y reservar la generación de mayor calidad para las opciones que merecen la pena. Corrección: el borrador (ej. 480p en Higgsfield para Seedance 2.5) **cuesta menos créditos, pero no es necesariamente gratuito**.

## 3. Correcciones al prompt de personaje

El prompt de plantilla está bien construido (composición, fondo neutro, iluminación, rasgos a conservar, cambios permitidos). Se adopta como **punto de partida** con tres correcciones:

1. **No inventar el cuerpo que la referencia no muestra.** El prompt pide preservar proporciones corporales y ropa, pero si el input es solo una foto de cara, no hay información fiable. Incorporar referencia de cuerpo completo cuando sea posible.
2. **Separar el documento de referencia de la imagen que se anima.** Un generador de video puede interpretar la división de dos paneles como parte de la escena (dos personajes o composición partida). Para generar, usar vistas por separado cuando la plataforma admita varias referencias.
3. **El grano no debe ser requisito de la referencia maestra.** El prompt pide poros/imperfecciones naturales (correcto) y además "subtle film grain" (contradice la intención de reducir ruido que se traslada al video). El grano es una decisión estética posterior.

## 4. Afirmaciones que NO se convierten en reglas

| Afirmación del video | Evaluación |
| :--- | :--- |
| "Seedream 5.0 produce mejores imágenes que GPT Image 2.5 para este caso" | Conclusión del autor a partir de sus pruebas; no basta para declarar un ganador universal. |
| "Un exceso de textura será exagerado por el video" | Hipótesis útil para probar, no comportamiento garantizado de todos los modelos. |
| "Conviene pedir varios planos y ángulos en un solo prompt" | Puede funcionar, pero generar cada plano por separado permite más control del montaje y de los tiempos. Ambas vías son válidas. |
| "Nombrar el modelo hace que el LLM cargue su base de datos" | **Explicación incorrecta o engañosa.** Nombrar el modelo puede orientar al LLM, pero no carga una base de datos ni garantiza que conozca instrucciones recientes. |
| "La plantilla siempre debe generar cuerpo completo + primer plano" | Opción práctica para personajes recurrentes, no requisito universal. |

## 5. Decisión de integración (según restricción del creador)

Se incorpora como **método audiovisual agnóstico de herramientas**: principios generales (referencias, consistencia entre planos, pruebas preliminares, control de calidad); los nombres de producto quedan como ejemplos, nunca como dependencias.

**Archivos modificados:**
1. `AGENTS.md` §02.4 — Política general de selección de herramientas (nueva); §02.5 renumerado; §08.2 ficha de prompts alineada al método agnóstico.
2. `03-storyboard-y-edicion.md` (ambas copias) — paquete opcional de referencias de continuidad, pruebas preliminares con coste real, decisión secuencia vs. planos separados, inspección del clip real; ejemplos de proveedores generalizados.
3. `04-registro-recursos.md` (ambas copias) — trazabilidad de modelo/versión/prompt/referencias, licencias como marcadores pendientes de verificación, sección final de referencias reutilizables.

**No se hizo (decisión explícita):**
- No se creó un subsistema de generación de personajes ni una integración con ninguna plataforma.
- No se catalogaron Seedance/Seedream/GPT Image en `herramientas-y-apis.md` como capacidad obligatoria; se mencionan solo como ejemplos ilustrativos.
- La fuente se conserva intacta en `_framework/referencias/apuntes-segundo-amigo.md` (movida desde la raíz en el complemento de esta revisión; contenido idéntico al commit `f523833`).
