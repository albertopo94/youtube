# BRIEF DE LECTOR — `youtube-shell`

> **Qué es este documento:** todo lo que necesita entender un agente (cualquiera,
> en cualquier sesión) para arrancar o continuar el desarrollo de `youtube-shell`.
> Léelo entero antes de proponer o escribir una sola línea.
>
> **Origen:** repo de referencia `github.com/albertopo94/youtube`
> (oficina de producción de video con framework propio, público, versionado).
> **Fecha de este brief:** 2026-10-21.
> **Estado:** aprobado el concepto por el creador. Nombre tentativo: `youtube-shell`.

---

## 1. Una frase

**`youtube-shell` es un agente de producción de video, empaquetado como el
gentle-shell es un agente de código: un runtime de agente instalable cuyo
harness interno —gobernanza, fases, checkpoints, linters, verificación— es el
framework del repo de referencia.**

Pitch espejo (del README de gentle-ai):
*"Tu agente produce videos, y después olvida todo. No tiene opinión sobre tu
canal y no puede probar qué hizo más allá de pedirte que revises cada frame.
Este producto le da memoria, pipeline y evidencia."*

## 2. El stack: 4 capas, no confundir las que son tuyas

| Capa | Qué es | Dueño | ¿Qué le toca al producto? |
| :-- | :-- | :-- | :-- |
| 4 · Producto | `youtube-shell`: runtime + harness de video | **nuevo (este trabajo)** | Construirlo |
| 3 · Conocimiento de dominio | El framework del repo de referencia: fases, linters, YMYL, licencias, medición | **el creador (existente)** | Extraerlo y empaquetarlo |
| 2 · Disciplina genérica | gentle-ai (ODD, memoria, evidencia, review) | Gentleman-Programming | **Emular el patrón, no heredar el código** (es para código) |
| 1 · Runtime | `pi` (MIT) | earendil-works | Usarlo, no forkarlo (al menos al inicio) |

**Principio rector:** NO construir runtime. La capa 1 ya tiene dueño y es MIT.
Construir un runtime propio (F2 del diseño) queda explícamente descartado por
ahora; se reevalúa solo si el producto crece fuera del ecosistema pi.

**Moat (por qué este producto tiene valor):** los gates de un agente de código
son TDD, code review, evidencia de commit. Los gates de un agente de video son
**dominio que ningún harness de código conoce**: medición de sonoridad EBU R128,
pistas de audio, frames negros, pacing con excepción justificada, licencias de
assets, políticas de monetización y originalidad de YouTube, anti-slop. Ese
dominio ya está escrito, auditado (2 auditorías internas + 1 externa) y medido
en el repo de referencia. El producto lo convierte de instrucción en control.

## 3. Qué viene del repo de referencia (con rutas exactas)

| Asset | Ruta en el repo de referencia | Se convierte en |
| :-- | :-- | :-- |
| Gobernanza del agente (roles, checkpoints de aprobación, niveles de autonomía) | `AGENTS.md` | Persona + orquestador del paquete |
| Protocolo de herramientas por fase, catálogo con estados de evidencia, MCPs | `_framework/herramientas-y-apis.md` | Integraciones + matriz de capacidades del harness |
| Fases 00→06 por video (contrato canónico de archivos) | `_framework/plantillas/pipeline-video-template/` | Máquina de estados + templates inyectados |
| Roles por fase (investigación, packaging, guion, dirección) | `_framework/roles/01…04-*.md` | Skills del paquete |
| Plantillas de canal | `mis-canales/_plantilla-canal/`, `canales-en-estudio/_plantilla-canal/` | Scaffold de "nueva oficina" al instalar |
| Contingencia y políticas YMYL/léxico | `_framework/contingencia-y-politicas-sensibles.md` | Guardrail de fact-checking |
| Verificador de contrato determinista | `_framework/scripts/check-contrato.sh` | Tool de verificación (patrón de todos los verificadores) |
| Medición objetiva de media (comandos ffmpeg probados) | `_framework/referencias/evidencia-piloto/medicion-master-piloto.md` | Tool de "quality gate" de render |
| Decisiones y specs del saneamiento | `odd/tasks/saneamiento-evidencia-piloto.md` | Registro de contexto (qué se probó y cómo) |
| Cola de pendientes con condiciones de desbloqueo | `PENDIENTES.md` (especialmente P6 y P7) | Historial de decisiones; P7 contiene el diseño |
| Revisión externa + disposition | `_framework/referencias/auditorias/revision-externa-*.md` | Antecedentes; la cita que originó la visión |

