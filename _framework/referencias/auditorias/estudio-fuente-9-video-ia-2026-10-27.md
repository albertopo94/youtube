# Estudio y Disposición — Fuente 9 de Video con IA: Coreografía de Acción, Texturas de Piel y Control de Renders

**Archivo fuente:** `_framework/referencias/coreografia-peleas-y-texturas-ia-transcripcion.md` (`Coreografía de Peleas, Texturas Realistas y Optimización de Renders en Cortos con IA`, archivado desde la raíz)  
**Fecha de inicio:** 2026-10-27  
**Objetivo:** Extraer las técnicas de texturizado secundario (anti-piel plástica), economía de créditos con borradores en 480p, solapamiento de diálogos para cortes continuos y dirección de multitudes para `roles/04` y `03-storyboard-y-edicion.md`.

---

## Leyenda de Disposición
- ✅ **ADOPTADO:** Se incorpora al framework (roles o plantillas).
- 🟡 **ADAPTADO:** Se despoja de herramientas de pago específicas (Soul Cinema, Seedream) haciéndolo agnóstico.
- ⚪ **CONSERVADO SIN DUPLICAR:** Ya está cubierto en el framework actual.
- ❌ **RECHAZADO:** No aplica (promociones o software cerrado).

---

## Hallazgos y Disposición

### 1. La Regla de Borradores en 480p antes de Renderizar en 1080p
- **Evidencia:** Generar tandas de exploración directamente en resolución máxima (1080p o 4K) quema créditos innecesariamente. Las opciones de prueba para validar encuadre, posición de personajes y fluidez de cámara deben correrse en **baja resolución / borrador (480p)**. Una vez elegida la toma ganadora, se renderiza esa versión definitiva en 1080p.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3 y `03-storyboard-y-edicion.md` §3.1, formalizar la **Regla de Borradores en 480p**.

### 2. Texturizado Secundario contra la "Piel de Plástico" (*Poros, no Parches*)
- **Evidencia:** Cuando los modelos de imagen/video generan personajes con aspecto encerado, piel plástica o cabello sin volumen, se inyectan referencias secundarias de textura orgánica (fotografías macro de poros de piel real, mechones de pelo natural y tejido de telas).
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3, incorporar la técnica de **Texturizado Secundario**.

### 3. Solapamiento de Diálogo para Empalme de Tomas (*Dialogue Overlap*)
- **Evidencia:** Al generar dos clips continuos de una conversación con IA, repetir la última línea de diálogo de la toma anterior al inicio del prompt de la toma siguiente. Esto genera 1 a 2 segundos de solapamiento de audio y movimiento labial que le da al editor margen para elegir el punto de corte perfecto sin que la frase quede truncada.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3 y `03-storyboard-y-edicion.md` §3.1, formalizar la técnica de **Solapamiento de Diálogo para Empalme**.

### 4. Ocultar Cortes en Barridos Rápidos (*Whip Pan / Motion Masking*)
- **Evidencia:** Para encadenar tomas de acción o combate entre dos generaciones de video distintas sin que se noten costuras, terminar la toma 1 con un movimiento lateral rápido (barrido de cámara o giro del personaje) e iniciar la toma 2 con el mismo impulso. El desenfoque de movimiento (*motion blur*) oculta la transición.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §5 (Continuity), añadir el **Ocultamiento de Cortes en Barridos**.

### 5. Asignación de Micro-Tareas para Multitudes
- **Evidencia:** Al pedir multitudes o grupos de fondo, la IA tiende a moverlos al unísono como robots sincronizados. En el prompt se debe dar una acción diferenciada a cada grupo (unos charlan con tragos, otros bailan de frente, otros caminan).
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3, incorporar la regla de **Micro-Tareas para Multitudes**.
