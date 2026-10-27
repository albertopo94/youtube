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
   *(En producciones visuales complejas, se puede usar **Google Flow** para montar un storyboard visual preliminar y validar la estética general antes de comprometer horas de producción).*
4. **Punto de control de aprobación narrativa:** Verificar el video como conjunto. ¿Se entiende? ¿Alguna escena aburre o sobra? Se recortan o ajustan frases en el guion **sin haber gastado créditos de IA ni horas de render**.
5. **Producción de assets definitivos y Consistencia de Personajes:** Una vez congelada la narrativa, se graban o generan los assets en alta resolución.  
   *(Si el video utiliza un personaje o avatar recurrente, se utiliza el canvas de nodos de **Google Flow** para fijar un nodo maestro de referencia del personaje y generar planos derivados con **consistencia de rostro, vestimenta y estilo** a lo largo de las distintas escenas).*
6. **Diseño sonoro final:** Ajuste de música con *audio ducking* (bajada de volumen al hablar) y efectos sonoros (SFX) sincronizados exactamente con los cortes y transiciones.

---

## ⚡ Guía Operativa para YouTube Shorts `[Hipótesis Experimentales y Técnicas Narrativas]`

En formatos verticales cortos (**YouTube Shorts**), rigen principios de dinamismo y retención específicos que deben tratarse como **herramientas de diseño y no como leyes algorítmicas deterministas**:

### 1. Enfoque de Lanzamiento Inicial:
- En las primeras subidas de un canal nuevo, priorizar la agilidad y el aprendizaje sobre el perfeccionismo paralizante. La primera entrega permite observar qué temas y estilos generan tracción inicial en el feed sin gastar semanas en un solo archivo.

### 2. Duración, Ritmo y Bucles Continuos (*Seamless Loops*):
- **Duración adaptada al contenido:** Duraciones de **25 a 50 segundos** permiten desarrollar un arco narrativo con suficiente densidad de información sin saturar.
- **Bucles continuos (*Seamless Loops*):** Si el contenido lo permite de forma orgánica, diseñar el último segundo para que enlace de manera fluida con el primero ayuda a incentivar re-visualizaciones naturales. No forzar el bucle si rompe la coherencia del remate.

### 3. Observación de Cadencia y Picos de Visitas:
- YouTube indica formalmente que las visualizaciones no dependen del intervalo de tiempo entre publicaciones `[Política Oficial YouTube]`. La prioridad es mantener un ritmo de producción sostenible y centrado en la calidad.
- *Práctica experimental opcional:* Si un Short experimenta un pico viral atípico en tiempo real en YouTube Studio, el creador puede evaluar espaciar la siguiente subida para observar el comportamiento de la curva de audiencia de forma aislada.

### 4. Estructura de Micro-Planos por Oración (*Sentence-to-Shot Planning*):
> **Origen:** estudio de ingeniería inversa de Zack D. Films (`_framework/referencias/auditorias/estudio-fuente-zackdfilms-shorts-ia-2026-10-27.md`). ✅ **ADOPTADO.**
- En Shorts explicativos, de curiosidades o misterio con alta retención, **cada oración individual del guion constituye un plano visual independiente**.
- Quedan prohibidos los planos estáticos o pasivos de más de 3 segundos: cada frase introduce un nuevo ángulo, un plano detalle del objeto mencionado, un punch-in de zoom o una micro-sacudida de pantalla (*screen shake*) en el momento de la revelación o impacto verbal.
- Esta correlación estricta entre frase y cambio visual sostiene la atención al milímetro y evita que el espectador deslice hacia arriba.

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

## 3. Dirección Cinematográfica de Escenas con IA: La Escalera de 5 Niveles y Continuidad Espacial

> **Origen:** estudio de fuente 1 (`_framework/referencias/auditorias/estudio-fuente-1-video-ia-2026-10-27.md`). Metodología agnóstica de software: aplicable tanto en entornos 3D/canvas nodal (Flick, Google Flow) como en storyboards tradicionales y generadores de video (Seedance, Runway, Luma, Kling, Sora). ✅ **ADOPTADO.**

Generar video con inteligencia artificial para escenas con múltiples personajes o interacción física sin planificación espacial produce deformaciones anatómicas, fusión de rostros, intercambio de ropas y cámaras erráticas. El agente y el creador deben clasificar cada plano o secuencia en su nivel de complejidad correspondiente antes de generar:

