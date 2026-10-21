# Saneamiento por evidencia del piloto (revision de un amigo)

Saneamiento del framework disparado por la revisión externa `revision y señalamientos de un amigo.md`.
El hallazgo central, verificado con mediciones sobre el master real del piloto: el repo prescribía
estándares de calidad que el propio piloto no cumple y no tenía forma de demostrar que los cumplía.
Esta iteración no agrega metodología creativa nueva; hace que lo escrito sea verdad y comprobable.

## Specs

- **S1.** El creador pidió: `ahora toca analizar "revision y señalamientos de un amigo.md"`. El análisis
  debe dejar una disposition explícita por hallazgo (provisto / no provisto / rechazado con motivo),
  archivando el documento de revisión dentro del repo con ese status al lado de cada punto.
- **S2.** Decisión del creador, no negociable: `effectcraft queda 🟢 PROBADA y obligatorio en V2`.
  Ninguna tarea de este documento retrocede esa etiqueta ni quita la obligatoriedad de V2, aunque la
  medición no encontró clips de EffectCraft en el piloto.
- **S3.** Decisión del creador sobre pacing y audio: `heuristica pero que no caiga en la imaginacion
  incoherente o sin justificar un proposito creativo`. Es decir: valores de referencia por género en
  lugar de constantes universales, y toda desviación del perfil por defecto exige una línea escrita
  de propósito creativo. La excepción existe pero paga peaje; "se me ocurrió así" no pasa.
- **S4.** El creador delegó el orden de trabajo: `el orden que creas mas optimo`. Orden adoptado y su
  justificación: 5 (medición) → 1 (repo deja de mentir) → 3 y 4 (pacing/audio + timecodes, mismo pase)
  → 2 (checker, que codifica las reglas ya escritas y se valida contra el caso real).
- **S5.** El permiso sobre el sandbox fue concedido como `Sí, mirá nomás`: **solo lectura** sobre la
  ruta exacta `/Users/albertmac11/Reguero/Proyectos/youtube-prueba`. No se escribe, mueve ni borra
  nada fuera de la raíz del proyecto; la evidencia se transcribe a un informe, no se copia el medio.
- **S6.** Los hechos medidos del master se registran íntegros y sin suavizar, con el comando
  reproducible que los produjo: `video_piloto_master.mp4` · 9:36.7 · 1920x1080 · h264 · 24 fps ·
  1 pista AAC 48 kHz · Integrado -17.5 LUFS · True Peak -7.3 dBTP · LRA 1.8 LU · 0 frames negros ·
  0 silencios > 1 s · 14 planos, promedio 41.2 s, máximo 57.5 s · 0 archivos de música · 0 SFX.

## Tasks

| ID | Spec | Ruta | Commit |
| :-- | :-- | :-- | :-- |
| T1 | S5, S6 | `_framework/referencias/evidencia-piloto/medicion-master-piloto.md` — informe medido y reproducible del master, declarando el alcance real de la corrida (animatic con scratch track, no master de producto) | `a03b111` ✅ |
| T2 | S1, S2 | `_framework/herramientas-y-apis.md` — leyenda en 3 niveles (Documentado / Probado / Validado para este flujo), reclasificación de las filas cuyo color no tiene evidencia, FilmCraft a su estado real post-piloto. EffectCraft **intocable** por S2 | `7273357` + `31780a0` ✅ |
| T3 | S3 | Pacing 4-7s vs 3s y las 3 pistas con valores fijos pasan a perfil por género + peaje de justificación en `_framework/roles/04-direccion-y-edicion.md`, ambas copias de `03-storyboard-y-edicion.md` y `AGENTS.md` | `7273357` ✅ |
| T4 | S1, S3 | Sincronizar timecodes e IDs de bloque entre `02-guion.md` y `03-storyboard-y-edicion.md` (ambas copias) y cerrar la exención de ficción en `06-fuentes-y-verificacion.md` | `7273357` ✅ |
| T5 | S1 | `README.md` — el `rsync` del sandbox con exclusiones explícitas de secretos y medios, porque `rsync` no respeta `.gitignore` | `7273357` ✅ |
| T6 | S1, S3 | Checker determinista de contrato (timecodes coincidentes, estados válidos, color respaldado por evidencia) + `revision y señalamientos de un amigo.md` archivada con status por hallazgo | `31780a0` ✅ |

## Log

- **L1.** Petición original del creador: `donde nos quedamos? que fue lo ultimo que hicimos?` y luego
  `ahora toca analizar "revision y señalamientos de un amigo.md"`.
- **L2.** Corrección del creador sobre el archivo de la conversación anterior:
  `olvidate de "conversacion de la opinion del agente al dinal de la ultima fase de produccion.md" si
  aun queda rastro de eso lo puedes borrar por completo que ya lo analisasmos y tratamos en otra sesion.`
  → commit `1a80881`.
- **L3.** El creador rechaza el encuadre de opciones A/B/C: `A, B y C hablan cosas importante pero
  totalmente diferentes o indiferentes entre ellas y me los das como si fueran variantes de lo mismo`.
  → se reemplaza el menú de alcance por 5 dolores independientes, cada uno con su criterio de decisión.
- **L4.** El creador corrige mi afirmación "cero archivos de audio": el scratch sí existe. Verificado:
  `audio/` tiene B01-B07.wav, `silence.wav`, `concat_list.txt` y `radio_edit_scratch_track.{wav,mp3}`.
  Lo que falta es A2 (música) y A3 (SFX), no A1 (voz). El `concat_list.txt` prueba que el audio del
  master es solo voz concatenada con silencios. Duración 576.658 s vs 576.682 s del master.
- **L5.** El creador aclara la naturaleza de la corrida: `no hay video, porque una vez que se hizo el
  video deje de usar yotube-prueba, ya para mi estaba todo probado` y `sabes que fue una corrida para
  ver que tambien funcinaba el framework`. Consecuencia: `papers-al-grano/01-olvido-activo-microglia`
  **es** el caso real con el que validar un checker; mi bloqueo declarado del dolor 2 era falso.
- **L6.** Cronología verificada que da la razón al revisor: el master se renderizó `2026-10-20 00:24`
  y la regla de pacing y 3 pistas se escribió `2026-10-20 00:52` con el mensaje
  `...before master render`. El estándar se redactó después del resultado que dice gobernar.
- **L7.** Hito del checker: primera corrida contra el maestro dio 13 errores (RED), incluyendo
  `🟢 DISPONIBLE / MCP` de Luvvoice y `🟢 DISPONIBLE / DOC.` de Flow con color verde (el bug exacto
  que señaló el revisor). Tras corregir leyenda y texto: 0 errores (GREEN). Segunda corrida contra la
  copia vieja del sandbox: detecta los mismos bugs históricos donde aún viven (10 errores + 7 IDs de
  bloque del piloto pre-renombrado). El checker prueba contra evidencia real, no contra plantillas vacías.
- **L8.** Corrección de alcance del checker: la regla 4 original buscaba palabras mágicas
  ("evidencia", "piloto") dentro de la fila; producía falsos positivos en 13 filas 🟢 legítimas.
  Fue reemplazada por la regla estructural correcta: color 🟢 ⇒ la celda de estado dice PROBADA y la
  columna "Acciones Específicamente Probadas" tiene contenido; color 🟡 ⇒ DOCUMENTADA. El checker
  también tuvo un bug propio (`head()` ensombrecía el comando `head`) que fabricó una línea
  `=== -1 ===`; detectado, renombrado a `sec()`, verificado.
