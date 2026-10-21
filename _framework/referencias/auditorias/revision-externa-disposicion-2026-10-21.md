# Revisión externa — Disposición por hallazgo

**Fuente:** `revision y señalamientos de un amigo.md` (revisión externa, 2026-10-21, en inglés).
**Veredicto general del revisor:** *"una mejora significativa en la disciplina operativa, pero
aún no es un framework de producción validado"*.
**Estado:** archivado con disposition explícita por cada hallazgo. Este documento es la fuente
de verdad del status; cada punto dice si se resolvió, cómo, o por qué se rechaza.

## Disposición resumida

| Estado | Significado |
| :--- | :--- |
| ✅ **RESUELTO** | El hallazgo se corrigió y se puede verificar en el repo. |
| 🟡 **PARCIAL** | Se corrigió parte; queda un paso pendiente (se nombra). |
| ❌ **RECHAZADO** | Se revisó y se decide no aplicarlo, con motivo. |
| 🔵 **PENDIENTE** | Aceptado como válido, pero no se ejecuta en esta iteración. |

---

## 1. Commit-by-commit (40 commits)

El revisor evaluó cada commit desde `0edff3e`. No se responde fila por fila: las correcciones
sustantivas ya se hicieron en la segunda auditoría (ver
`auditoria-2026-10-19-segunda-ronda.md`). Se destacan solo los juicios que generan acción:

- **#4 "una simulación debe etiquetarse como tal"** → ✅ RESUELTO. El piloto quedó declarado
  como **corrida de framework**, no como video de producto, en
  `evidencia-piloto/medicion-master-piloto.md` §6.
- **#20/#21 "reglas sobre growth sin evidencia"** → ✅ RESUELTO previamente (commits
  `5331ada`, `4e3c163`). El revisor lo reconoce.
- **#34 "los timings nuevos no se sincronizaron con el storyboard"** → ✅ RESUELTO en esta
  iteración: los timecodes fijos de la plantilla se reemplazan por `← derivar` y los IDs
  coinciden (`6c6463ed` renombró bloques en el guion y se olvidó del storyboard).
- **#39 "EffectCraft PROBADA sin log; FilmCraft 'candidata' a pesar del piloto"** → ✅ RESUELTO.
  FilmCraft pasa a 🟢 PROBADA (alcance: piloto) con cita a la evidencia. **EffectCraft: el creador
  decide mantener 🟢 PROBADA y obligatorio en V2** (ver `odd/tasks/saneamiento-evidencia-piloto.md`,
  S2). La medición no encontró clips de EffectCraft en el piloto; la etiqueta queda bajo esa
  decisión explícita, documentada, no implícita.
- **#40 "el feedback duplica la bitácora y tiene un nombre incómodo"** → ✅ RESUELTO: el archivo
  duplicado se eliminó (`1a80881`); la bitácora técnica es el registro principal.

## 2. What you actually solved

Elogios. No genera acción. Se destaca que el revisor coincide en que el **estado de producción
persistente** y la **separación entre evidencia y heurísticas creativas** fueron las mejoras más
valiosas.

## 3. The problems I would fix now (lista de trabajo)

### Priority 0 — Seguridad del sandbox
> `rsync -av --exclude='.git'` no respeta `.gitignore`; copia `.env`, claves, cachés y renders.

✅ **RESUELTO.** `README.md` ahora documenta y aplica exclusiones explícitas: `.env*`, `*.pem`,
`*.key`, `*.local`, `.atl/`, `.codegraph/`, `renders/`, `exports/`, y todos los medios. El comentario
explica por qué: `rsync` solo copia lo que no se excluye, y el paso 2 invita a `gh repo create`
encima. *Nota honesta:* hoy no hay `.env` en el repo; era un riesgo preventivo, no un incendio.

### Priority 1 — Reconcile storyboard and script timecodes
> El guion dice `B01 00:00-00:15`, el storyboard `B01 00:00-00:08`. IDs distintos.

✅ **RESUELTO.** Los timecodes fijos de la plantilla de storyboard se reemplazan por `← derivar`
(derivados del guion aprobado y la locución real medida). Los IDs de bloque coinciden con el guion.
El checker (`_framework/scripts/check-contrato.sh`, §3) los cruza en cada video real.

### Priority 1 — Revisit mandatory visual and audio rules
> 4-7s vs 3s son umbrales rivales; 3 pistas con valores numéricos no son leyes universales.

✅ **RESUELTO.** Se unifica en **perfil por defecto con excepción justificada**:
- Pacing: umbral único de **5 s** por defecto; extensión solo con **propósito creativo escrito**.
- Audio: −23 LUFS / ducking −18 dB como **perfil por defecto**, no ley; un formato distinto puede
  variarlos con justificación escrita. El resultado se **mide y escucha**.
