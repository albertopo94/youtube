# Estudio y Disposición — Fuente 10 de Video con IA: Hell Grind Episodio 2 (Control de Renders, Aislamiento Acústico y Emoción Física)

**Archivo fuente:** `_framework/referencias/produccion-largometraje-ia-hellgrind-episodio-2.md` (`Detrás de Cámaras: Producción Real de Escenas Emocionales en Largometraje IA`, archivado desde la raíz)  
**Fecha de inicio:** 2026-10-27  
**Objetivo:** Extraer las directivas de aislamiento de audio en prompts de video, límites de iteración en Image-to-Image para evitar degradación plástica, prefijos de estilo fijos y dirección de emociones por micro-acciones corporales para `roles/04` y `03-storyboard-y-edicion.md`.

---

## Leyenda de Disposición
- ✅ **ADOPTADO:** Se incorpora al framework (roles o plantillas).
- 🟡 **ADAPTADO:** El principio de producción se redimensiona a escala de creador independiente.
- ⚪ **CONSERVADO SIN DUPLICAR:** Ya está cubierto en el framework actual.
- ❌ **RECHAZADO:** No aplica (costos extremos de $260k, cortes manuales de fotogramas dobles que generan tirones).

---

## Hallazgos y Disposición

### 1. La Regla de Aislamiento Acústico en Prompts de Video (`No Music in Video Prompt`)
- **Evidencia:** Los modelos de video generativo con audio integrado (Seedance, Kling, Runway) tienden a incrustar música dramática automáticamente en momentos emotivos. Esta música queda mezclada en una pista única mono inseparable, arruinando la mezcla profesional en postproducción.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3 y `03-storyboard-y-edicion.md` §3.1, formalizar la **Regla de Aislamiento Acústico**: es obligatorio incluir en todo prompt de video con audio la directiva explícita: `"environmental sound effects only, no music, no subtitles"`. La música se incorpora siempre de forma limpia en el editor de video.

### 2. El Límite de Degeneración por Iteración en Image-to-Image
- **Evidencia:** Re-generar e iterar sucesivamente sobre una misma imagen modificada (Image-to-Image encadenado) degrada la resolución, multiplica los artefactos de plástico y confunde la lógica espacial del modelo. A partir de 2 iteraciones consecutivas, se debe descartar el encadenamiento y solicitar un **prompt de texto limpio consolidado (*Text-to-Image*)** con todos los cambios acumulados.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3 y `03-storyboard-y-edicion.md` §3.1, añadir la **Regla de Máximo 2 Iteraciones Image-to-Image** antes de resetear al prompt matriz limpio.

### 3. El Prefijo de Estilo Fijo (*Style Prefix*)
- **Evidencia:** Para evitar que planos generados en distintos días o escenas parezcan pertenecer a universos diferentes, se define un bloque innegociable de cabecera que se incrusta en todos los prompts del proyecto (tipo de iluminación natural, procedencia de luz clave, color grading y grano).
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3, consolidar el **Prefijo de Estilo Fijo (*Style Prefix*)** como bloque maestro en la tabla de storyboard.

### 4. Dirección de Emociones por Micro-Acción Física
- **Evidencia:** Describir en el prompt adjetivos abstractos de emoción ("Roko está destrozado, llorando desconsoladamente") provoca que la IA genere caras estáticas, confusas o neutras. Indicar la **mecánica física involuntaria** ("su labio inferior tiembla, baja la mirada, apoya la cabeza hacia atrás contra la pared e inhala profundamente") produce actuaciones dramáticas infinitamente más orgánicas.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3, añadir la directiva de **Dirección de Emociones por Micro-Acción Física en Prompts**.
