# Revisión externa 8 — Seguimiento: sandbox y contrato entre repositorios

> Archivo: seguimiento recibido por el creador tras la revisión externa 7. El texto del revisor
> se conserva íntegro más abajo; los encabezados Markdown y los enlaces que él citó como
> "Procedimiento de copia", "Patrones de .gitignore", "Contrato de fases del runtime",
> "Compromiso documentado entre repositorios" y "Ver ejecución de GitHub Actions" eran enlaces de
> su propio entorno y no quedaron incluidos en el texto que llegó.

---

## Texto del revisor (íntegro)

### Copia al sandbox: riesgo principal resuelto

El procedimiento normal ya no utiliza --delete; conserva los archivos que existan únicamente en youtube-prueba/. La copia destructiva queda separada y requiere revisar los borrados de forma explícita.

Queda un detalle documental: el README afirma que las exclusiones cubren todos los medios descartables del repositorio, pero faltan algunos patrones de .gitignore, entre ellos *.tmp, *.temp, *.log y los proyectos de edición *.prproj, *.drp, *.aep, *.fcpx y *.blend. También faltan ciertos archivos de metadatos del sistema.

No es el mismo problema grave de la sincronización destructiva, que sí está corregido, pero ajustaría la lista o cambiaría esa afirmación por «exclusiones seleccionadas; revisar siempre la copia antes de ejecutarla».

### Relación con youtube-shell: parcialmente resuelta

El repositorio principal describe ahora correctamente youtube-shell como software en desarrollo, con un futuro empaquetado para Pi. Eso corrige la impresión de que el producto ya está terminado.

Pero el repositorio consumidor sigue sin actualizarse: su último commit que he encontrado es del 21 de octubre, y conserva reglas antiguas en sus propias plantillas. Por ejemplo, el estado de producción todavía mezcla ficción y contenido relajado en un mismo régimen y mantiene la antigua regla de audio; el storyboard también conserva instrucciones técnicas antiguas.

Esto no obliga a sincronizar mecánicamente todos los documentos mientras youtube-shell sea pre-MVP. Sí obliga a identificar qué revisión de youtube consume y qué diferencias siguen pendientes de migración, antes de afirmar que ambos repositorios están alineados.

### Verificación automática

La nueva acción de GitHub está funcionando: el trabajo Contract checker fixtures terminó con success, y también pasó la ejecución de check-contrato.sh contra el repositorio actual. No me limito, por tanto, a que el documento de auditoría diga que las pruebas pasaron: he comprobado el resultado publicado por Actions.

Eso valida los controles implementados, no demuestra que el sistema detecte todos los defectos de un vídeo real. El verificador sigue siendo estructural y documental; no sustituye la comprobación humana, la validación de licencias ni la medición real del master.

### Mi conclusión

El repositorio youtube ha mejorado de forma verificable y las correcciones principales están validadas por CI. No veo motivo para reabrir los tres señalamientos que ya has resuelto.

Para cerrar esta ronda, dejaría dos tareas concretas: corregir la afirmación incompleta de las exclusiones del sandbox y documentar la revisión del framework que consume youtube-shell, junto con sus diferencias pendientes. La segunda es necesaria para considerar alineado el conjunto de los dos repositorios.

---

## Disposición

| Punto | Estado | Acción |
| :--- | :--- | :--- |
| Afirmación incompleta de las exclusiones del sandbox | **Resuelto** | Se reemplazó la afirmación de cobertura total por «exclusiones seleccionadas… no sustituyen la revisión de la salida» y se agregaron los patrones faltantes de `.gitignore`: temporales/logs, proyectos de edición y metadatos del sistema. |
| Revisión consumida por `youtube-shell` y diferencias pendientes | **Resuelto como registro de compatibilidad** | Nuevo `_framework/compatibilidad-consumidores.md`: revisa el lock del consumidor, declara su revisión consumida (`f552339` / `v0.3.0`), la deriva de 6 de 7 plantillas espejadas, las 4 reglas con efecto en runtime y la política de versionado. La migración se ejecuta en `youtube-shell`, nunca desde este repo. |
| Verificación automática | **Confirmado por el revisor** | CI público `success`; se mantiene la declaración explícita de que el checker es estructural y documental. |

**Límite registrado:** el documento de compatibilidad describe el estado observado en el lock del
consumidor en la fecha indicada; no suscribe que ambos repositorios estén alineados. La alineación
solo existirá cuando `youtube-shell` adopte las reglas y actualice su propio lock.

---

## Detalle posterior del revisor (2026-10-23)

> Como detalle menor, todavía faltan en las exclusiones del README algunos patrones de
> `.gitignore`, como `._*`, `.Trashes` y `ehthumbs.db`. Como ahora se advierte que son
> exclusiones seleccionadas, no lo considero un bloqueo.

**Disposición — resuelto.** Se agregaron `._*`, `.Trashes` y `ehthumbs.db` al comando de copia
(commit `d800218`).

**Verificación adicional:** se contrastó la lista de `--exclude` del README contra los 41 patrones
de `.gitignore`. Resultado: **cobertura completa**, sin omisiones. Las 9 exclusiones adicionales
del README son deliberadas y no provienen de `.gitignore` (`.git/`, `.npmrc`, `credentials.json`,
`*credential*`, `*secret*`, `*.p12`, `*.pfx`, `*.mp3` y las carpetas del pipeline
`audio/ video/ clips/ thumbs/`).

La advertencia de «exclusiones seleccionadas; revisar siempre la salida» se mantiene: la
igualdad nominal con `.gitignore` no garantiza que un archivo nuevo fuera de ambos listados no
viaje al sandbox.