**Nota de propiedad:** el repo de referencia es público pero **aún sin
archivo `LICENSE`** (default de GitHub: all rights reserved). El creador es el
dueño del contenido y autoriza la extracción expresamente; para evitar fricción
legal futura, al primer commit del producto se crea un `LICENSE` MIT en el
repo de referencia también. Al extraer assets se conserva atribución al repo
de origen en el `CREDITS.md` del producto.

## 4. Lo que el producto NO trae gratis y hay que construir

Única pieza con ingeniería nueva real:

### 4.1 La máquina de estados de fases
Hoy las fases (00-estado, packaging, guion, storyboard, recursos, métricas) se
cumplen **por buena voluntad del agente** (nivel 1 de los 3 niveles de fuerza).
El producto la convierte en **control estructural** (nivel 3): la fase N no
arranca si la N−1 no está en `APROBADO` con su evidencia física, y la fase de
master no se cierra si el render no pasa la medición.

- Implementación mínima: un script (bash o node, sin dependencias) que lee
  `00-estado-produccion.md` + los archivos de fase y devuelve
  `fases-permitidas` / `bloqueada` con motivo. Mismo patrón que
  `check-contrato.sh` (que ya existe y pasa).
- Los valores de estado ya están normalizados en el repo de referencia:
  `NO_INICIADO | EN_CURSO | BLOQUEADO | PENDIENTE_APROBACION | APROBADO`.
- Cada transición `PENDIENTE_APROBACION → APROBADO` es **solo del creador**
  (checkpoint humano), nunca del agente.

### 4.2 EmPaquetado como paquete instalable de pi
Formato de referencia: `gentle-pi` (npm + package de pi, MIT). El patrón a
copiar: persona inyectada al system prompt, skills registradas, tools propias
(verificadores, medición), orquestador con subagentes, memoria. **Solo el
patrón**: nombre, marca, copy y assets son propios.

### 4.3 Tool de medición de media
Los comandos ya están probados en
`_framework/referencias/evidencia-piloto/medicion-master-piloto.md`
(ffmpeg: `loudnorm`, `blackdetect`, `silencedetect`, `scene`, `ffprobe`).
El producto los convierte en tool que recibe el MP4 + la "hoja de aceptación"
del video y devuelve aprobado/roto con los números.

**COSTO:** todo lo anterior se construye, no se compra. Presupuesto $0:
runtime MIT, herramientas locales, tokens del modelo que el creador ya consume.
Regla dura: **nada en el MVP que cueste dinero.** Las opciones de pago del
dominio (ElevenLabs Creator, suscripciones de imagen) quedan como "integración
opcional del usuario", nunca como dependencia del producto.

## 5. Restricciones duras

1. **Marcas registradas ajenas (ver `TRADEMARKS.md` de los repos de Gentleman-Programming):**
   `gentle-shell`, `Gentle-AI`, `Engram`, `el Gentleman`. Nada de nombres,
   logos o copy derivados. Si el producto se instala sobre pi, se lo nombra
   "paquete para pi", nunca "fork de gentle-shell".
2. **Nombre tentativo: `youtube-shell`** (decisión del creador, 2026-10-21,
   "por ahora"). Antes del primer release: verificar disponibilidad del nombre
   en GitHub (org/repo) y npm. Si `youtube` choca con el uso genérico de la
   marca de Google en un paquete público, candidatos de respaldo: `cutroom`,
   `pilot`, `productor`.
