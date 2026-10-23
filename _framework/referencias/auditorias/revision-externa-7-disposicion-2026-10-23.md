# Disposición — Revisión externa 7

- **Fecha:** 2026-10-23
- **Fuente:** `revision-externa-7-originales-senalamientos-2026-10-23.md`
- **Estado:** correcciones aplicadas y verificadas localmente.

| Punto | Disposición | Evidencia |
| :-- | :-- | :-- |
| A. `PUBLICADO` sin validar ubicación | **Adoptado** | `check-contrato.sh` admite `PUBLICADO` solo en `mis-canales/<canal>/videos-publicados/<video>/`. Los fixtures cubren archivo válido y video en estudio inválido. |
| B. Audio residual en plantilla de estado | **Adoptado** | `00-estado-produccion.md` y su copia eliminan −23 LUFS de voz aislada; exigen criterio por formato, master final documentado, picos y escucha de control. |
| C. Sandbox destructivo y exclusiones incompletas | **Adoptado** | README elimina `--delete` de la copia normal; agrega `raw_footage/`, `cache/`, `.aiff`, `.flv` y separa explícitamente una eventual sincronización destructiva. |
| D. Estado y compatibilidad de `youtube-shell` | **Adoptado localmente** | La documentación de este repo declara que `youtube-shell` existe y está en desarrollo hacia empaquetado Pi; no afirma que ya esté distribuido. Las plantillas/locks del consumidor se actualizan únicamente en su repositorio. |
| E. Ejecución continua del checker | **Adoptado** | `.github/workflows/contract-check.yml` ejecuta fixtures y checker en push y pull request. La primera ejecución remota se observará tras publicar esta versión. |

## Verificación local

- `bash _framework/scripts/test-check-contrato.sh` → `ALL FIXTURES PASS (10/10)`.
- `bash _framework/scripts/check-contrato.sh .` → `CONTRATO CUMPLIDO` (sin videos activos: aviso esperado).
- `bash -n _framework/scripts/check-contrato.sh _framework/scripts/test-check-contrato.sh` → sin errores.
- `diff` entre plantilla de estado canónica y copia de videos en estudio → sin diferencias.
- `git diff --check` → sin errores.

## Límite explícito

El workflow queda versionado pero su primera corrida de GitHub Actions solo puede confirmarse después del push. El estado de implementación y las migraciones de `youtube-shell` siguen siendo responsabilidad de ese repositorio separado.
