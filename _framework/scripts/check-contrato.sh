#!/usr/bin/env bash
#
# check-contrato.sh — verificador determinista de contrato para la oficina de YouTube.
#
# Qué comprueba (y por qué):
#   1. Que existan los 7 archivos canónicos de un video en producción (00..06).
#      Un agente que no los crea no puede declarar la fase APROBADO.
#   2. Que los estados de producción usen solo valores permitidos.
#      "COMPLETADO" o "HECHO" no son estados; son declaraciones sin evidencia.
#   3. Que los timecodes de 02-guion.md y 03-storyboard-y-edicion.md coincidan
#      por ID de bloque. El guion y el storyboard describen el mismo video.
#      Antes esta comprobación la hacía un agente leyendo; y un agente que no
#      la hacía no avisaba.
#   4. Que cada fila con color 🟢 en herramientas-y-apis.md declare qué
#      operación probó. Un 🟢 sin operación concreta es un 🟡 disfrazado.
#
# Uso:
#   bash _framework/scripts/check-contrato.sh [raiz-del-repo]
#
# Salida:
#   exit 0 = contrato cumplido
#   exit 1 = alguna violación (se lista cada una)
#   exit 2 = error de uso / archivo no encontrado

set -euo pipefail

ROOT="${1:-.}"
FAIL=0
WARN=0

pass() { printf '  [OK]  %s\n' "$1"; }
fail() { printf '  [ERR] %s\n' "$1"; FAIL=$((FAIL+1)); }
warn() { printf '  [?]   %s\n' "$1"; WARN=$((WARN+1)); }
sec() { printf '\n=== %s ===\n' "$1"; }

# ---------------------------------------------------------------------------
sec "1. Archivos canónicos por video en producción"
# ---------------------------------------------------------------------------
found_video=0
while IFS= read -r estado; do
  dir=$(dirname "$estado")
  found_video=1
  missing=""
  for n in 00-estado-produccion 01-packaging 02-guion 03-storyboard-y-edicion 04-registro-recursos 05-metricas-retencion 06-fuentes-y-verificacion; do
    if [ ! -f "$dir/$n.md" ]; then missing="$missing $n"; fi
  done
  if [ -z "$missing" ]; then
    pass "$(basename "$dir") — suite 00..06 completa"
  else
    fail "$(basename "$dir") — faltan:$missing"
  fi
done < <(find "$ROOT/mis-canales" "$ROOT/canales-en-estudio" -name '00-estado-produccion.md' -not -path '*/_plantilla*' 2>/dev/null || true)
[ "$found_video" -eq 0 ] && warn "no hay videos en producción (solo plantillas); nada que verificar"

