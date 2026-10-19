# Rol: Dirección Visual, Edición y Ritmo

La edición transforma el guion en una experiencia audiovisual dinámica, evitando el aburrimiento y guiando las emociones del espectador.

---

## ⚡ Metodología: Selección del Flujo Audiovisual según el Género

No todo video se produce de la misma manera. El agente y el creador deben seleccionar el flujo en `00-estado-produccion.md` antes de montar:

### 1. Flujo Audio-First (Predeterminado)
- **Géneros:** Divulgación científica, ensayos audiovisuales, documentales, historias de lore y resúmenes analíticos.
- **Principio:** La voz es la columna vertebral temporal y el video se construye en consecuencia.
$$\text{Guion por Bloques} \longrightarrow \text{Locución Provisional (Scratch)} \longrightarrow \text{Animatic (Montaje Preliminar)} \longrightarrow \text{Aprobación Narrativa} \longrightarrow \text{Assets y Locución Final} \longrightarrow \text{Música y SFX}$$

### 2. Flujo Screen-First / Action-First
- **Géneros:** Tutoriales técnicos, demostraciones de software, resolución de bugs y programación.
- **Principio:** La acción real en pantalla determina los tiempos indispensables.
$$\text{Escaleta de Acciones} \longrightarrow \text{Grabación de Pantalla (Screencast)} \longrightarrow \text{Edición de Tiempos Muertos} \longrightarrow \text{Locución Ajustada a la Acción} \longrightarrow \text{Rótulos y Zooms}$$

### 3. Flujo Speaker-First (A-Roll Directo)
- **Géneros:** Presentador a cámara, entrevistas, comentarios y vlogs.
- **Principio:** La espontaneidad y los gestos del presentador fijan el ritmo base.
$$\text{Puntos Clave / Guion de Apoyo} \longrightarrow \text{Grabación de Cámara (A-Roll)} \longrightarrow \text{Selección de Tomas Válidas} \longrightarrow \text{B-Roll de Apoyo y Reacciones} \longrightarrow \text{Música y Pulido}$$

### 4. Flujo Music-First / Ambient
- **Géneros:** Videos para dormir, concentración, relax, viajes cinematográficos o ritmos musicales.
- **Principio:** La pista musical o atmósfera sonora dicta la emoción, la cadencia y el tempo de los cortes.
$$\text{Selección de Pista / Beat} \longrightarrow \text{Marcación de Golpes Rítmicos} \longrightarrow \text{Montaje de Planos Fluidos} \longrightarrow \text{Locución Pausada (si aplica)} \longrightarrow \text{Efectos Ambientales}$$

---

### Las 6 Fases del Montaje Iterativo (Flujo Audio-First):
1. **Guion maestro estructurado por bloques (`[B01]`, `[B02]...`):** Cada bloque tiene texto de locución, objetivo y duración estimada.
2. **Locución provisional (*Scratch track*):** Montar la voz de prueba en la línea de tiempo de Premiere, DaVinci o FilmCraft.
3. **Animatic / Montaje preliminar (Wireframe audiovisual):** Colocar imágenes provisionales, capturas de pantalla, bocetos rápidos o placas de texto sobre la voz de prueba.
4. **Punto de control de aprobación narrativa:** Verificar el video como conjunto. ¿Se entiende? ¿Alguna escena aburre o sobra? Se recortan o ajustan frases en el guion **sin haber gastado créditos de IA ni horas de render**.
5. **Producción de assets definitivos:** Una vez congelada la narrativa, se graban o generan los assets en alta resolución (Midjourney/Flux, clips de stock, motion graphics) y la locución final.
6. **Diseño sonoro final:** Ajuste de música con *audio ducking* (bajada de volumen al hablar) y efectos sonoros (SFX) sincronizados exactamente con los cortes y transiciones.

---

## 1. Conocer al Público Objetivo
Saber exactamente para qué rango de edad y perfil se está editando. El lenguaje visual, el humor, la tipografía y el ritmo deben ajustarse a su sensibilidad cultural y visual.

---

## 2. Construir la Narración Visual: Setup, Progress y Payoff
Toda secuencia sólida de video se apoya en 3 momentos clave que a su vez ayudan a estructurar los capítulos y marcas de tiempo en YouTube:
1. **Setup:** Planteamiento de la escena o dilema.
2. **Progress:** Desarrollo, tensión o avances hacia la solución.
3. **Payoff:** Recompensa o desenlace.

*Herramienta:* Predefinir un **Skeleton** (esqueleto temporal del video) para marcar exactamente en qué marcas de tiempo ocurrirán los setups, progress y payoffs.

---

## 3. Coherencia entre Packaging y Estilo de Edición (La Ley de la Fricción)

> **"Editing can remove friction from the process, but it cannot rescue a weak idea or an empty video."**  
> *(La edición puede eliminar fricción visual y cognitiva del proceso, pero jamás podrá rescatar una mala idea ni un video vacío).*

### La Regla de Alineación de Expectativas:
- **No sobre-editar lo que se prometió crudo:** Si la miniatura y el título prometen un proceso transparente, real y sin filtros (ej. un speedrun, una llamada real o un experimento en vivo), una edición hiper-producida con transiciones innecesarias provoca rechazo (*"Esto no es lo que cliqué"*).
- **No sub-editar lo que se prometió cinemático:** Si el packaging vende un documental de alto impacto o divulgación científica profunda, el ritmo, el color grading y la selección de B-roll deben cumplir ese estándar.
- **Principio:** La edición debe calibrarse para cumplir y superar la expectativa estética exacta generada por el empaque, ni un milímetro por encima ni por debajo.

