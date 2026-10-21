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

**Estado:** 🟢 PROBADA y obligatorio en V2 por **decisión explícita del creador**
(S2 en `odd/tasks/saneamiento-evidencia-piloto.md`), aunque la medición del piloto
no encontró ningún clip suyo en disco.

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

## Regla de esta cola

Ningún ítem se "hace por las dudas" sin su condición de desbloqueo.
Cada promo de 🟡 a 🟢 exige un archivo real en disco, no una promesa.
(El checker `_framework/scripts/check-contrato.sh` ya vigila la coherencia del catálogo.)