### La Escalera de Complejidad en 5 Niveles:
1. **Nivel 1 (Diálogo Estático entre 2 Personajes):**
   - *Puesta en escena (Staging):* Crear primero un plano general que fije la posición física de ambos personajes en el espacio (ej. quién está en el banco de trabajo y quién en la puerta).
   - *Ejes de mirada (Eyelines):* En los planos individuales (plano y contraplano), comprobar que las líneas de mirada se correspondan en el ángulo correcto sin quebrar el eje de 180°.
   - *Inserts de utilería como puntos de corte:* Generar planos detalle de objetos que intervienen en la conversación (un documento, una moneda, una herramienta o una bebida). Estos inserts funcionan como salvavidas en el montaje: permiten cortar limpiamente entre ambos personajes disimulando cualquier salto de continuidad o fallo de sincronización labial.
   - *Regla de oro de foto fija:* Montar las imágenes fijas en la línea de tiempo **antes** de animar. Si el espacio o las miradas no funcionan en estático, corregir la imagen primero; animar una composición defectuosa solo quema créditos de GPU.
2. **Nivel 2 (Diálogo en Movimiento / Walking Dialogue):**
   - *Heurística de texturas repetitivas:* Al filmar personajes caminando o desplazándose, situar la acción en entornos naturales o abiertos con textura uniforme (bosque con niebla, dunas, desierto, sendero rural o playa). Al carecer de puntos de referencia arquitectónicos rígidos, las pequeñas inconsistencias de fondo generadas por la IA pasan completamente desapercibidas para el ojo humano.
3. **Nivel 3 (Plano Secuencia / Multi-Character Long Take):**
   - *Técnica de Stand-Ins Coloreados (Mapeo de Identidad):* En escenas con 3 o más personajes, utilizar siluetas o maniquíes de colores primarios puros en el boceto de referencia o mockup (Azul = Personaje 1, Naranja = Personaje 2, Púrpura = Personaje 3). En el prompt se declara el mapeo espacial explícito (*"la figura azul corresponde a la hoja de personaje A; la figura naranja al personaje B"*), impidiendo que la IA mezcle los rostros o fusione vestimentas.
   - *Separación de trayectoria y objetivo de cámara:* Definir la ruta física de la cámara de forma independiente al punto hacia donde mira (*camera target*), permitiendo encuadrar a la altura de los ojos en lugar de apuntar mecánicamente hacia el suelo.
4. **Nivel 4 (Cobertura Multicámara Fija):**
   - Cubrir una misma acción desde 4 o 5 ángulos coordinados (plano abierto de conjunto, plano detalle de mesa, plano frontal de reacción y contrapicado bajo).
   - Sincronizar y cortar los ángulos en baja resolución o animatic antes de solicitar el renderizado final en alta fidelidad.
5. **Nivel 5 (Acción Compleja con Cámaras Móviles):**
   - Descomponer la secuencia de acción en *beats* físicos atómicos aislados (desplazamiento, frenada, lanzamiento, impacto, caída diferida).
   - La utilería dinámica (un objeto arrojado, arma o proyectil) debe tratarse con su propia trayectoria independiente; evitar exigirle a la IA que coordine lanzamiento, trayectoria, impacto y caída de oponentes en un solo prompt monolítico sin control de capas.

### El Mapa Cenital de Bloqueo Espacial (*Overhead Blueprint*):
> **Origen:** estudio de fuente 2 de video con IA (`_framework/referencias/auditorias/estudio-fuente-2-video-ia-2026-10-27.md`). ✅ **ADOPTADO.**
- Para escenas grupales o entornos con múltiples elementos (reuniones en mesa, fogatas, vehículos, talleres), generar previamente una **vista aérea cenital completa (*high overhead angle*)** que capture la disposición de todos los personajes y objetos.
- Esta captura cenital se utiliza como imagen de referencia de composición espacial maestra para todos los planos cerrados individuales, reduciendo drásticamente las alucinaciones del modelo en la geometría de los fondos y los fondos cambiantes.