---

## 4. Dominar las 3 C's of YouTube Visuals

### 1. Content (El "What" visual del montaje y el Filtro Anti-Decoración)

> **"What most editing gurus call retention is just decoration. If a visual does not clarify, prove, or help the viewer follow the lesson, it's just movement and you don't need it."**  
> *(Lo que la mayoría de 'gurús de edición' llaman retención es simple decoración. Si un elemento visual no aclara, no demuestra o no ayuda a seguir la lección, es solo movimiento innecesario: elimínalo).*

Para audiencias sofisticadas, profesionales o de aprendizaje real, los memes hiperactivos, zooms aleatorios y subtítulos parpadeantes degradan la credibilidad del canal. Todo elemento visual en pantalla debe tener un propósito justificado:
- **Metraje A-Roll:** Alguien hablando directamente a cámara (sujeto principal).
- **Metraje B-Roll (Apoyo):** Complementa y muestra de qué se habla. 5 tipos principales de tomas:
  1. *Wide shots:* Establece la ubicación y ambienta la escena.
  2. *Medium shots:* Captura al sujeto y al entorno con equilibrio.
  3. *Close-up:* Resalta detalles, gestos e intensidad.
  4. *Extreme wide shots:* Genera sensación de escala, inmensidad o asombro.
  5. *Extreme close-ups:* Enfatiza microdetalles dramáticos.
- **Texto en pantalla:** Destacar un punto clave, aportar contexto o asistir transiciones.
- **Grabaciones de pantalla:** Para seguir paso a paso explicaciones técnicas o tutoriales.
- **Imágenes / Iconos:** Para ilustrar conceptos u objetos mencionados.
- **Clips externos / Memes:** Para aportar contexto cultural o toques sutiles de humor (usar con moderación).
- **Motion Graphics y Gráficos:** Para graficar ideas complejas o datos abstractos. Debe **demostrar o clarificar**, jamás rellenar.

### 2. Clarity (Claridad y Punto Focal)
- **Focal Point (Punto focal):** Debe ser evidente en cada frame a dónde debe mirar el espectador.
- **Positioning:** Centrar el sujeto o aplicar la regla de los tercios.
- **Creating Separation:** Crear separación clara entre el sujeto y el fondo mediante diferencias de brillo, contraste de color o desenfoque (*blur / depth of field*).

### 3. Continuity (Continuidad y Fluidez)
- **Tipos de cortes:**
  - *Cortes rectos (Hard cuts):* Limpios, pero no recomendados si el ritmo o los elementos cambian de forma drástica.
  - *Cortes en J y cortes en L:* El audio entra antes que el video o viceversa, suavizando la transición narrativa.
  - *Cortes de coincidencia (Match cuts):* Continuidad de forma o movimiento entre dos tomas distintas.
  - *Transiciones activas:* Dissolves, crossfades, slides, whip pans (usarlas con moderación y justificación).
- **Fricción Visual:** Prestar atención al cambio del punto focal entre escenas continuas. Si el punto focal pasa de la esquina superior izquierda a la esquina inferior derecha bruscamente, fatiga la vista del espectador. Usar técnicas de transición que den tiempo al ojo para adaptarse.
- **Cuidado con los microgaps:** Espacios vacíos o fotogramas negros no intencionados entre el final de un clip y el siguiente.
- **Style (Identidad de Marca):**
  - *Color grading uniforme:* Hace que tomas de orígenes variados parezcan filmadas en el mismo universo.
  - Coherencia en fuentes tipográficas, paleta cromática y estilo de animación.

---

## 5. Emoción: Provocar Respuestas Viscerales
Hace que los videos se recuerden, comenten y compartan:
1. **Framing y Shot Selection:** Close-ups para intimidad, drama o tensión; wide shots para aislamiento o perspectiva; movimientos sutiles o acelerados de cámara.
2. **Sound Design (Diseño de Sonido):**
   - La música y efectos de sonido (SFX) dictan el tono emocional en segundos.
   - Dividir el video en secciones según la emoción deseada (misterio, triunfo, intriga, relax) y diseñar las pistas para cada bloque.
   - Los SFX deben sumergir al espectador sin saturar: cada efecto sonoro debe estar justificado.
3. **Pacing (Ritmo):**
   - El ritmo puede ser veloz o pausado, pero **la verdadera magia radica en el contraste** entre secciones rápidas y momentos de respiro.

---

## 6. Final Checks (Control de Calidad Pre-Entrega)

1. **The Sound Check:**
   - La edición no se escucha únicamente en un estudio silencioso con auriculares profesionales; el espectador puede estar en el metro, gimnasio o una cafetería ruidosa.
   - Verificar que la voz sea perfectamente inteligible, que la música no tape el diálogo y que ningún SFX desentone o explote en volumen.

2. **The Flow Check:**
   - Identificar tramos que se sientan aburridos, lentos o apresurados.
   - Recortar clips sobrantes si hay estancamiento; dar más aire manteniendo planos clave si la explicación va demasiado rápida.

3. **The Style Check:**
   - ¿Este video respeta y refuerza el branding del canal?
   - Revisar coherencia en elección musical, color grading, tipografías y el tono de "voz" general del canal.
