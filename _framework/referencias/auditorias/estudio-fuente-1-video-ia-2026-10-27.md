# Estudio y Disposición — Fuente 1: Dirección Cinematográfica de Escenas Complejas con IA

**Archivo fuente:** `_framework/referencias/direccion-escenas-multi-personaje-ia-transcripcion.md` (`Guía de Dirección de Escenas Multi-Personaje con IA`, Hannah / Flick / Seedance 2.5, archivado desde la raíz)  
**Fecha de inicio:** 2026-10-27  
**Objetivo:** Extraer las reglas de dirección cinematográfica, staging espacial, continuidad multi-personaje y economía de créditos en la generación de video con IA para elevar la calidad de `roles/04` y la plantilla `03-storyboard-y-edicion.md`.

---

## Leyenda de Disposición
- ✅ **ADOPTADO:** Se incorpora al framework (roles o plantillas).
- 🟡 **ADAPTADO:** El principio es valioso pero se hace agnóstico de software (independiente de Flick/Seedance).
- ⚪ **CONSERVADO SIN DUPLICAR:** Ya está cubierto en el framework actual.
- ❌ **RECHAZADO:** No aplica (marcas específicas de software cerrado o funciones propietarias).

---

## Hallazgos y Disposición por Capítulo

### Cap. 1: Introducción y Escalera de Complejidad
- **Evidencia:** Dirigir escenas con IA requiere sincronizar personaje, cámara y entorno. Se propone estructurar el trabajo en 5 niveles de complejidad creciente: diálogo estático, diálogo caminando, plano secuencia, multicámara fija y acción compleja con cámaras móviles.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` y `03-storyboard-y-edicion.md`, formalizar la **Escalera de Complejidad en 5 Niveles para Escenas con IA**, permitiendo al creador/agente calibrar el esfuerzo y método antes de renderizar.

### Cap. 2: Nivel 1 — Diálogo Estático y Ejes de Mirada (*Eyelines*)
- **Evidencia:** Conversación entre 2 personajes en un taller. Claves técnicas:
  1. *Establecer el plano general primero:* Ubicar las posiciones relativas (herrero en banco de trabajo, viajero en puerta).
  2. *Conectar ejes de mirada (Eyelines):* Plano y contraplano deben mantener la dirección de la mirada, iluminación y vestuario idénticos.
  3. *Inserts de utilería como puntos de corte:* Generar planos detalle de objetos (la moneda, la cuerda, el arco) para tener puntos de fuga limpios en el montaje y dar ritmo a la conversación.
  4. *Montar imágenes fijas antes de generar video:* Si los personajes se cruzan o el espacio no tiene sentido en foto fija, corregir antes de gastar créditos en animación.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` y `03-storyboard-y-edicion.md`, incorporar el **Protocolo de Diálogo Estático IA** (montaje previo de fotos fijas para validar eje y uso obligatorio de inserts de utilería como salvavidas de corte).

### Cap. 3: Nivel 2 — Diálogo Caminando y Fondos de Textura Repetitiva
- **Evidencia:** Personajes hablando mientras caminan por un bosque.
  - *Heurística técnica:* Cuando los personajes están en movimiento continuo, utilizar entornos naturales de textura repetitiva (bosque con niebla, playa abierta, desierto, dunas). El cerebro del espectador no busca puntos de referencia fijos específicos, lo que hace que las micro-inconsistencias espaciales de la IA pasen totalmente desapercibidas.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md`, añadir la **Heurística de Textura Repetitiva para Movimiento Continuo**.

### Cap. 4: Nivel 3 — Plano Secuencia (*Long Take*) y Stand-Ins Coloreados
- **Evidencia:** Cámara continua que viaja a través de habitaciones revelando personajes.
  - *Técnica de Stand-Ins Coloreados:* Uso de maniquíes/figuras de colores primarios (azul = personaje 1, naranja = personaje 2). En el prompt se declara el mapeo explícito: "la figura azul corresponde a la hoja de personaje A". Esto evita que la IA mezcle los rostros o fusiona las vestimentas.
  - *Objetivo de cámara separado de la trayectoria:* La cámara sigue una ruta física pero tiene un "target" (punto de enfoque) independiente que se mueve a la altura de los ojos del personaje.
- **Disposición:** 🟡 **ADAPTADO (Agnóstico de Software).**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3 y `03-storyboard-y-edicion.md` §3.1, formalizar la **Técnica de Stand-Ins Coloreados para Mapeo Espacial** y la separación de trayectoria de cámara vs. punto de mirada (*target*).

### Cap. 5: Nivel 4 — Cobertura Multicámara Fija y Edición en Baja Fidelidad
- **Evidencia:** Una misma acción de reunión cubierta por 4 o 5 cámaras sincronizadas (plano abierto, plano bajo mesa, plano detalle papeles, plano frontal con push suave).
  - *Regla de corte:* Editar y sincronizar los planos en baja fidelidad (3D/blocking simple) **antes** de renderizar el metraje definitivo en alta resolución.
- **Disposición:** ⚪ **CONSERVADO SIN DUPLICAR.** Ratifica la Fase de Animatic / Radio Edit que ya exige `AGENTS.md` §05 antes de escalar a renders de pago.

### Cap. 6: Nivel 5 — Acción Compleja con Cámaras Móviles (Coordinación de Props)
- **Evidencia:** Escena de artes marciales en aldea nevada (lanzamiento de calabaza, salto al tejado, caídas de oponentes).
  - *Desglose en beats atómicos:* Descomponer la secuencia en impulsos físicos aislados (caminata, parada, lanzamiento, impacto, caída). La utilería dinámica (un objeto arrojado) requiere su propio seguimiento independiente.
- **Disposición:** 🟡 **ADAPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md`, añadir la pauta de **Desglose de Acción IA en Beats Físicos Atómicos**.

### Cap. 7: Regla de Oro contra el Desperdicio de Créditos
- **Evidencia:** "Check the images before animating. Preview the movement before generating. Plan the edit before spending credits on footage you won't use."
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* Consolidar como la **Regla de los Tres Pasos contra el Desperdicio de Créditos de IA** en `03-storyboard-y-edicion.md` §3.1.
