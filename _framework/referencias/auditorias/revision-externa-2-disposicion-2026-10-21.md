# Segunda Revisión Externa — Disposición por Hallazgo

**Fuente:** `revision de mi amigo.md` (segunda revisión del mismo revisor, 2026-10-21).
**Head revisado por él:** `bc5d49b` (14 commits posteriores a `3b0ea08`, el head de la
primera revisión).
**Veredicto del revisor:** *"your response to the previous review was generally good.
You didn't just argue that the problems were fixed: you added measured evidence,
archived the findings, assigned statuses, and began turning some rules into
executable checks."*

## Estado que él asignó a los hallazgos de la primera revisión

| Hallazgo previo | Él dijo | Nuestro estado final |
| :-- | :-- | :-- |
| Evidencia objetiva del piloto | **Resolved** | ✅ Confirmado |
| Timecodes guion/storyboard | **Mostly resolved** | ✅ Cerrado ahora (ver C: el checker tenía la debilidad que él encontró) |
| Reglas universales de pacing/audio | **Partially resolved** | ✅ Cerrado ahora (ver A) |
| Sandbox copiaba credenciales | **Mitigated** | ✅ Cerrado ahora, y mejor de lo que él propuso (ver B) |
| Catálogo con capacidades no verificadas | **Improved** | ✅ Confirmado |
| Exención de ficción | **Partially resolved** | ✅ Cerrado ahora (ver D) |
| Feedback duplicado / hallazgos rastreables | **Resolved** | ✅ Confirmado |
| Instrucciones sin enforcement automático | **First step implemented** | 🔵 Aceptado como proceso: el checker + fixtures suma; la máquina de estados sigue siendo el paso grande |

## Hallazgos nuevos — disposición

### A. `00-estado-produccion.md` conservaba los criterios viejos (7 s / 3 pistas duras)
✅ **RESUELTO** — commit `adcea73`. Ambas copias de la plantilla de estado ahora
expresan el **perfil por defecto (5 s / −23 LUFS / ducking −18 dB) con excepciones
justificadas por escrito**, delegando en `03-storyboard-y-edicion.md` como él pidió
("the video-specific acceptance sheet should be authoritative"). Verificación:
`grep "7 segundos"` no devuelve nada operativo en las plantillas.

### B. El rsync excluía TODOS los `*.png`/`*.jpg` (llevabase la evidencia legal fuera del sandbox)
✅ **RESUELTO, con corrección adicional nuestra** — commit `6fc2a4c`. El revisor
tenía razón en el problema, pero su receta literal (allowlist con `--include`)
**no funciona en openrsync de macOS**: probado empíricamente — la regla
`--include='**/licencias/**'` no hace match y las capturas de términos de licencia
igual desaparecerían del sandbox en silencio. Solución implementada: **excluir
medios descartables por UBICACIÓN** (`renders/ exports/ audio/ video/ clips/
thumbs/`) y solo video/audio pesado por extensión, **nunca imágenes**. Dry-run
verificado: `.env`/claves/medios quedan fuera; `licencias/`, `assets/licencias/`
y el banner de referencia sobreviven. El límite conocido (un `.mp4` suelto fuera
de las carpetas canónicas viaja) está documentado en el README con su regla
operativa.

### C. El checker: `Fase activa` vs `Estado actual`; bloque ausente era warning; sin fixtures
✅ **RESUELTO** — commit `a1dd403`. Los tres puntos:
1. §2 lee ahora `(Estado actual|Fase activa)` (ambas formas).
2. Bloque del guion ausente del storyboard pasó de `warn` a `fail` (el storyboard
   es la orden de compra; sin escena no hay producción).
3. **`_framework/scripts/test-check-contrato.sh`**: suite de 6 fixtures con exit
   code explícito (árbol válido→0; estado inválido→1; bloque faltante→1;
   timecodes inconsistentes→1; 🟢 sin operación→1; 🟢 con texto no-PROBADA→1).
   ALL FIXTURES PASS (6/6). Nota: el primer draft de la suite falló el fixture 0
   por un bug propio (faltaba `mkdir -p _framework`) — detectado y corregido con
   la suite corriendo, no de memoria.

**Reconocimiento explícito a su observación final (la más valiosa):** el checker
verifica **existencia y coherencia**, no las **reglas de transición** — no impide
hoy declarar una fase aprobada sin evidencia ni saltarse una fase. Eso no es un
descuido de este repo: es exactamente P7/§4.1 del brief `youtube-shell` (la
máquina de estados es la única pieza nueva de ingeniería del producto). Queda
registrado como límite known, no como "resuelto".

### D. `02-guion.md` conservaba "no aplica en Régimen 1 Ficción"
✅ **RESUELTO** — commit `6fc2a4c`. Alineado con `06-fuentes`: solo ficción sin
ninguna afirmación sobre lo real es `N/A`; personas reales, historia, ciencia o
salud se registran y verifican — *el riesgo decide los controles, no el género*.
Ambas copias sincronizadas.

### E. EffectCraft: separar "obligatorio por decisión" de "probado en entorno"
✅ **RESUELTO — decisión del creador tomada el 2026-10-21 tras presentar las dos
opciones.** Aceptó el desglose recomendado: nueva categoría **🟣 OBLIGATORIA
(decisión del creador) — ejecución aún no registrada** en la leyenda del catálogo;
la fila de EffectCraft la adopta, **la obligatoriedad en V2 queda intacta** (AGENTS.md
no se tocó: sigue imponiendo overlays en V2), y la promoción a 🟢 la traerá la primera
producción real con un overlay archivado (P3 de `PENDIENTES.md`, actualizado). Los dos
hechos que el revisor pedía separar ahora tienen cada uno su verdad: el mandato es
decisión del creador, la evidencia todavía no existe.

## Nota de honestidad metodológica del revisor (positiva, registrar)

Él declaró no haber podido ejecutar el checker en su entorno (DNS falló) y marcó
sus hallazgos como *inspección estática de fuente*, no tests corridos. Nosotros
sí lo ejecutamos: sus tres hallazgos del §C se reprodujeron tal cual y quedaron
cubiertos por fixtures.
