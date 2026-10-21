# ⏳ PENDIENTES — Cola de trabajo detenido a decisión del creador

> **Fecha de origen:** 2026-10-21.
> **Estado del framework:** saneado por evidencia (ver
> `_framework/referencias/auditorias/revision-externa-disposicion-2026-10-21.md`).
> Todo lo de abajo es **válido y aceptado**, pero deliberadamente no ejecutado:
> cada ítem espera una decisión o un evento del creador, no trabajo técnico.

---

## 🔵 P1 — Suite de aceptación de media + producción controlada

**Qué es:** la sugerencia final de la revisión externa 2026-10-21 (sección 5).

1. Antes de producir un video, escribir su **hoja de aceptación**: los números que
   ESE video debe cumplir al terminar (sonoridad objetivo, pistas esperadas, cero
   frames negros, pacing con excepciones justificadas, duración objetivo).
2. Al terminar, **medir el master real** contra esa hoja (los comandos ya existen y
   están probados en `_framework/referencias/evidencia-piloto/medicion-master-piloto.md`).
3. Durante la producción, registrar: intentos fallidos por etapa, pasos que
   requirieron mano humana, y duración de cada fase.

**Para qué sirve:** convierte la próxima producción en una **línea de base**
comparable, en vez de otra anécdota. El piloto falló esto sin que nadie lo supo:
su master medía −17.5 LUFS, una sola pista y planos de 41 s, y el pipeline lo
registró como exitoso porque nadie midió nada.

**Por qué está frenado:** la hoja de aceptación se escribe **por video concreto**.
Los números buenos para un ensayo de 9 min son malos para un Short de 40 s o para
un ambient de 1 h. Escribir constantes genéricas ahora repetiría el error del
"4-7 s universal" que se corrigió el 2026-10-21.

**🔓 Condición de desbloqueo:** el creador elige un canal y aprueba un primer video
(checkpoint de concepto en `canales-en-estudio/`). El paso CERO de esa producción
es esta hoja, ANTES del guion (el error del piloto fue escribirla después).

---

## 🔵 P2 — Elegir el primer canal real

**Estado:** `mis-canales/` y `canales-en-estudio/` están vacíos (solo plantillas).
`papers-al-grano` fue un canal de ensayo del sandbox, no un compromiso.

**El creador declaró (2026-10-21):** *"me da pereza ahora hacer un canal de youtube,
no es algo trivial, no quiero perder tiempo."* → Decisión legítima y respetada:
**no hay prisa ni deuda técnica abierta por esto.** El framework queda en reposo,
listo para cuando haya ganas reales.

**Cuando haya ganas, el protocolo ya está en el repo:**
1. Linter obligatorio de vetados (`ideas.md` §4 + `backlog-ideas.md` §3).
2. Evidencia de demanda cualificada antes de proponer (AGENTS.md §04.1).
3. Barrido DFS híbrido para mapear el nicho (AGENTS.md §04.5).
4. Concepto de canal → checkpoint de aprobación del creador.

---

## 🔵 P3 — Efectividad de EffectCraft en una producción real

**Estado:** 🟣 **OBLIGATORIA (decisión del creador) — ejecución aún no registrada** en V2
(decisión explícita del creador, 2026-10-21; desglose aceptado el mismo día tras el
hallazgo E de la segunda revisión externa). Antes compartía la etiqueta 🟢 PROBADA,
que afirmaba una evidencia inexistente: ningún clip suyo en el repo ni en el piloto.
La **obligatoriedad en V2 no cambió**; lo que cambió es que el mandato ya no se
disfraza de hecho probado.

**🔓 Condición de cierre:** la primera producción real debe generar al menos un
overlay V2 con `effectcraft-cli` y archivar el clip resultante como evidencia.
Ahí la etiqueta deja de ser una decisión del creador y pasa a ser un hecho.

---

## 🔵 P4 — Primer uso de voz neuronal (ElevenLabs / AI Studio / Luvvoice)