### El Pipeline Asset-First para Personajes IA:
> **Origen:** estudio de fuente 3 de video con IA (`_framework/referencias/auditorias/estudio-fuente-3-video-ia-2026-10-27.md`). ✅ **ADOPTADO.**
- **Diseño de Activos previo al Rodaje:** Tratar la producción como el desarrollo de un videojuego: diseñar y fijar el banco de assets del personaje (vestuario diario vs. de trabajo, accesorios, cicatrices y estados como con/sin prenda) **antes de generar las tomas definitivas**. Si un personaje se quita una capucha o chaqueta en una escena, el modelo debe contar con la referencia de cómo luce por debajo para evitar que invente un peinado o complexión distinta.
- **Objetos del Entorno como Anclas de Trayectoria en Prompts:** Al dirigir movimiento de personajes o vehículos en generadores de video, utilizar un elemento estático del fondo como punto de llegada o parada en el prompt (*"el vehículo avanza desde el plano frontal y se detiene exactamente junto a la farola rota"*). Esto elimina trayectorias erráticas y ancla el movimiento a la física de la escena.

### Hojas de Localización Multicámara Reutilizables (*Master Location Sheets*):
> **Origen:** estudio de fuente 6 de video con IA (`_framework/referencias/auditorias/estudio-fuente-6-video-ia-2026-10-27.md`). ✅ **ADOPTADO.**
- En canales con universos visuales consistentes, series animadas o ficción, los escenarios clave (la oficina, el salón, el laboratorio o el taller) **no deben generarse desde cero para cada plano o episodio**.
- Siguiendo la disciplina de los grandes estudios de animación (ej. los escenarios fijos de Los Simpson), se diseña un **set maestro del escenario** y se exportan de antemano **4 o 5 tiros de cámara estandarizados** de esa misma habitación (plano general de conjunto, plano medio hacia la ventana, tiro hacia la mesa de trabajo, plano contrapicado y vista cenital).
- Estos fondos pre-validados se archivan en `04-registro-recursos.md`. Al producir una nueva escena, el agente simplemente monta la referencia del personaje sobre el ángulo de fondo correspondiente, asegurando que el universo visual permanezca idéntico entre escenas y episodios con coste cero de regeneración ambiental.

### Sintaxis de Etiquetado Explícito de Referencias en Prompts Complejos:
> **Origen:** estudio de fuente 6 de video con IA. ✅ **ADOPTADO.**
- En prompts para escenas multi-personaje o con fondos específicos, queda desaconsejado utilizar redacciones ambiguas en prosa (*"el hombre le habla a la mujer en el salón"*).
- Emplear una sintaxis de asignación inequívoca etiquetando cada activo por su identificador de referencia:
  `[Sujeto: @Ref_Personaje_A] en [Ubicación: @Ref_Set_Salon_Angulo_2] dice "..." con [Voz: @Ref_Voz_A]` mientras `[Sujeto: @Ref_Personaje_B] escucha en silencio`.
  Este mapeo explícito impide que los modelos neuronales confundan identidades, intercambien vestimentas o crucen las voces asignadas a cada personaje.

### La Regla de los Tres Pasos contra el Desperdicio de Créditos de IA:
1. **Comprobar la imagen fija antes de animar:** validar proporciones, manos, vestimenta y encuadre antes de pedir video.
2. **Previsualizar el movimiento antes de generar en alta:** verificar la velocidad y trayectoria en modo borrador, baja resolución o animatic.
3. **Planificar el corte antes de generar metraje innecesario:** saber exactamente cuántos segundos de la toma se usarán en el montaje final para no renderizar segundos vacíos.

---

## 4. Coherencia entre Packaging y Estilo de Edición (La Ley de la Fricción)

> **"Editing can remove friction from the process, but it cannot rescue a weak idea or an empty video."**  
> *(La edición puede eliminar fricción visual y cognitiva del proceso, pero jamás podrá rescatar una mala idea ni un video vacío).*

### La Regla de Alineación de Expectativas:
- **No sobre-editar lo que se prometió crudo:** Si la miniatura y el título prometen un proceso transparente, real y sin filtros (ej. un speedrun, una llamada real o un experimento en vivo), una edición hiper-producida con transiciones innecesarias provoca rechazo (*"Esto no es lo que cliqué"*).
- **No sub-editar lo que se prometió cinemático:** Si el packaging vende un documental de alto impacto o divulgación científica profunda, el ritmo, el color grading y la selección de B-roll deben cumplir ese estándar.
- **Principio:** La edición debe calibrarse para cumplir y superar la expectativa estética exacta generada por el empaque, ni un milímetro por encima ni por debajo.

