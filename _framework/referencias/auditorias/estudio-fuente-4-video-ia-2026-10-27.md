# Estudio y Disposición — Fuente 4 de Video con IA: Diseño Sonoro, Foley y Física Acústica

**Archivo fuente:** `_framework/referencias/foley-y-diseno-sonoro-ia-transcripcion.md` (`Diseño de Sonido y Foley Multicapa en Cine con IA`, Sam Wasserman / The Miracle / Flick, archivado desde la raíz)  
**Fecha de inicio:** 2026-10-27  
**Objetivo:** Integrar las directivas de realismo acústico táctil, capas de Foley contextualizadas al entorno y búsqueda de efectos por física del evento en `roles/04` y `03-storyboard-y-edicion.md`.

---

## Leyenda de Disposición
- ✅ **ADOPTADO:** Se incorpora al framework (roles o plantillas).
- 🟡 **ADAPTADO:** El principio se formula de forma agnóstica de software.
- ⚪ **CONSERVADO SIN DUPLICAR:** Ya está cubierto en el framework actual.
- ❌ **RECHAZADO:** No aplica (software cerrado o funciones propietarias).

---

## Hallazgos y Disposición

### 1. La Trampa del Audio Nativo de Generadores de IA
- **Evidencia:** Los generadores de video con IA que ofrecen audio integrado producen pistas monoaurales, metálicas o desincronizadas. La inmersión en universos sintéticos depende de **reconstruir el audio en el editor con múltiples capas independientes** (diálogos, efectos de fondo, música, SFX táctiles y tono de sala continuo).
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §5 (Sound Design) y `03-storyboard-y-edicion.md`, prohibir dar por bueno el audio nativo de los generadores de video; exigir montaje multicapa en la línea de tiempo.

### 2. Foley Compuesto y Coherencia con el Entorno
- **Evidencia:** Un impacto nunca es un solo sonido. Si un personaje cae en un tejado mojado bajo la lluvia, un golpe seco de cemento saca al espectador de la escena. El sonido debe componerse por capas: grave de impacto (*sub-boom*) + textura de salpicadura de agua (*wet splash*) + gotas individuales.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §5, formalizar el principio de **Foley Compuesto Contextual**: cada sonido de impacto o interacción física debe incorporar los elementos del entorno visual (humedad, polvo, metal, cristal).

### 3. Búsqueda de Efectos por Física del Evento, no por Etiqueta
- **Evidencia:** Buscar nombres genéricos en bancos de sonido (ej. "sonido de caída de edificio") devuelve resultados artificiales o pésimos. Se debe buscar por el fenómeno físico real que genera el sonido: para una persona cayendo a gran velocidad, buscar el viento de un paracaidista en caída libre (*skydiver wind pitch shift*).
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §5, añadir la directiva de **Búsqueda y Diseño Sonoro por Física Real**.

### 4. Tono de Sala / Ambiente Continuo (*Room Tone*)
- **Evidencia:** Colocar una pista base de sonido ambiental continuo (viento, lluvia lejana, reverberación de habitación) en el editor une todos los planos y evita micro-cortes de silencio digital entre tomas.
- **Disposición:** ⚪ **CONSERVADO SIN DUPLICAR.**
  - *Motivo:* Ya exigido en la arquitectura de audio de `03-storyboard-y-edicion.md` §4 (pista de ambiente).