**Estado:** todas en 🟡 DOCUMENTADA. El piloto usó `macOS say` (hoy prohibido),
así que **ningún motor de voz neuronal tiene aún un archivo generado y archivado**
en este repo.

**🔓 Condición de cierre:** el primer scratch track de una producción real, con el
archivo generado guardado y la fila del catálogo promovida a 🟢 con su evidencia.

---

## 🔵 P5 — Google Flow / Flow Music: primer uso real

**Estado:** 🟡 DOCUMENTADA. El piloto generó sus placas con Swift local, no con Flow.

**🔓 Condición de cierre:** primera imagen/clip/pista generada con cada uno,
archivada como evidencia, promoción a 🟢 con alcance declarado.

---

## 🟣 P6 — Visión de producto: pasar de "instrucciones en Markdown" a "agente con harness propio"

**Origen (cita textual de la revisión externa 2026-10-21, sección 4):**

> *"The current repo has a reasonably strong structure for guiding agents, coordinating
> approvals, documenting research and tracking assets. It is still primarily a collection of
> Markdown instructions and templates. I did not find an executable orchestration system or
> automated test suite in the current repository. Therefore, terms such as 'mandatory linter,'
> 'verified delivery' and 'quality gate' describe instructions for the agent, not yet automated
> controls capable of detecting every violation."*

**La idea que eso disparó (visión del creador, 2026-10-21):** este repo no tiene por qué
quedarse siendo un manual que los agentes *leen y acatan*. Puede evolucionar —o correr en
paralelo— hacia un **agente de producción con un runtime propio** (estilo Pi, Hermes,
DeepSeek TUI o un Claude/Codex de escritorio) que lleve **este framework como harness por
detrás**: gobernanza, checkpoints, estados, linters y mediciones no como sugerencias,
sino como controles que el runtime ejecuta.

**Los 3 niveles de fuerza que existen (dónde estamos hoy):**

| Nivel | Qué es | Estado |
| :-- | :-- | :-- |
| 1. **Markdown que el agente lee** | AGENTS.md, roles, plantillas. Cumplimiento = buena voluntad del modelo. | ✅ Esto es casi todo el repo hoy |
| 2. **Verificadores que rompen** | `check-contrato.sh`, mediciones de ffmpeg contra hoja de aceptación. El error se detecta, aunque sea tarde. | 🟡 Recién nacido (2026-10-21) |
| 3. **Gates estructurales** | El runtime no *puede* saltarse el paso: la fase N+1 no arranca si la N no pasó. | ⬜ Requiere un runtime (esta visión) |

**Las 3 vías posibles (aún sin elegir — es decisión de producto del creador):**

- **Vía A — Evolver el repo en el lugar.** Expandir los verificadores existentes y volver
  el pipeline ejecutable por pasos (cada fase = comando que valida antes de dejar avanzar).
  Cero infraestructura nueva; sube nivel 1→2 sin construir un agente.
- **Vía B — Este repo *ya es* el harness de agentes que existen.** AGENTS.md es formato
  que leen Claude Code / Codex CLI / Gemini CLI / Pi; FilmCraft y EffectCraft ya exponen
  MCP. "El producto" sería empaquetar el repo como workspace agéntico portable: otro
  runtime, mismo framework. El camino más corto a lo que el amigo dice que falta.
- **Vía C — Runtime propio** (el sueño tipo Pi/Hermes/desktop con control de autonomía,
  fases visibles y subagentes). Máximo control, costo máximo. Solo tiene sentido sobre un
  flujo de producción **ya probado** (P1/P2), o se termina automatizando un proceso no validado.

**Tensión conocida y registrada:** el §6.2 del propio AGENTS.md dice "No automatizar
prematuramente antes de completar manualmente un primer video piloto". El piloto de
framework **ya ocurrió**, así que la puerta está entreabierta; se abre del todo cuando
exista una producción real con hoja de aceptación (P1). Nota honesta: esta vía NO
requiere tener canal — se puede avanzar en Vía A/B sin producir un solo video.

