# 03 - Storyboard, Orquestación de Assets y Plan de Montaje

- **Canal / Video:** 
- **Entorno de Montaje Principal:** `[ ] FilmCraft (CLI / MCP)` / `[ ] DaVinci Resolve` / `[ ] Premiere Pro` / `[ ] CapCut` / `[ ] Híbrido`
- **Estrategia de Adquisición Multifuente:**
  - *Generación Cinemática / Abstracta:* Google Flow / Midjourney / Flux
  - *B-Roll Real / Documental:* Coverr / Pexels / Wikimedia Commons / Google Imágenes
  - *Motion Graphics / Efectos:* EffectCraft / Rótulos gráficos

---

## 🎨 1. Consistencia Visual y Libertad de Contraste Intencional

- **Anclajes de Coherencia Estética del Video:**
  1. *Motor / Medio visual:* `[ej. Cinematic 35mm grain / Ilustración 3D / Micrografía de laboratorio]`
  2. *Paleta cromática dominante:* `[ej. Tonos fríos azulados con sombras navy y acentos teal]`
  3. *Iluminación y óptica:* `[ej. Volumétrica suave, lente 50mm con poca profundidad de campo]`
  4. *Sujeto / Escenario Maestro:* `[Imagen o nodo de referencia fijado en Google Flow]`
- **Rupturas Visuales Intencionales (Opcional por humor o impacto):**  
  *(¿Hay algún plano que rompe deliberadamente el estilo para causar gracia, sorpresa o excentricidad consciente? ej. meme retro pixel art, plano VHS o dibujo infantil)*:

---

## 🚦 2. Fase 1: Montaje Preliminar (Animatic & Radio Edit)

> **Punto de control de costos y ritmo:** Antes de generar renders en alta resolución con IA o descargar clips de pago, se monta la locución provisional con imágenes temporales de baja fidelidad.

- [ ] **Radio Edit completado:** Locución provisional montada con silencios y pausas medidos.
- [ ] **Wireframe visual (Animatic):** Placas temporales o capturas fijadas sobre la voz para verificar el ritmo.
- [ ] **Hito de Aprobación Narrativa (Creador):**
  - ¿Algún bloque se siente denso o apresurado? (Ajustar en `02-guion.md`).
  - *Estado:* `[ ] Aprobado para producción definitiva` / `[ ] Requiere ajustes`

---

## 🎬 3. Fase 2: Tabla de Escenas y Adquisición de Assets

> **Nota de trazabilidad y entrega de prompts:** Cada fila enlaza con el bloque de guion `[Bxx]` correspondiente.  
> **Ficha de Prompt Obligatoria:** Todo prompt que el agente entregue al creador debe indicar:  
> 1) *Tipo de Asset* (🖼️ Imagen estática / 🎥 Clip de video / 🎵 Música / 🔊 SFX).  
> 2) *Herramienta y Pestaña exacta* (ej. Google Flow `flow.google.com` ➔ Pestaña *"Imagen"* vs. Pestaña *"Video"*).  
> 3) *Modo operativo* (Text-to-Image 16:9, Image-to-Video con cámara, etc.).  
> 4) *Prompt listo para copiar*.

| Escena # | Bloque Guion | Timecode | Texto de Locución Asociado | Tipo de Asset (Imagen / Video / Audio) | Herramienta Destino & Módulo Exacto | Prompt de Generación / URL del Asset | Diseño Sonoro (SFX / Música) |
| :---: | :---: | :---: | :--- | :---: | :--- | :--- | :--- |
| **01** | `[B01_Dilema]` | `00:00 - 00:08` | *"..."* | 🖼️ Imagen estática *(luego animar)* | Google Flow ➔ Pestaña *"Imagen"* (Imagen 3) | `[Prompt con anclajes de estilo] --ar 16:9` | Impact Whoosh + Pista musical |
| **02** | `[B02_FalsaCausa]` | `00:08 - 00:25` | *"..."* | 🎥 Clip de video | Stock libre: Coverr / Pexels | `[URL directa de búsqueda / descarga]` | Sub-bass bajo voz |
| **03** | `[B03_Anomalia]` | `00:25 - 01:10` | *"..."* | 🎥 Clip de video cinemático | Google Flow ➔ Pestaña *"Video"* (Veo) | `[Prompt con movimiento de cámara]` | SFX click en palabra clave |
| **...** | ... | ... | ... | ... | ... | ... | ... |

---

## 🎛️ 4. Las 4 Capas Obligatorias de Pulido Técnico (No Aceptar Ensambles Crudos)

Para que el montaje se considere profesional (sea ejecutado por el agente en FilmCraft o en editor de escritorio), debe incorporar estas cuatro capas:

1. **Regla de Pacing Visual y Densidad de Planos (Máximo 4 a 7s por cambio):**
   - [ ] **Sin imágenes congeladas:** Ningún plano o gráfico estático permanece en pantalla más de 4 a 7 segundos sin variación visual (corte a nuevo plano, detalle B-roll, zoom punch-in de escala 100% a 105% o aparición escalonada de textos y flechas).
2. **Cortes de Continuidad (J-Cuts y L-Cuts):**
   - [ ] En transiciones narrativas clave, el audio de la siguiente escena entra entre 12 y 24 fotogramas (0.5 a 1s) antes de que la imagen corte, evitando cambios de plano secos.
3. **Arquitectura Obligatoria de 3 Pistas de Audio (Diseño Sonoro y Ducking):**
   - [ ] **Pista A1 (Voz):** Nivel de locución normalizado a estándares de transmisión (-23 LUFS / `essentialSound.autoMatch`).
   - [ ] **Pista A2 (Música):** Curva de ducking sobre la música: reducida a **-18 dB / -24 dB** durante la voz, subiendo con rampa suave (*fade-up*) a **-12 dB** en las pausas dramáticas (`essentialSound.generateDucking`).
   - [ ] **Pista A3 (SFX):** Efectos de sonido de acento (impactos, swooshes, clicks) colocados exactamente en la sílaba o fotograma donde ocurre el gancho visual.
4. **Dinámica de Cuadro (*Pacing Visual*):**
   - [ ] En planos estáticos o imágenes fijas de más de 3 segundos, aplicar zooms continuos sutiles (*punch-ins* de escala 100% a 105% o paneo Ken Burns) para evitar sensación de foto congelada.