### Las 4 Capas de Pulido Técnico y el Protocolo de Control de FilmCraft
Un software de edición no es una simple pegadora de clips; un montaje sin pulido resulta tosco y amateur. Toda edición profesional exige aplicar cuatro capas:

1. **Regla de Pacing Visual ( perfil por defecto, con excepción justificada):**
   - ❌ **Prohibida la "mentalidad de diapositiva de PowerPoint":** por defecto, **ningún plano estático puede permanecer en pantalla más de 5 segundos sin una variación visual** (corte a nuevo plano, detalle B-roll, punch-in de escala 100% a 105%, o aparición escalonada de textos).
   - **Excepción que paga peaje:** si el formato lo justifica, se puede extender el plano. La extensión **paga peaje**: se escribe en esta tabla una línea de **propósito creativo** (ej. "bloque de payoff emocional; la quietud es el recurso").
   - **Excepción por Empatía Narrativa Comprobada:** (Estudio MrBeast Cap. 25). Una toma o diálogo continuo de 10 a 15 segundos puede sostenerse sin cortes continuos **únicamente si el espectador ya conectó emocionalmente con la personalidad o el conflicto del personaje**. Si el sujeto es desconocido o neutro, la retención se desploma; si el personaje ya fue establecido y el diálogo aporta valor real, la quietud y el plano extendido fortalecen la inmersión en lugar de aburrir.
   - **Prohibido:** "se me ocurrió así", "lo dejé como está" o cualquier extensión sin una frase de propósito. La justificación se evalúa en la misma escena que el plano.
   - **No es universal:** videos Music-First / ambient, ensayos contemplativos o explicaciones lentas pueden tener planos más largos con justificación; el umbral de 5 s es el perfil por defecto, no una ley para todos los géneros.
   - Cubrir un bloque narrativo de 40 o 60 segundos con una sola imagen congelada destruye la retención del espectador.
   - **Exigencia de dinamismo:** Todo bloque extenso debe subdividirse en múltiples planos complementarios (detalles B-roll, cambios de ángulo, esquemas) o acompañarse de dinamismo de cuadro continuo (paneo Ken Burns, zooms lentos progresivos o rótulos y flechas que aparecen escalonadamente al ritmo de la voz).
   - **Nota histórica:** antes esta regla decía "4 a 7 segundos" y la regla 4 decía "más de 3 segundos". Dos umbrales distintos, ninguno aplicable a todos los géneros; se unifican en 5 s como perfil por defecto.

2. **Cortes de Continuidad (J-Cuts y L-Cuts):** Desfasar la entrada o salida del audio respecto a la imagen (entre 12 y 24 fotogramas) en transiciones de bloques narrativos, evitando cortes rectos secos que delaten el montaje.

3. **Arquitectura de Audio (perfil por defecto, adaptable al formato):**
   - El montaje no se da por terminado hasta que el resultado sonoro sea adecuado al formato, esté medido cuando corresponda y haya sido escuchado. No se agregan música ni SFX solo para completar una cantidad de pistas.
   - **Pista A1 (Locución / Voz principal, si aplica):** asegurar inteligibilidad, nivel consistente y margen de pico seguro. El objetivo de sonoridad se define para el **master final**, no se impone automáticamente a una pista aislada de voz.
   - **Pista A2 (Música de fondo, si aporta):** aplicar ducking o envolvente para que no tape la narración; los niveles concretos se ajustan a la mezcla y se registran cuando sean relevantes.
   - **Pista A3 (Efectos de sonido / SFX, si aportan):** usar acentos sincronizados solo cuando apoyen el ritmo, la comprensión o la emoción sin saturar.
   - **Master final:** definir en la hoja de aceptación del video el objetivo integrado de sonoridad, el límite de pico y el método de medición. Como referencia de emisión, EBU R 128 usa −23 LUFS para el programa completo; no es un mandato universal para voz aislada ni para todos los destinos de publicación.
   - Un formato ambient, musical, contemplativo o un screencast limpio puede prescindir de una o más capas si la decisión se justifica en el storyboard. Lo innegociable es el resultado: claridad cuando hay locución, balance, ausencia de picos molestos y escucha de control.
   - Si una capa necesaria para el perfil aprobado no está disponible, el agente debe solicitarla, generarla o descargarla antes de cerrar la fase.

