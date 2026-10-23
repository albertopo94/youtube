#!/usr/bin/env bash
#
# test-check-contrato.sh — batería de fixtures del verificador de contrato.
#
# Cada fixture construye un árbol mínimo con UNA violación deliberada y
# asienta el exit code esperado. Nace de la segunda revisión externa
# (2026-10-21, hallazgo C): "add fixtures that deliberately contain an
# invalid state, a missing storyboard block, inconsistent timecodes and an
# unsupported green status. Each should produce a test with an explicitly
# expected exit code."
#
# Uso: bash _framework/scripts/test-check-contrato.sh
# Salida: exit 0 si todos los fixtures se comportan como se espera.

set -uo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
CHECKER="$HERE/check-contrato.sh"
TMP=$(mktemp -d /tmp/check-contrato-test.XXXXXX)
trap 'rm -rf "$TMP"' EXIT
FAILS=0

# ---------------------------------------------------------------------------
# Helper: crea un árbol de video válido mínimo (suite 00..06 + estado OK)
# ---------------------------------------------------------------------------
make_valid_video() {
  local root="$1"
  local v="$root/mis-canales/canal-x/videos-en-estudio/01-video"
  mkdir -p "$v"
  : > "$v/01-packaging.md"
  : > "$v/04-registro-recursos.md"
  : > "$v/05-metricas-retencion.md"
  : > "$v/06-fuentes-y-verificacion.md"
  cat > "$v/00-estado-produccion.md" <<'EOF'
**Estado actual:** `EN_CURSO`
EOF
  cat > "$v/02-guion.md" <<'EOF'
### [B01_Gancho] — Bloque uno
- **Tiempo estimado:** `00:00 - 00:15`
### [B02_Cuerpo] — Bloque dos
- **Tiempo estimado:** `00:15 - 01:00`
EOF
  cat > "$v/03-storyboard-y-edicion.md" <<'EOF'
| **01** | `[B01_Gancho]` | `00:00 - 00:15` |
| **02** | `[B02_Cuerpo]` | `00:15 - 01:00` |
EOF
  # catálogo mínimo: un 🟡 documentado (válido) y un 🟢 con operación (válido)
  mkdir -p "$root/_framework"
  cat > "$root/_framework/herramientas-y-apis.md" <<'EOF'
| Herramienta / Servicio | Fase de Uso | Función en la Oficina | Estado en este Entorno | Acciones Específicamente Probadas | Limitaciones / Condiciones de Uso |
| :--- | :---: | :--- | :---: | :--- | :--- |
| **Alfa** | `01` | Herramienta A | 🟢 PROBADA EN ENTORNO | Operación real ejecutada y resultado inspeccionado. | Límite de prueba. |
| **Beta** | `02` | Herramienta B | 🟡 DOCUMENTADA | Descripción de capacidad documentada. | No probada localmente. |
EOF
}

# ---------------------------------------------------------------------------
# Fixture 0: árbol totalmente válido => exit 0 (la línea base debe pasar)
# ---------------------------------------------------------------------------
R="$TMP/f0"; mkdir -p "$R"; make_valid_video "$R"
bash "$CHECKER" "$R" > /dev/null 2>&1
[ $? -eq 0 ] && echo "  [OK]  f0 árbol válido -> exit 0" || { echo "  [ERR] f0 árbol válido -> ¡no exit 0!"; FAILS=$((FAILS+1)); }

# ---------------------------------------------------------------------------
# Fixture 1: estado inválido ("HECHO" no es un estado normalizado) => exit 1
# ---------------------------------------------------------------------------
R="$TMP/f1"; mkdir -p "$R"; make_valid_video "$R"
sed -i '' 's/`EN_CURSO`/`HECHO`/' "$R/mis-canales/canal-x/videos-en-estudio/01-video/00-estado-produccion.md"
bash "$CHECKER" "$R" > /dev/null 2>&1
[ $? -eq 1 ] && echo "  [OK]  f1 estado inválido -> exit 1" || { echo "  [ERR] f1 estado inválido -> ¡no exit 1!"; FAILS=$((FAILS+1)); }

# ---------------------------------------------------------------------------
# Fixture 2: PUBLICADO es un estado terminal válido => exit 0
# ---------------------------------------------------------------------------
R="$TMP/f2"; mkdir -p "$R"; make_valid_video "$R"
sed -i '' 's/`EN_CURSO`/`PUBLICADO`/' "$R/mis-canales/canal-x/videos-en-estudio/01-video/00-estado-produccion.md"
bash "$CHECKER" "$R" > /dev/null 2>&1
[ $? -eq 0 ] && echo "  [OK]  f2 estado PUBLICADO -> exit 0" || { echo "  [ERR] f2 estado PUBLICADO -> ¡no exit 0!"; FAILS=$((FAILS+1)); }

