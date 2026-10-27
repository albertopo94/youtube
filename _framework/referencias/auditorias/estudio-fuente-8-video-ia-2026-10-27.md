# Estudio y Disposición — Fuente Video con IA: Caso de Estudio Largometraje "Hell Grind" (Chuck Russell)

**Archivo fuente:** `_framework/referencias/caso-estudio-largometraje-ia-hellgrind-transcripcion.md` (`Detrás de Cámaras del Largometraje de 80 min con IA: Hell Grind`, Chuck Russell y Adil, archivado desde la raíz)  
**Fecha de inicio:** 2026-10-27  
**Objetivo:** Extraer la realidad operativa de costos/ratios de generación en producciones extensas con IA, la técnica de utilería integrada en hojas de personaje y el control de estados de daño/desgaste para `roles/04` y `03-storyboard-y-edicion.md`.

---

## Leyenda de Disposición
- ✅ **ADOPTADO:** Se incorpora al framework (roles o plantillas).
- 🟡 **ADAPTADO:** El principio de producción se redimensiona a escala de creador independiente.
- ⚪ **CONSERVADO SIN DUPLICAR:** Ya está cubierto en el framework actual.
- ❌ **RECHAZADO:** No aplica (software cerrado en fase alfa o presupuestos de $69.000).

---

## Hallazgos y Disposición

### 1. La Realidad del Ratio de Generación en Video con IA (El Embudo de Selección)
- **Evidencia:** Para obtener 22 minutos de metraje utilizable (253 planos finales), el equipo generó 16.181 videos y 10.711 imágenes, con un costo real de 1.150.000 créditos (~$69.000). El director enfatiza: *"Las obras maestras no son un solo prompt; son los 26.000 descartes que nadie ve"*. Chuck Russell (director de Hollywood de *The Mask*) valida que en un estudio tradicional esos 22 minutos costarían más de $5.000.000.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3, formalizar la **Heurística del Embudo de Selección**: desmitificar la fantasía del "un solo prompt mágico". El rol del director de IA es filtrar con lupa crítica y descartar planos con fallos físicos o anatómicos antes de forzarlos en la línea de tiempo.

### 2. Hojas de Utilería Integradas en la Hoja de Personaje (*Baked Prop Sheets*)
- **Evidencia:** Los generadores de video con IA imponen un límite estricto en la cantidad de slots de referencia por petición (3 a 5 imágenes). Si se sube una imagen por cada objeto, reloj o arma, se agotan los slots necesarios para el escenario y el sujeto. La solución consiste en **incrustar o dibujar los accesorios pequeños directamente en la misma hoja de referencia del personaje**, permitiendo que el modelo los renderice con fidelidad sin gastar slots adicionales de entrada.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3 y `03-storyboard-y-edicion.md` §1.1, formalizar la técnica de **Hojas de Utilería Integradas (*Baked Prop Sheets*)**.

### 3. Estados Progresivos de Daño y Desgaste (*Damage & Wear States*)
- **Evidencia:** En narrativas donde los personajes sufren combates, caídas o accidentes, no se puede reutilizar la hoja de personaje limpia e intacta en las escenas posteriores al conflicto. El subconsciente del espectador detecta la inconsistencia de inmediato. Es obligatorio preparar variantes del personaje con heridas, suciedad o ropa rota (*injured/damaged sheets*) para preservar la inmersión en el segundo y tercer acto.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3 y `03-storyboard-y-edicion.md` §1.1, incorporar la regla de **Estados Progresivos de Daño y Desgaste**.
