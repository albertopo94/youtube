# Disposición — Revisión externa 6

- **Fecha:** 2026-10-23
- **Fuente:** `revision-externa-6-originales-senalamientos-2026-10-23.md`
- **Estado:** correcciones documentales y del verificador aplicadas; los límites propios de un framework Markdown se registran explícitamente.

| # | Hallazgo | Disposición | Evidencia / cambio |
| :--: | :-- | :-- | :-- |
| 1 | `PUBLICADO` no era estado válido | **Adoptado** | Plantillas y `check-contrato.sh` aceptan `PUBLICADO` como estado terminal; fixture dedicado. |
| 2 | Orden de producción contradictorio | **Adoptado** | `_framework/ciclo-produccion.md` se declara vista estratégica y alinea `Packaging First` con el pipeline canónico. |
| 3 | Decisión de `youtube-shell` no uniforme | **Adoptado** | `PENDIENTES.md` y el brief registran que `youtube-shell` existe como repo/paquete separado; 7 fases semánticas viven en su contrato de runtime. |
| 4 | Causalidad excesiva sobre recomendaciones | **Adoptado** | `roles/01` conserva el consejo editorial y elimina la promesa de penalización automática; enlaza ayuda oficial de YouTube. |
| 5 | Audio y −23 LUFS contradictorios | **Adoptado** | Rol, plantilla y `AGENTS.md` separan voz, mezcla y master final; capas opcionales según formato; −23 LUFS queda como referencia de programa EBU R 128. |
| 6 | Ficción confundida con ausencia de hechos | **Adoptado** | Plantillas separan formato de riesgo factual; `N/A` solo cuando no hay afirmaciones sobre la realidad. |
| 7 | Copia a sandbox incompleta | **Adoptado** | README exige dry-run y amplía exclusiones de credenciales y medios; sigue siendo una revisión humana obligatoria, no un aislamiento de seguridad. |
| 8 | Checker con validación parcial | **Adoptado parcialmente** | Ahora exige una línea de estado exacta y añade fixtures para `PUBLICADO`, ausencia y sufijos inválidos. No pretende validar aprobación humana, licencias, master ni evidencia material: esos controles pertenecen a revisiones específicas y al runtime consumidor. |
| 9 | Ancla inexistente | **Adoptado** | Ambos `banco-de-titulos.md` apuntan directamente a `roles/02` §§5–6; se elimina el ancla ficticia. |
| 10 | Atribuciones de plataforma imprecisas | **Adoptado** | Se elimina el mecanismo NLP no demostrado; la declaración de IA se formula según el alcance aplicable de contenido sintético y música como foco principal. |

## Verificación

- `bash _framework/scripts/test-check-contrato.sh` → `ALL FIXTURES PASS (9/9)`.
- `bash _framework/scripts/check-contrato.sh .` → `CONTRATO CUMPLIDO` (sin videos activos: un aviso esperado).
- Las cuatro plantillas sincronizadas de videos en estudio fueron comparadas con `diff`.
- `git diff --check` no informó errores de espacio.

## Límites explícitos

Este repositorio documenta y verifica parte del contrato de producción. No sustituye los gates estructurales, la autoridad de aprobación humana ni la validación de operaciones del runtime; esas responsabilidades pertenecen a `youtube-shell` en su repositorio separado.