3. **El repo de referencia NO se toca** para construir esto. Sigue siendo la
   oficina del creador y cliente cero (dogfooding): cuando el producto exista,
   la oficina produce con él.
4. **No automatizar lo no validado:** la suite completa de aceptación de media
   (P1 del repo de referencia) no se construye hasta que exista un video real
   al cual aplicarla. El MVP del producto valida contra el caso que ya existe:
   el piloto (`01-olvido-activo-microglia`, en el sandbox de pruebas del
   creador, con medición archivada).

## 6. MVP: qué entra y qué no

**ENTRA (v0.1):**
- Paquete de pi instalable con la persona + gobernanza extraída (AGENTS.md del
  repo de referencia, adaptado a producto).
- Máquina de estados de fases (§4.1) funcionando contra el scaffold 00→06.
- `check-contrato` + verificador de catálogo como tools (patrón existente).
- Tool de medición de media contra hoja de aceptación (§4.3), validada contra
  el master del piloto (caso real: 1 pista, −17.5 LUFS, 14 planos → el
  verificador debe marcarlo "roto contra el estándar de 3 pistas" y esa es la
  prueba de que funciona).
- Skills de los 4 roles de fase.
- Integración FilmCraft MCP (la que ya existe y ya probó render).

**NO ENTRA (v0.1):**
- Runtime propio / CLI standalone (F2).
- Integraciones TTS de pago, generadores de imagen de pago.
- Suite de aceptación auto-calibrada por género (espera al primer video real).
- Distribución pública, página web, marketing.

## 7. Primeras acciones (para el agente que arranca el repo nuevo)

1. Leer este brief completo; leer `PENDIENTES.md` (§P6, §P7) y
   `odd/tasks/saneamiento-evidencia-piloto.md` del repo de referencia.
2. Crear el repo nuevo (privado al arranque), README de 10 líneas con el
   pitch, `LICENSE` MIT, y **este brief como `docs/brief-lector.md`**.
3. PRD de una página (estructura de referencia: `PRD.md` del repo gentle-ai).
4. Prototipo de la máquina de estados (§4.1) validado contra
   `_framework/plantillas/pipeline-video-template/` del repo de referencia
   (copiar las plantillas como fixture de pruebas).
5. Primer smoke test: correr el prototipo sobre la estructura del piloto
   (si el creador autoriza lectura del sandbox `youtube-prueba`, con permiso
   explícito por ruta) y verificar que los estados reportados coinciden con
   lo medido.
6. Solo entonces: esqueleto del paquete de pi.

## 8. Decisiones del creador ya tomadas (no renegociar)

- El producto se construye: sí, y con presupuesto $0.
- Ruta: repo nuevo, el de referencia intacto.
- Forma: paquete de pi (F1) primero; standalone descartado por ahora.
- El nombre "youtube-shell" es tentativo, con revisión de disponibilidad.
- El creador no escribe código: el agente escribe, corre y rompe; el creador
  decide qué tiene que hacer y valida los resultados.
- El canal real del creador (P2 del repo de referencia) sigue frenado por
  decisión suya; el producto NO depende de él.

## 9. Antecedentes que explican por qué existe esto

1. El framework del repo de referencia fue auditado externamente (2026-10-21):
   "aún es instrucciones en Markdown, no controles automatizados". La cita
   completa está en `_framework/referencias/auditorias/revision-externa-2026-10-21.md`.
2. Ese mismo día se midió el master del piloto contra los propios estándares
   del framework: no los cumplía, y nada se dio cuenta (la regla de 3 pistas
   se escribió 28 minutos después del render). Eso es el bug que el producto
   resuelve: **la falta de un runtime que haga cumplir el framework.**
3. El creador ya opera sobre el patrón de referencia: las sesiones de este
   repo se corren con un paquete de pi de esa familia. El piloto de
   FilmCraft fue ejecutado por ese agente. El MVP ya fue validado en vivo;
   falta empaquetarlo.