- El revisor pedía exactamente esta distinción: *"exigir un resultado editorial no es lo mismo que
  exigir una técnica concreta"*. La decisión del creador (`heurística pero que no caiga en la
  imaginación incoherente o sin justificar un propósito creativo`) se implementa como peaje de
  justificación.

### Priority 1 — Make tool validation consistent
> Luvvoice, Flow, Flow Music 🟢 sin evidencia; FilmCraft "candidata" a pesar del piloto; EffectCraft
> PROBADA sin log. Propone 3 niveles: Documented / Tested / Validated.

✅ **RESUELTO.** La leyenda pasa a **tres niveles de evidencia**:
- 🟡 **DOCUMENTADA:** existe en docs, ninguna ejecución local la comprobó.
- 🟢 **PROBADA EN ENTORNO:** se ejecutó una operación real y se inspeccionó el resultado.
- **Validada para este flujo:** la operación completa cumplió criterios de aceptación.
- Cada fila 🟢 debe nombrar qué operación probó y su alcance. **EffectCraft queda exento por
  decisión explícita del creador** (S2): se mantiene 🟢 PROBADA y obligatorio en V2.
- ElevenLabs, Luvvoice, Google Flow y Flow Music bajan a 🟡 DOCUMENTADA (sin registro de ejecución
  en el repo; el piloto usó `macOS say` para el scratch, hoy prohibido).

### Priority 1 — Fiction exemption for fact-checking
> La ficción no exime de verificar afirmaciones sobre personas, historia, ciencia o salud.

🟡 **PARCIAL — ya estaba corregido, se afina el wording.** `06-fuentes-y-verificacion.md` ya
decía (antes de esta revisión) que una ficción con afirmaciones sobre lo real debe registrarlas.
Se agrega una aclaración explícita: *"el riesgo decide los controles, no el género"*.

### Priority 2 — Keep one source of truth for the pilot
> El feedback duplica la bitácora; cada hallazgo de auditoría debe tener status y commit.

✅ **RESUELTO.** Este documento **es** la fuente de verdad del status del piloto, con disposition
por hallazgo y cita a commits. El transcript duplicado se eliminó (`1a80881`).

## 4. What the framework is—and is not—today

> El repo es Markdown, no un sistema orquestado; "linter obligatorio" es instrucción, no control.

🟡 **PARCIAL — aceptado como diagnóstico, se empieza a cerrar.** Se agrega
`_framework/scripts/check-contrato.sh`: un verificador **determinista** (bash, sin dependencias)
que comprueba archivos canónicos, estados válidos, timecodes coincidentes y 🟢 con evidencia.
No es un sistema de orquestación; es la primera capa de **control automático** que el revisor pedía.
La suite de aceptación de media (LUFS, ducking, frames negros) queda **PENDIENTE** (ver §5).

## 5. My recommendation for the next iteration

> Dejar de agregar metodología; gastar la iteración en una **acceptance suite** y una producción
> controlada contra ese contrato.

🔵 **PENDIENTE — aceptado, no ejecutado en esta iteración.** La medición del piloto ya se hizo y
archivó (`evidencia-piloto/medicion-master-piloto.md`); la suite de aceptación de media y la
producción controlada contra contrato **requieren un canal y un video reales**, que hoy no existen
(`mis-canales/` solo tiene la plantilla). Queda como **siguiente iteración**, no como parte de esta.
El checker de contrato (§4) ya se puede ejecutar hoy contra `papers-al-grano`.

---

## Nota de verificación

El revisor dijo: *"un render exitoso prueba que un camino técnico funciona; no prueba que el video
terminado cumpla los requisitos editoriales, de audio, visuales o de licencias."*

**Verificado con medición sobre el master real** (`video_piloto_master.mp4`, 9:36.7):
- 1 pista de audio (no 3) · −17.5 LUFS (no −23) · LRA 1.8 · 0 frames negros · 0 silencios
- 14 planos, promedio 41.2 s (no ≤ 5 s) · 0 música · 0 SFX
- Cronología: el master se renderizó `2026-10-20 00:24`; la regla de pacing y 3 pistas se escribió
  `2026-10-20 00:52`, 28 min después, con el mensaje `...before master render`.

El revisor tenía razón: el estándar se redactó **después** del resultado que dice gobernar.
Este documento y la medición existen para que el repo no tenga que "creer" que el piloto aprobó
calidad: ahora sabe exactamente qué pasó y qué no.
