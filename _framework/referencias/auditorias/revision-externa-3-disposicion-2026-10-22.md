# Revisión externa 3 — Disposición por hallazgo

**Fuente:** análisis destilado por el primer amigo y el creador sobre `apuntes del segundo amigo.md` (apuntes del segundo amigo, 2026-10-22; hoy archivada en `_framework/referencias/apuntes-segundo-amigo.md`). El análisis se conserva en `revision-externa-3-2026-10-22.md`.
**Veredicto general del revisor:** *"tu amigo aporta valor principalmente como fuente de hipótesis editoriales y conocimiento práctico de creador, no como fuente fiable de especificaciones internas del algoritmo"*.
**Estado:** archivado con disposición explícita por cada propuesta. De los apuntes se incorporaron **tres** aportaciones al framework; el resto queda como referencia descartable.

## Disposición resumida

| Estado | Significado |
| :--- | :--- |
| ✅ **ADOPTADO** | Se incorporó al framework, con fuentes oficiales y marcado como hipótesis editorial. |
| 🟡 **ADAPTADO** | Se corrigió el wording del revisor y quedó como referencia, no como regla. |
| ❌ **RECHAZADO** | Se revisó y se decide no aplicarlo, con motivo. |
| 🔵 **PENDIENTE** | Aceptado como idea de experimentación, no se ejecuta en esta iteración. |

---

## 1. Matriz de superficies algorítmicas (Inicio / Sugeridos / Búsqueda / Shorts)

✅ **ADOPTADO** en `_framework/roles/01-investigacion-ideas.md` §3.4, como **hipótesis editorial por superficie**, no como tabla de pesos secretos del algoritmo. Cada fila: qué estudia el agente + aplicación editorial + fuentes oficiales (Google Help, blog oficial de YouTube, paper RecSys). La distinción entre superficies tiene respaldo en la documentación oficial; convertir esa información en una receta para "hackear" cada superficie no se adopta.

## 2. Visión por computadora, OCR, detección facial, "1 rostro + 1 objeto" por miniatura

❌ **RECHAZADO** como mecanismo. No hay respaldo oficial suficiente para afirmar que YouTube ejecuta OCR/detección de expresiones para clasificar miniaturas en clústeres temáticos. ❌ **RECHAZADO** como regla de diseño: el rostro no es universal (funciona mal en tutoriales, misterio, ensayo científico, música). `02-packaging-miniaturas.md` ya contempla rostros, objetos, contraste y alternativas sin texto **como heurísticas**, y se mantiene así.

## 3. Pruebas A/B nativas y Watch Time Share

🟡 **ADAPTADO — ya estaba incorporado.** Rol 02 §6 y la plantilla 05 §4 ya contemplan hasta 3 variantes, prueba nativa y ganador por Watch Time Share (no por CTR bruto). No se duplica sección.

## 4. Ganchos en los primeros 5–10 segundos

🟡 **ADAPTADO — ya estaba incorporado.** Rol 03 §3 distingue formatos dinámicos (validar promesa en 5–10 s) de ensayos/documentales (15–30 s). Esa distinción es mejor que imponer un único tiempo a todos los géneros. El lenguaje determinista ("caída temprana = congelación de recomendaciones") se descarta: no está demostrado.

## 5. "Quality CTR" / MMoE / linter de clickbait

🟡 **ADAPTADO — reformulado.** La intuición (un CTR alto no basta si el video no satisface la expectativa) vale, pero el "Quality CTR" no tiene especificación pública que permita implementarlo como puntuación calculable. En su lugar se adopta la **Puerta de Congruencia Promesa ➜ Contenido** (5 preguntas evaluables) en `_framework/roles/03-guion-y-narrativa.md` §1, referenciada desde `AGENTS.md` §05 (criterio 1 de DoD de guion).

## 6. Interrupciones de patrón cada 20–30 segundos (3–5 s en shorts)

❌ **RECHAZADO** como obligación. La plantilla de storyboard ya tiene perfil de ritmo visual por defecto (5 s) con excepciones justificadas; imponer cronómetros adicionales generaría contradicciones y edición nerviosa. 🔵 **PENDIENTE** como idea de caja de herramientas: identificar tramos estáticos y proponer alternativas según género e intención; la decisión final la dan los datos de retención.

## 7. Modelo de cohortes y diagnóstico por CTR

✅ **ADOPTADO** la parte útil, reformulada: tabla de **interpretación prudente** (impresiones↑ + CTR↓ = audiencia más amplia, no tocar; CTR bajo con pocas impresiones = muestra insuficiente; CTR alto + retención débil = revisar promesa/apertura; prueba nativa concluyente = registrar) en la plantilla `05-metricas-retencion.md` §7.2, **en ambas copias** (canónica y `mis-canales/_plantilla-canal`). Las cohortes "primaria/secundaria/amplia" se usan como **hipótesis ilustrativa**, no como descripción confirmada del proceso interno. El criterio de "cambiar miniatura a las 3–4 h" se **rechaza** como demasiado agresivo (contradice la advertencia oficial de evitar decisiones con datos insuficientes).

## 8. Tiempo de visualización valorizado (valued watchtime)

🟡 **ADAPTADO.** El principio editorial (priorizar valor real sobre inflar duración) vale y ya está en la filosofía del framework. ❌ **No se incorpora** la métrica como si el creador pudiera calcularla por video: el blog oficial de 2021 explica el concepto, pero no hay acceso a una cifra directa. En `05-metricas-retencion.md` se registran solo indicadores observables en Studio.

## 9. Reacción inmediata, "Hidden Gem" al final, prohibición de despedidas

❌ **RECHAZADO** como regla. No está demostrado que una "joya oculta" acostumbre a la audiencia al 100 % de reproducción ni que las despedidas envíen señales de distribución. 🔵 **PENDIENTE** solo la intención editorial: evitar cierres largos y sin contenido, y CTA como "siguiente video pertinente" — ya cubierto por rol 03 §6.

## 10. Descripciones, subtítulos, NLP y MuLan

🟡 **ADAPTADO.** Subtítulos correctos y sincronizados: recomendación razonable (accesibilidad, comprensión, calidad de producción), ya contemplada. ❌ **No se adopta** la premisa de que subtítulos revisados generan ventaja algorítmica cuantificable, ni la regla "descripciones de más de 200 palabras" (la documentación oficial no la establece). ❌ **No se adopta** MuLan como instrucción general: solo tendría sentido en una investigación específica (p. ej., canales musicales).

## 11. Trazabilidad de las fuentes del documento original

✅ **RESUELTO** para el repo: se agregó nota de trazabilidad al inicio de la fuente aclarando que es fuente no verificada, que el documento "Arquitectura Algorítmica..." y las 22 referencias `[cite: N]` no existen en el repositorio, y señalando dónde está esta disposición. *(Nota posterior: esa versión histórica del archivo fue reemplazada en el commit `f523833` por el tutorial de generación audiovisual; el contenido evaluado aquí queda preservado en el blob de git de los commits `55eb762`/`ed51514` y la fuente actual vive en `_framework/referencias/apuntes-segundo-amigo.md`.)*

## 12. Duplicación interna del documento

🔵 **PENDIENTE.** El archivo repite secciones (primeros segundos, interrupciones, cierre) en dos grupos. No se deduplica de oficio: es un documento de referencia inmutable de un tercero; la nota de trazabilidad y esta disposición son suficientes para no citarlo como autoridad.