**🔓 Condición de desbloqueo:** decisión explícita del creador sobre qué vía (A/B/C) y
cuándo. Mientras esté frenada, el nivel 2 sigue creciendo gratis con cada verificador
nuevo que se agregue a `check-contrato.sh`.

---

## 🟣 P7 — Producto: agente vertical de producción de video ("creator-shell")

**Origen:** visión del creador 2026-10-21, nacida de la cita del amigo (sección 4)
+ estudio de gentle-shell / gentle-ai / pi.

**El stack entendido (4 capas):**

| Capa | Qué es | Dueño |
| :-- | :-- | :-- |
| 4 · **Producto** | "gentle-shell para creadores": runtime instalable cuyo harness interno es el framework YouTube | **el creador** |
| 3 · **Conocimiento de dominio** | Este repo: fases 00→07, checkpoints, vetados, YMYL, licencias, medición ffmpeg, FilmCraft/EffectCraft MCP | **el creador** |
| 2 · **Disciplina genérica** | gentle-ai: ODD, memoria, evidencia, revisión (patrón a emular, no a heredar ciegamente: es para código) | Gentleman-Programming |
| 1 · **Runtime** | pi: modelo, tools, sesiones, subagentes | earendil-works |

**La tesis:** gentle-shell probó que el patrón "pi + harness + empaquetado con
persona/skills/orquestador/memoria" funciona y se distribuye como paquete npm/Pi
(`gentle-pi`). El producto replica el patrón en el dominio creativo: los gates de
código (TDD, review, evidencia de commit) se reemplazan por gates de producción
(fase N no arranca si N−1 no está APROBADO; master no se entrega si no mide LUFS/
pistas/frames negros; idea no se propone si está vetada; asset no entra sin licencia).

**Principio rector:** NO construir runtime (capa 1 ya tiene dueño). El moat es la
capa 3 convertida en controles ejecutables — el "quality gate" de un agente de
código no sabe de LUFS, ni de políticas de monetización de YouTube, ni de anti-slop,
ni de licencias. Ese dominio no lo tiene ningún harness existente.

**Separación de responsabilidades (resuelve "¿evoluciona este repo u otro?"):**
- Este repo = oficina (contenido, canales, configuración). Sigue siendo workspace de referencia.
- Producto = software (harness extraído: AGENTS.md→persona+orquestador, roles→skills,
  checker+medición→tools, MCPs→integraciones, 00-estado→máquina de estados).
- El producto dogfoodea contra este repo; el canal del creador es el cliente cero
  (como Gentleman-Programming usa gentle-shell para construir gentle-shell).

**Hecho clave que destraba todo:** el MVP ya fue validado en vivo — el piloto de
FilmCraft lo ejecutó gentle-shell (este agente) sobre este framework. El producto es
empaquetar ese flujo como paquete instalable, agregando la única pieza que falta:
la máquina de estados que hace cumplir las fases. **No requiere tener canal** (canal
de ensayo ajeno sirve como cliente demo): es independiente de P2.

**Decisión de forma (pendiente del creador):**
- **F1 · Paquete de Pi** (formato gentle-pi): el más corto; monta sobre el runtime que
  ya demostró el patrón; distribución `pi install`.
- **F2 · Producto standalone** con su propio runtime al estilo de gentle-shell:
  máximo control/identidad, costo de mantenimiento de un fork de runtime.
- Recomendación registrada: **F1 primero**, F2 solo si el producto crece fuera del
  ecosistema pi.

**🔓 Condición de desbloqueo:** que el creador decida arrancar el producto (y con qué
nombre/forma). Mientras tanto, este repo sigue sumando los insumos: cada verificador
nuevo, cada gate de fase bien especificado, es una feature del producto ya diseñada.

---

## Regla de esta cola

Ningún ítem se "hace por las dudas" sin su condición de desbloqueo.
Cada promo de 🟡 a 🟢 exige un archivo real en disco, no una promesa.
(El checker `_framework/scripts/check-contrato.sh` ya vigila la coherencia del catálogo.)
