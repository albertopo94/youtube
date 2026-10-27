# Estudio y Disposición — Fuente 3 de Video con IA: Pipeline Asset-First y Dirección Dramática

**Archivo fuente:** `_framework/referencias/pipeline-assets-y-direccion-ia-transcripcion.md` (`Pipeline Asset-First y Dirección de Actuación en Video con IA`, Alan Shia / Flick / Task Hunters, archivado desde la raíz)  
**Fecha de inicio:** 2026-10-27  
**Objetivo:** Extraer las técnicas de diseño de activos previo a la generación, anclas espaciales de movimiento en prompts, rima visual atmosférica y acabado cinematográfico anti-plástico para `roles/04` y `03-storyboard-y-edicion.md`.

---

## Leyenda de Disposición
- ✅ **ADOPTADO:** Se incorpora al framework (roles o plantillas).
- 🟡 **ADAPTADO:** El principio de software de pago (Topaz/DaVinci AI) se hace agnóstico de herramientas.
- ⚪ **CONSERVADO SIN DUPLICAR:** Ya está cubierto en el framework actual.
- ❌ **RECHAZADO:** No aplica (marcas específicas o ataduras a software cerrado).

---

## Hallazgos y Disposición

### 1. El Pipeline Asset-First para Personajes IA (Mentalidad Game Dev / Kojima)
- **Evidencia:** Tratar la producción audiovisual con IA como el desarrollo de un videojuego: diseñar y fijar los **activos (assets) antes de generar las tomas**. Para un personaje, esto implica definir de antemano vestuario diario vs. de trabajo, cicatrices, accesorios, y estados clave (ej. cómo luce con capucha y qué corte exacto de pelo tiene cuando se la quita). Los objetos que usa el personaje (su herramienta, cuchillo, vehículo) reflejan su personalidad y trasfondo.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3 y `03-storyboard-y-edicion.md` §1.1, formalizar el **Pipeline Asset-First para Personajes IA**, exigiendo documentar variantes de estado y accesorios antes de animar.

### 2. Objetos del Entorno como Anclas de Trayectoria en Prompts
- **Evidencia:** Para controlar el movimiento preciso de vehículos o personajes en generadores de video (evitando que se muevan en direcciones arbitrarias), se utiliza un objeto estático del fondo como punto de referencia: *"el jeep avanza desde la cámara y se detiene exactamente donde está el piano roto"*.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3, incorporar la técnica de **Anclas de Trayectoria en Prompts de Video**.

### 3. Rima Visual Repetida con Variación Atmosférica (Arco Emocional sin Diálogo)
- **Evidencia:** Alan Shia utiliza la misma acción física 3 veces a lo largo del film (Iván mirando al cielo) pero alterando el clima, la iluminación y el encuadre para comunicar el arco psicológico:
  - *Plano 1 (Salida):* Luz neutra, niebla suave, plano medio (incertidumbre).
  - *Plano 2 (Conflicto):* Lluvia, fondo muy desenfocado, humo de cigarrillo en primer término (tensión interior).
  - *Plano 3 (Resolución):* Sol de amanecer, ángulo de perfil de alivio, exhalación profunda (liberación).
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §6 y `roles/03` §2, formalizar la técnica de **Rima Visual Atmosférica** para comunicar transformación emocional sin sobrecargar de diálogos.

### 4. Acabado Cinematográfico Anti-Plástico (Tratamiento Postproducción)
- **Evidencia:** Alan utiliza Topaz AI y DaVinci Resolve para añadir grano fílmico sutil, enfocar mediante profundidad de campo y suavizar los bordes excesivamente afilados del render digital.
- **Disposición:** 🟡 **ADAPTADO (Agnóstico de Software).**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §5 (Style), añadir la directiva de **Eliminación del Look Digital Plástico**: aplicar grano fílmico orgánico y desenfoque perimétrico de lente en el editor de video disponible (DaVinci, FilmCraft, Premiere, etc.), sin requerir herramientas de pago como Topaz.