4. **Dinámica de Cuadro (*Punch-ins*):** En tomas que duren **más de 5 segundos**, aplicar reencuadres o zooms continuos sutiles (escala del 100% al 105% mediante keyframes de transformación en FilmCraft).
   - **Nota histórica:** antes esta regla decía "más de 3 segundos" y la regla 1 decía "4 a 7". Dos umbrales distintos; se unifican en 5 s como perfil por defecto.

### Pausas Naturales para Anuncios (Mid-Rolls en Videos > 8 Minutos):
- En videos de duración superior a 8 minutos (umbral de YouTube para habilitar anuncios intermedios), el montaje debe contemplar los puntos de interrupción natural señalados en `02-guion.md`.
- El editor o agente deja un respiro orgánico (fade-out sutil de música, cambio de plano de respiro o pausa de 0.5 a 1 segundo) tras redondear un bloque temático, evitando cortes rectos acelerados en esos puntos.
- El timecode sugerido se registra en `03-storyboard-y-edicion.md` para que, al momento de subir el master a YouTube Studio, se inserten las pausas publicitarias manuales con precisión de cirujano sin mutilar el flujo auditivo ni visual.

### Consistencia Visual y Libertad de Contraste Intencional:
- **Línea base de coherencia:** Aplicar en los prompts visuales los 4 anclajes de estilo (medio visual, paleta cromática dominante, iluminación/óptica y nodo maestro del sujeto o entorno).
- **Excepción creativa (Sin camisas de fuerza):** Se permite y promueve romper deliberadamente la coherencia estética si existe un objetivo narrativo consciente: un meme retro, un plano con estilo caricatura para causar risa, un corte a blanco y negro dramático o un contraste excéntrico deliberado.

### Regla de Vestimenta e Inmersión del Presentador (A-Roll):
> **Origen:** estudio de fuente 2 (MrBeast), capítulo 25. ✅ **ADOPTADO.**
- En canales donde el presentador o los sujetos aparecen físicamente en cámara (A-Roll), la vestimenta **no debe ser una ocurrencia improvisada**.
- Utilizar ropa temática o un atuendo alineado intencionalmente con el universo del video (ej. traje en temas de rigor analítico, ropa de aventura en retos de campo, atuendo funcional de taller en procesos manuales) eleva de inmediato el valor de producción percibido, elimina el aspecto amateur y sumerge al espectador en la atmósfera del relato sin romper la inmersión.

---

## 5. Dominar las 3 C's of YouTube Visuals

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
- **Heurística de Autenticidad Física ("La perfección borra la humanidad" — Casey Neistat):** Frente al abuso de textos ópticos flotantes, cinemáticas artificiales y overlays hiper-producidos que deshumanizan el relato, priorizar demostraciones físicas y analógicas tangibles: mostrar objetos reales, notas manuscritas, recortes en papel o comparaciones sobre una mesa. La textura física y la imperfección analógica transmiten cercanía y retienen mejor que un gráfico digital frío.

### 2. Clarity (Claridad y Punto Focal)
- **Focal Point (Punto focal):** Debe ser evidente en cada frame a dónde debe mirar el espectador.
- **Técnica de Atenuación Selectiva (*Spotlight / Focal Dimming*):** Ante pantallas complejas, documentos densos, miniaturas o infografías con múltiples datos, evitar la fatiga visual de forzar al ojo a mirar cuatro esquinas a la vez. Aplicar un zoom sobre el área explicada y **atenuar (*dim/darken*) o desenfocar el resto del cuadro**, guiando la atención del espectador a un único punto focal indiscutible.
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
  - *Eliminación del Look Digital Plástico (Acabado Cinematográfico IA):* Para mitigar la textura sintética y excesivamente pulida de los generadores de video, aplicar en postproducción una capa sutil de grano fílmico orgánico y suavizado perimétrico de enfoque (profundidad de campo). Esto elimina los bordes cortantes artificiales y unifica tomas de distintos modelos en un mismo universo estético sin requerir plugins de pago.

---

