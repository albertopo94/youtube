# Revisión externa 5 — Análisis: estudio de prácticas de MrBeast

**Fuente:** `_framework/referencias/estudio-mrbeast-transcripcion.md` (commit `4646777`; transcripción de 27 min de un video de una amiga de la creadora que compila entrevistas de MrBeast en 8 categorías: ideación, calidad de ideas, títulos, miniaturas, ganchos, retención, algoritmo, masterminds/creadores pequeños).
**Análisis del primer amigo:** `revision-externa-5-originales-2026-10-22.md` (archivado verbatim).
**Contraste:** análisis paralelo del orquestador antes de conocer la opinión del revisor.

---

## 1. Advertencia de procedencia (crítica para esta fuente)

- La transcripción **mezcla citas de varias entrevistas con las interpretaciones de quien las analiza**. El ejemplo paradigmático: el "70 % de retención" es una crítica puntual de MrBeast al video de un colega, convertida en regla general.
- **No hay bibliografía** que permita rastrear qué entrevista sostiene cada cita. Hasta identificar las fuentes originales, **no se puede separar con certeza "lo que dijo MrBeast" de "lo que la narradora deduce"**.
- Implicación operativa: de esta fuente solo se adoptan prácticas que sean **verificables por su propio valor editorial**, nunca afirmaciones atribuidas que dependan de la autoridad del nombrado.

## 2. Evaluación de las 8 categorías

| # | Categoría | Valor | Decisión |
| :-- | :-- | :-- | :-- |
| 1 | Ideación / "dieta de información" | Alto, parcialmente cubierto | ✅ **ADOPTADO** como registro opcional (§9 rol 01) |
| 2 | Calidad de ideas (original/interesante/extremo) | Cubierto | **SE CONSERVA** sin duplicar (rol 01 §5); "extremo" adaptado por género, no impuesto |
| 3 | Títulos (<50 caracteres, "tan interesante que no te deja pensar") | Principalmente redundante | **SE CONSERVA** la arquitectura de rol 02 §3; se **rechaza** el máximo rígido de 50 (heurística ~55, con lo importante al inicio, que ya está) |
| 4 | Miniaturas (claridad, cada elemento con propósito, diseñar antes de producir) | Cubierto | **SE CONSERVA** sin duplicar (rol 02 §4-5 + el pipeline ya diseña packaging antes de producir) |
| 5 | Ganchos / primeros segundos | Alto como refinamiento | ✅ **ADOPTADO** — Puerta de Correspondencia del Arranque (rol 03 §1) |
| 6 | Retención (quitar momentos flojos, roast externo, payoff, subtramas) | Alto separando el método de la cifra | ✅ **ADOPTADO** el test cualitativo externo (plantilla 03 §5) y 🟡 **ADAPTADOS** los puntos de reactivación (rol 03 §2) |
| 7 | "El algoritmo es clic + visualización" | Bajo | **SE CONSERVA** el enfoque de satisfacción del rol 01 §3, que ya es más matizado (satisfacción, fuentes, sin fórmulas) |
| 8 | Masterminds / 100 videos / creadores pequeños | Valioso como metodología de mejora | 🟡 **ADAPTADO** a mejora única por entrega (plantilla 05 §5). La cifra 100 se rechaza como umbral |

## 3. Contradicción del repositorio detectada por esta revisión (el hallazgo de mayor valor)

`AGENTS.md` §05 condición 6 y `03-guion-y-narrativa.md` §3 prohibían **"terminantemente"**, sin excepción de formato, nombrar el mecanismo técnico o dar la conclusión en los bloques de apertura, fijando la revelación "a mitad del metraje".

- **Por qué estaba mal:** es una regla heredada del canal de divulgación con revelación central, redactada como ley universal. Contradice el propio §3 del rol 03, que dos párrafos más abajo declara la apertura flexible por formato. En un tutorial, un screencast o un video que responde una consulta de búsqueda, **retrasar artificialmente la respuesta frustra al espectador que ya trajo la intención de búsqueda** y produce exactamente la caída de retención que la regla quería prevenir.
- **Es el mismo defecto estructural** que la ronda A–E de `v0.4.2` corrigió en pacing visual y pistas de audio: una regla que debía ser perfil por género estaba escrita como prohibición.
- **Resuelto:** la prohibición pasa a ser **condicionada por formato**, con los dos casos explícitos (cuando el descubrimiento es parte de la experiencia / cuando la respuesta temprana es el valor) y una línea de justificación obligatoria en `02-guion.md`.

## 4. Lo que se adoptó, resumido con su ubicación

1. **Puerta de Correspondencia del Arranque** (4 comprobaciones: primera imagen ↔ concepto de miniatura, primera frase sin preámbulo, primeros 20-30 s, cumplir y superar) → `roles/03` §1. Prueba editorial, **no** orden de replicar la miniatura en el primer plano.
2. **Test cualitativo con espectadores externos** (qué esperaban / qué entendieron / dónde perdieron interés / qué sobró) → `03-storyboard` §5, opcional, con límites honestos de muestra.
3. **Registro de Inspiración y Conexiones** (5 campos; inspiración ≠ autorización de copiar) → `roles/01` §9.
4. **Reactivación narrativa para videos largos** (caja de 5 opciones, sin giro obligatorio cada 3 min) → `roles/03` §2.
5. **Mejora única nombrada por entrega** (una sola mejora verificable, no lista de propósitos) → `05-metricas` §5.
6. **Proporción título ↔ profundidad del contenido** (aporte del orquestador) → `roles/02` §3.3 + `AGENTS.md` §05 DoD de packaging.
7. **Anti-spoiler condicionado por formato** → `roles/03` §3 + `AGENTS.md` §05.

## 5. Lo que se rechazó y por qué

| Afirmación | Motivo del rechazo |
| :--- | :--- |
| 70 % de retención como meta | Umbral ajeno a duración, género y canal. YouTube recomienda comparar contra videos de duración similar y mirar tanto tiempo medio visto como porcentaje medio visto. Prescribir 70 % a un canal de ensayos o de dormir es dañino. |
| Todos los títulos bajo 50 caracteres | La documentación oficial no fija un máximo universal. Ya existe la heurística ~55 con "no es ley". |
| Más cortes / más brillo / estímulos rápidos siempre | Son recursos de realización, no garantías de retención. El perfil de 5 s con excepción justificada ya los gobierna mejor. |
| "El algoritmo solo quiere clics y visualizaciones" | Simplificación: la documentación oficial incluye personalización por historial, señales de satisfacción, interés temático, competencia y estacionalidad. |
| Publicar 100 videos para empezar a tener visitas | La cifra es motivacional. Lo adoptable es la mejora por entrega, no el número. |
