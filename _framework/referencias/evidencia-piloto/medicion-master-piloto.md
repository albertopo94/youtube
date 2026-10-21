# Medición objetiva del master del piloto

**Alcance de este documento:** registro reproducible de lo que el master del piloto
**realmente contiene**, medido sobre el archivo, no sobre lo que el framework presume.
Este es el estándar de evidencia que faltaba: el repositorio prescribe controles de
calidad; este archivo demuestra si el único render que existe los cumple, y con qué comando.

- **Video:** `01-olvido-activo-microglia` (canal de ensayo `papers-al-grano`)
- **Archivo medido:** `exports/video_piloto_master.mp4`
- **Ubicación física:** `youtube-prueba/canales-en-estudio/papers-al-grano/videos-en-estudio/01-olvido-activo-microglia/`
  *(fuera del repo maestro; los medios están en `.gitignore`. Este informe transcribe los números, no copia el medio.)*
- **Medido el:** 2026-10-21, con `ffmpeg`/`ffprobe` en macOS Intel x86_64.

---

## 1. Contenedor y streams

| Propiedad | Valor |
| :--- | :--- |
| Duración | **9:36.7** (576.682 s) |
| Resolución | 1920 × 1080 |
| Codec de video | h264, `yuv420p` |
| FPS | 24 |
| Codec de audio | **AAC, 48 kHz, estéreo (1 pista)** |
| Bitrate total | ≈ 1.3 Mbit/s |
| Tamaño | 94 MB |

## 2. Sonoridad (EBU R128 vía `loudnorm print_format=summary`)

| Métrica | Medida | Perfil por defecto del repo | Resultado |
| :--- | :--- | :--- | :--- |
| Loudness integrado | **−17.5 LUFS** | −23 LUFS | ❌ 5,5 LU por encima |
| True Peak | **−7.3 dBTP** | < −1.0 dBTP | ✅ sin distorsión |
| Rango dinámico (LRA) | **1.8 LU** | — | ⚠️ casi plano (huella de voz sola) |

## 3. Integridad visual y de audio

| Chequeo | Método | Resultado |
| :--- | :--- | :--- |
| Frames negros | `blackdetect` | ✅ **0** |
| Silencios > 1 s | `silencedetect n=−45dB` | ✅ **0** |
| Cambios de plano | `select='gt(scene,0.02)'` | **13 cortes → 14 segmentos** |

## 4. Pacing visual real (los 14 segmentos, umbral de escena 0.02)

| Segmento | Duración | Cumple "≤ 4–7 s"? |
| :--: | :--: | :-- |
| 01 | 22.0 s | ❌ |
| 02 | 23.8 s | ❌ |
| 03 | 34.2 s | ❌ |
| 04 | 37.7 s | ❌ |
| 05 | 42.3 s | ❌ |
| 06 | 52.0 s | ❌ |
| 07 | 43.0 s | ❌ |
| 08 | 40.0 s | ❌ |
| 09 | 37.5 s | ❌ |
| 10 | 57.5 s | ❌ |
| 11 | 54.6 s | ❌ |
| 12 | 40.4 s | ❌ |
| 13 | 41.2 s | ❌ |
| 14 | 50.5 s | ❌ |

**Promedio por plano: 41,2 s. Plano más largo: 57,5 s. Total: 14.**
Todos los planos exceden el umbral de 4–7 s por un factor de 6 a 14 veces.

## 5. Diseño sonoro (qué pistas existen en disco)

| Pista exigida | Evidencia en `audio/` | Resultado |
| :--- | :--- | :--- |
| **A1 — Voz** | `B01.wav`…`B07.wav`, `silence.wav`, `concat_list.txt`, `radio_edit_scratch_track.{wav,mp3}` | ✅ presente (scratch, no locución final) |
| **A2 — Música** | **ningún archivo** | ❌ ausente |
| **A3 — SFX** | **ningún archivo** | ❌ ausente |

El `concat_list.txt` demuestra cómo se armó el audio del master: `B01 → silence → B02 → silence → … → B07 → silence`.
**Una sola pista de voz concatenada.** La duración del scratch (576.658 s) coincide con la del master (576.682 s, Δ 24 ms).
Por eso no existe ducking medible: no hay música que hacer duck.

---

## 6. Alcance real de la corrida (lo que el piloto probó y lo que no)

La corrida fue **una corrida de framework** sobre un canal de ensayo, no un video de producto.
Declarar el alcance evita que un render exitoso se lea como "el producto pasó la calidad".

**Comprobado por ejecución real:**
- FilmCraft por CLI/MCP: armado de timeline, inserción de 14 placas, timebase de `254.016.000.000 ticks/s`.
- Render de 9:36 a 1080p en macOS Intel sin fallo de memoria (≈ 18 min a 12.61 fps).
- Pipeline completo `00→07` ejecutado de punta a punta por el agente.

**No ejercitado en este render (ausente en disco):**
- Mezcla de 3 pistas, música, SFX, ducking, normalización a −23 LUFS.
- Overlays de motion graphics (0 clips de EffectCraft; las 14 placas las generó un script Swift/CoreGraphics).
- Locución final (el audio es el *scratch track*).

## 7. Comandos reproducibles

```bash
V=<ruta>/01-olvido-activo-microglia/exports/video_piloto_master.mp4

# Contenedor y streams
ffprobe -v error -show_entries format=duration:stream=codec_type,codec_name,width,height,channels,sample_rate -of default=noprint_wrappers=1 "$V"

# Loudness integrado / True Peak / LRA
ffmpeg -i "$V" -af "loudnorm=print_format=summary" -f null - 2>&1 | grep -E "Input (Integrated|True Peak|LRA)"

# Frames negros
ffmpeg -i "$V" -vf "blackdetect=d=0.1:pix_th=0.10" -an -f null - 2>&1 | grep blackdetect

# Silencios > 1 s
ffmpeg -i "$V" -af "silencedetect=n=-45dB:d=1" -vn -f null - 2>&1 | grep silence_

# Cambios de plano (umbral 0.02)
ffmpeg -i "$V" -vf "select='gt(scene,0.02)',showinfo" -fps_mode vfr -f null - 2>&1 | grep -o "pts_time:[0-9.]*" | cut -d: -f2
```

**Veredicto:** el pipeline técnico y el animatic con scratch track funcionan. El estándar de
calidad que el framework escribió **después** (3 pistas, −23 LUFS, pacing 4–7 s) no aplica a este
render porque se redactó 28 min después del render y sobre una premisa que el master no cumple.
Este informe existe para que el repo no tenga que "creer" que el piloto aprobó calidad: ahora sabe
exactamente qué pasó y qué no.