## 6. Emoción: Provocar Respuestas Viscerales
Hace que los videos se recuerden, comenten y compartan:
1. **Framing y Shot Selection:** Close-ups para intimidad, drama o tensión; wide shots para aislamiento o perspectiva; movimientos sutiles o acelerados de cámara.
2. **Sound Design y Realismo Táctil Acústico en Video con IA:**
   > **Origen:** estudio de fuente 4 de video con IA (`_framework/referencias/auditorias/estudio-fuente-4-video-ia-2026-10-27.md`). ✅ **ADOPTADO.**
   - *Prohibición de confiar en el audio nativo de generadores de video:* Los audios que generan directamente los modelos de video suelen ser planos, monoaurales o metálicos. La credibilidad de un universo visual generado con IA se sostiene en el diseño sonoro multicapa ensamblado en el editor (diálogos, ambiente, música y foley táctil).
   - *Foley Compuesto y Coherencia Ambiental:* Un impacto físico nunca es un solo archivo de audio. Si un cuerpo cae en un tejado mojado bajo la lluvia, un golpe seco de cemento destruye la inmersión de inmediato: el sonido debe componerse superponiendo el impacto sordo (*sub-boom*) + textura de salpicadura (*splash*) + gotas dispersas. Todo sonido debe respetar la física del entorno visible (humedad, polvo, madera o cristal).
   - *Búsqueda de SFX por Física Real, no por Etiqueta:* Evitar buscar nombres genéricos en librerías de sonido (ej. "caída de edificio"). Buscar el fenómeno físico que genera el sonido en la realidad (ej. el silbido y cambio tonal de viento de un paracaidista en caída libre para un personaje cayendo al vacío).
   - *Capa Base de Ambiente Continuo (Room Tone):* Toda escena debe descansar sobre una pista ininterrumpida de tono de sala o atmósfera ambiental que enlace los cortes visuales y elimine micro-silencios digitales muertos.
   - Los SFX deben sumergir al espectador sin saturar: cada efecto sonoro debe estar justificado.
3. **Pacing (Ritmo):**
   - El ritmo puede ser veloz o pausado, pero **la verdadera magia radica en el contraste** entre secciones rápidas y momentos de respiro.
4. **Técnicas Clásicas de Tensión y Retención Cinematográfica (Hitchcock & Dean Cundey):**
   > **Origen:** estudio de fuente 2 de video con IA. ✅ **ADOPTADO.**
   - *Espacio de Acecho (Lurking Space):* En escenas de misterio o tensión, iluminar al sujeto dejando zonas de sombra o penumbra perimetral alrededor. El cerebro del espectador asume instintivamente que algo puede ocultarse en la oscuridad, disparando la alerta sin artificios baratos.
   - *La Bomba bajo la Mesa (Hitchcock):* Revelar una amenaza, anomalía o dato inquietante al espectador antes de que los personajes en pantalla lo descubran. Conocer el peligro transforma una conversación cotidiana en una secuencia de tensión irresistible.
   - *Mirada Fuera de Cuadro (Off-Screen Gaze):* Hacer que el sujeto mire fijamente hacia afuera del encuadre antes de cortar. Su mirada abre un bucle de curiosidad urgente que solo se cierra al revelar qué ve en el plano siguiente.
   - *Impacto por Salto Abrupto de Escala:* En revelaciones o remates dramáticos, pasar bruscamente de un plano medio a un primerísimo plano que llene el encuadre. La sorpresa no depende del diseño del sujeto, sino del cambio repentino en la distancia visual.
   - *Rima Visual Repetida con Variación Atmosférica:* Repetir una misma micro-acción física del personaje en 3 momentos clave (ej. inicio, clímax y resolución) alterando únicamente la iluminación, el clima y el encuadre (ej. luz neutra de incertidumbre ➔ lluvia y niebla de conflicto ➔ amanecer despejado de alivio). El arco psicológico se transmite de forma subliminal a través de la atmósfera sin recargar la escena de diálogos explicativos.

---

## 7. Final Checks (Control de Calidad Pre-Entrega)

1. **The Sound Check:**
   - La edición no se escucha únicamente en un estudio silencioso con auriculares profesionales; el espectador puede estar en el metro, gimnasio o una cafetería ruidosa.
   - Verificar que la voz sea perfectamente inteligible, que la música no tape el diálogo y que ningún SFX desentone o explote en volumen.

2. **The Flow Check:**
   - Identificar tramos que se sientan aburridos, lentos o apresurados.
   - Recortar clips sobrantes si hay estancamiento; dar más aire manteniendo planos clave si la explicación va demasiado rápida.

3. **The Style Check:**
   - ¿Este video respeta y refuerza el branding del canal?
   - Revisar coherencia en elección musical, color grading, tipografías y el tono de "voz" general del canal.