# ---------------------------------------------------------------------------
sec "2. Estados de producción válidos"
# ---------------------------------------------------------------------------
while IFS= read -r estado; do
  rel=${estado#"$ROOT"/}
  bad=$(grep -E 'Fase activa' "$estado" | grep -vE 'NO_INICIADO|EN_CURSO|BLOQUEADO|PENDIENTE_APROBACION|APROBADO' | grep -vE '^\s*$' || true)
  if [ -z "$bad" ]; then
    pass "$rel — estado normalizado"
  else
    fail "$rel — estado no reconocido: $(echo "$bad" | head -1 | cut -c1-60)"
  fi
done < <(find "$ROOT/mis-canales" "$ROOT/canales-en-estudio" -name '00-estado-produccion.md' -not -path '*/_plantilla*' 2>/dev/null || true)

# ---------------------------------------------------------------------------
sec "3. Timecodes guion vs storyboard"
# ---------------------------------------------------------------------------
# Extraer (id_bloque, inicio, fin) de cada archivo. El guion usa
#   ### [B01_Dilema_BucleAbierto] — ...
#   - **Tiempo estimado (Ejemplo):** `00:00 - 00:15`
# El storyboard usa
#   | **01** | `[B01_Dilema_BucleAbierto]` | `00:00 - 00:15` |
# Si un lado tiene "← derivar", se salta (la plantilla lo permite).
check_pair() {
  local guion="$1" story="$2"
  local label
  label="$(basename "$(dirname "$guion")")"
  local g
  g=$(grep -oE '\[B[0-9]{2}_[A-Za-z_]+\]' "$guion" 2>/dev/null | tr -d '[]' | while read -r id; do
       tc=$(grep -A1 "### \[$id\]" "$guion" 2>/dev/null | grep -oE '`[0-9]{2}:[0-9]{2} - [0-9]{2}:[0-9]{2}`' | head -1 | tr -d '`')
       [ -n "$tc" ] && printf '%s|%s\n' "$id" "$tc" || true
     done) || true
  # storyboard: pares id|inicio|fin
  local s
  s=$(grep -oE '`\[B[0-9]{2}_[A-Za-z_]+\]`' "$story" 2>/dev/null | tr -d '`[]' | tr ' ' '_' | while read -r id; do
       tc=$(grep -F "[$id]" "$story" 2>/dev/null | grep -oE '`[0-9]{2}:[0-9]{2} - [0-9]{2}:[0-9]{2}`|`← derivar`' | head -1 | tr -d '`')
       [ -n "$tc" ] && printf '%s|%s\n' "$id" "$tc" || true
     done) || true
  # cruzar
  if [ -z "$g" ]; then
    warn "$label — el guion no usa IDs [Bxx_Nombre]; no se pueden cruzar timecodes (¿plantilla antigua?)"
    return 0
  fi
  while IFS='|' read -r gid gtc; do
    local stc
    stc=$(printf '%s\n' "$s" | awk -F'|' -v id="$gid" '$1==id {print $2}')
    case "$stc" in
      '')          warn "$label — $gid existe en guion pero no en storyboard";;
      "← derivar") pass "$label — $gid storyboard derivado de guion (permitido)";;
      "$gtc")      pass "$label — $gid coincide ($gtc)";;
      *)           fail "$label — $gid: guion '$gtc' vs storyboard '$stc'";;
    esac
  done < <(printf '%s\n' "$g" | grep -v '^$' || true)
  return 0
}
while IFS= read -r guion; do
  story="${guion%02-guion.md}03-storyboard-y-edicion.md"
  [ -f "$story" ] && check_pair "$guion" "$story"
done < <(find "$ROOT/mis-canales" "$ROOT/canales-en-estudio" -name '02-guion.md' -not -path '*/_plantilla*' 2>/dev/null || true)

# ---------------------------------------------------------------------------
sec "4. Coherencia de colores del catálogo"
# ---------------------------------------------------------------------------
CATALOG="$ROOT/_framework/herramientas-y-apis.md"
if [ -f "$CATALOG" ]; then
  # Regla 4a: una fila con 🟢 debe decir PROBADA en su celda de estado.
  #   ('🟢 DISPONIBLE / MCP' era la bug original: color verde con texto amarillo.)
  # Regla 4b: una fila con 🟢 debe tener la columna 'Acciones Específicamente
  #   Probadas' no vacía (>= 3 palabras). Sin operación nombrada, es un 🟡.
  rows=$(grep -E '^\| \*\*' "$CATALOG" || true)
  if [ -z "$rows" ]; then
    warn "catálogo — no se encontraron filas de herramientas"
  fi
  while IFS= read -r line; do
    tool=$(echo "$line" | awk -F'|' '{gsub(/[[:space:]]/,"",$2); print $2}')
    status=$(echo "$line" | awk -F'|' '{print $5}')
    actions=$(echo "$line" | awk -F'|' '{print $6}')
    case "$status" in
      *'🟢'*)
        case "$status" in
          *PROBADA*) : ;;
          *) fail "catálogo — '$tool': color 🟢 con texto '$(echo "$status" | tr -d ' |' | cut -c1-30)'; el verde exige la palabra PROBADA" ;;
        esac
        words=$(echo "$actions" | wc -w | tr -d ' ')
        if [ "$words" -lt 3 ]; then
          fail "catálogo — '$tool': 🟢 sin operación probada nombrada (columna Acciones vacía; debería ser 🟡 DOCUMENTADA)"
        fi
        ;;
      *'🟡'*)
        case "$status" in
          *DOCUMENTA*) : ;;
          *) fail "catálogo — '$tool': color 🟡 con texto '$(echo "$status" | tr -d ' |' | cut -c1-30)'; el amarillo exige DOCUMENTADA" ;;
        esac
        ;;
    esac
  done < <(printf '%s\n' "$rows")
else
  fail "catálogo no encontrado"
fi

# ---------------------------------------------------------------------------
printf '\n============================================\n'
printf 'Resultado: %d error(es), %d aviso(s)\n' "$FAIL" "$WARN"
[ "$FAIL" -gt 0 ] && { printf 'CONTRATO VIOLADO\n'; exit 1; }
printf 'CONTRATO CUMPLIDO\n'
exit 0