# ---------------------------------------------------------------------------
# Fixture 3: estado general ausente => exit 1
# ---------------------------------------------------------------------------
R="$TMP/f3"; mkdir -p "$R"; make_valid_video "$R"
: > "$R/mis-canales/canal-x/videos-en-estudio/01-video/00-estado-produccion.md"
bash "$CHECKER" "$R" > /dev/null 2>&1
[ $? -eq 1 ] && echo "  [OK]  f3 estado ausente -> exit 1" || { echo "  [ERR] f3 estado ausente -> ¡no exit 1!"; FAILS=$((FAILS+1)); }

# ---------------------------------------------------------------------------
# Fixture 4: estado con sufijo inválido => exit 1
# ---------------------------------------------------------------------------
R="$TMP/f4"; mkdir -p "$R"; make_valid_video "$R"
sed -i '' 's/`EN_CURSO`/`EN_CURSO_INVALIDO`/' "$R/mis-canales/canal-x/videos-en-estudio/01-video/00-estado-produccion.md"
bash "$CHECKER" "$R" > /dev/null 2>&1
[ $? -eq 1 ] && echo "  [OK]  f4 estado con sufijo inválido -> exit 1" || { echo "  [ERR] f4 estado con sufijo inválido -> ¡no exit 1!"; FAILS=$((FAILS+1)); }

# ---------------------------------------------------------------------------
# Fixture 5: bloque del guion AUSENTE del storyboard => exit 1
# ---------------------------------------------------------------------------
R="$TMP/f5"; mkdir -p "$R"; make_valid_video "$R"
sed -i '' '2d' "$R/mis-canales/canal-x/videos-en-estudio/01-video/03-storyboard-y-edicion.md"
bash "$CHECKER" "$R" > /dev/null 2>&1
[ $? -eq 1 ] && echo "  [OK]  f5 bloque faltante en storyboard -> exit 1" || { echo "  [ERR] f5 bloque faltante en storyboard -> ¡no exit 1!"; FAILS=$((FAILS+1)); }

# ---------------------------------------------------------------------------
# Fixture 6: timecodes inconsistentes entre guion y storyboard => exit 1
# ---------------------------------------------------------------------------
R="$TMP/f6"; mkdir -p "$R"; make_valid_video "$R"
sed -i '' 's|`00:15 - 01:00`|`00:15 - 01:30`|' "$R/mis-canales/canal-x/videos-en-estudio/01-video/03-storyboard-y-edicion.md"
bash "$CHECKER" "$R" > /dev/null 2>&1
[ $? -eq 1 ] && echo "  [OK]  f6 timecodes inconsistentes -> exit 1" || { echo "  [ERR] f6 timecodes inconsistentes -> ¡no exit 1!"; FAILS=$((FAILS+1)); }

# ---------------------------------------------------------------------------
# Fixture 7: 🟢 sin operación probada nombrada => exit 1
# ---------------------------------------------------------------------------
R="$TMP/f7"; mkdir -p "$R"; make_valid_video "$R"
sed -i '' 's/Operación real ejecutada y resultado inspeccionado\.//' "$R/_framework/herramientas-y-apis.md"
bash "$CHECKER" "$R" > /dev/null 2>&1
[ $? -eq 1 ] && echo "  [OK]  f7 🟢 sin operación -> exit 1" || { echo "  [ERR] f7 🟢 sin operación -> ¡no exit 1!"; FAILS=$((FAILS+1)); }

# ---------------------------------------------------------------------------
# Fixture 8: 🟢 con texto que no dice PROBADA (la bug original de Luvvoice) => exit 1
# ---------------------------------------------------------------------------
R="$TMP/f8"; mkdir -p "$R"; make_valid_video "$R"
sed -i '' 's/🟢 PROBADA EN ENTORNO/🟢 DISPONIBLE \/ MCP/' "$R/_framework/herramientas-y-apis.md"
bash "$CHECKER" "$R" > /dev/null 2>&1
[ $? -eq 1 ] && echo "  [OK]  f8 🟢 con texto no PROBADA -> exit 1" || { echo "  [ERR] f8 🟢 con texto no PROBADA -> ¡no exit 1!"; FAILS=$((FAILS+1)); }

echo "------------------------------------------"
if [ "$FAILS" -eq 0 ]; then
  echo "ALL FIXTURES PASS (9/9)"
  exit 0
else
  echo "$FAILS fixture(s) FALLEN"
  exit 1
fi
