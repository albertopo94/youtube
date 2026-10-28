# Rol: Guion, Narrativa y Estructura

El guion es el motor de retención y la base de la monetización. Su misión principal es cumplir la expectativa generada por el packaging, aportar valor editorial genuino y sostener el interés del espectador escena tras escena.

---

## 1. Puerta de Control Obligatoria: Originalidad y Monetización (Policy Check)

Antes de dar por aprobado cualquier guion (especialmente en canales automatizados o asistidos por IA), debe superar este filtro de políticas de YouTube:

### Aportación Editorial Propia (Anti-Contenido Reutilizado y Anti-Spam)
YouTube prohíbe o desmonetiza el contenido producido en masa, repetitivo o que reutilice material de terceros sin una transformación sustancial, educativa o de entretenimiento.
El guion debe responder afirmativamente a estas 4 preguntas:
1. **¿Qué argumento, explicación, análisis o experiencia original aporta este video?** (No basta con resumir o leer información pública).
2. **¿Qué aprende o experimenta el espectador aquí que no obtiene simplemente viendo/leyendo el material de origen?** (En resúmenes de libros, no sustituir la obra; en noticias o lore, aportar perspectiva crítica, investigación o narrativa propia).
3. **¿Está el guion sustentado en fuentes y evita presentar afirmaciones dudosas como hechos?** (Verificación previa con el protocolo de fact-checking).
4. **¿Los recursos externos citados respetan los derechos y permisos aplicables?** (Fair use legítimo, citas directas y respeto a la propiedad intelectual).

### Declaración de Contenido Sintético y Voces IA (Política Vigente de YouTube)

YouTube exige declarar en YouTube Studio cuando el contenido pueda confundirse con la realidad o involucre personas, lugares o eventos reales:

**Casos que SÍ requieren marcar la casilla de declaración obligatoria:**
1. **Personas reales y su voz:** Hacer parecer que una persona real dijo o hizo algo que no ocurrió, o generar sintéticamente la voz de una persona reconocible.
2. **Escenas y eventos fotorrealistas:** Mostrar desastres, sucesos de actualidad, lugares geográficos o eventos históricos con apariencia realista generados por IA que nunca sucedieron.
3. **Música generada por IA:** Pistas musicales o interpretaciones vocales generadas con herramientas de inteligencia artificial (conforme a las directrices vigentes de YouTube Studio sobre contenido alterado o sintético).

**Casos que NO requieren declaración:**
1. **Animación y contenido manifiestamente ficticio:** Estilos de anime, dibujos animados, stop-motion o efectos visuales claramente fantásticos.
2. **Clonación de la propia voz del creador:** Utilizar una réplica de tu propia voz para locuciones, narración o doblajes multiidioma (con tu propio consentimiento).
3. **Voces sintéticas de biblioteca claramente reconocibles como IA:** Locución sintética estándar que no intente engañar sobre la identidad de una persona real.
4. **Asistencia de producción interna:** Uso de IA para lluvia de ideas, redacción de guiones, generación de subtítulos automáticos o corrección de color.

### Puerta de Congruencia Promesa ➜ Contenido (Linter de Alineación) `[Puerta Obligatoria]`

> **Origen:** Se destiló del análisis de `_framework/referencias/auditorias/revision-externa-3-2026-10-22.md` sobre los apuntes del segundo amigo. Reemplaza la propuesta de un detector de «Quality CTR / QCR»: no se puede implementar el supuesto Quality CTR como puntuación concreta porque no existe una especificación pública que permita calcularla o reproducirla. En su lugar, se construye un control editorial **evaluable con criterios editoriales y ejemplos contrastables**, que comprueba lo mismo de forma observable: que el contenido cumple la expectativa que genera el packaging.

Antes de dar por aprobado cualquier guion, el agente debe responder afirmativamente a estas 5 preguntas:

1. **¿Qué promete explícitamente el título?** (Señalar la frase o palanca del título aprobado en `01-packaging.md`).
2. **Qué expectativa genera la miniatura?** (Qué brecha de curiosidad y qué escena/elemento visual la abre, ver rol 02 §2).
3. **¿El vídeo entrega lo prometido?** (El desarrollo cubre la promesa; no hay afirmaciones visuales o textuales que el vídeo no pueda justificar).
4. **¿La apertura permite reconocer pronto que el contenido corresponde a esa expectativa?** (Ver rol 03 §3: la promesa debe validarse en los primeros 5–30 segundos según el formato. **Entregar la respuesta o el resultado pronto no es un spoiler**: en tutoriales y videos de consulta, la respuesta temprana *es* el cumplimiento de la promesa; ver el anti-spoiler condicionado por formato).
5. **¿Hay alguna afirmación que el vídeo no pueda respaldar?** (Cualquier cosa que suene como un resultado garantizado, un mecanismo interno de YouTube o una métrica oculta).

**Regla:** Si alguna respuesta es **NO**, el guion no avanza. Se registra la incongruencia en `06-fuentes-y-verificacion.md` como hallazgo de control y se corrige antes de la locución definitiva. Esta puerta es **independiente** de la puerta de originalidad (aportación editorial propia) y de la YMYL (linter de léxico): una cosa es que el contenido sea original y otra cosa es que lo que promete sea lo que realmente entrega.

### Puerta de Correspondencia del Arranque (Prueba Concreta) `[Puerta Obligatoria]`

> **Origen:** revisión externa 5 (`_framework/referencias/auditorias/revision-externa-5-2026-10-22.md`), destilada del estudio de prácticas de MrBeast. Complementa la puerta anterior con la **comprobación física del arranque**, no solo de la promesa abstracta. La documentación oficial de YouTube también vincula la expectativa creada por título y miniatura con lo que ocurre en los primeros 30 segundos.

Se aprueba **antes de cerrar guion y storyboard**, respondiendo por escrito:

| Comprobación | Pregunta a responder |
| :--- | :--- |
| **Primera imagen** | ¿Mantiene una relación visual comprensible con el concepto de la miniatura, cuando ese tipo de correspondencia es pertinente al formato? |
| **Primera frase** | ¿Confirma el tema o la promesa del título **sin preámbulo que no aporte valor**? |
| **Ventana de arranque según formato** | En la ventana que corresponda al formato, la duración y la promesa (Shorts: desde el segundo cero; formatos dinámicos/tutoriales: ~5–10 s; ensayos y documentales: ~15–30 s), ¿el video presenta suficiente contexto, interés, reto o recompensa para que el espectador entienda por qué conviene quedarse? |
| **Cumplir y superar** | ¿El video confirma lo prometido y **empieza a aportar valor adicional**, sin engañar ni exagerar lo que puede entregar? |

**Es una prueba editorial, no una orden de que el primer plano replique literalmente la miniatura.** El género puede exigir otra apertura (inmersión atmosférica en relax/ficción, demostración directa en tutorial). **Las ventanas temporales de la tabla son referencias, no una regla idéntica para todo video:** un Short se evalúa desde el segundo cero y un ensayo largo en su propia ventana; la métrica de "retención a los 30 s" es un indicador documentado de long-form y **no se traslada mecánicamente a Shorts** (cuya señal propia es *viewed vs swiped*). Lo que no se admite es que la apertura no tenga relación con lo que se vendió, o que se demore en decirlo según el estándar del propio formato.

### Puerta de Protección de la Satisfacción Acumulada `[Puerta Obligatoria]`

> **Origen:** estudio de fuente 2 (MrBeast), capítulo 13. ✅ **ADOPTADO.**

- **El CTR genera la primera visita; la satisfacción acumulada genera las siguientes cincuenta.**
- Si un espectador hace clic en 5 videos y queda decepcionado por promesas infladas, artificios vacíos o payoffs mediocres, en el sexto video preferirá a un competidor aunque el empaque sea impecable.
- **Comprobación obligatoria en el guion:** ¿El desenlace o payoff del video cumple y **supera** la promesa inicial del título? ¿Aporta una conclusión o beneficio transformador en vez de un listicle superficial de relleno? Si la respuesta es no, el guion debe reescribirse antes de avanzar a la locución.

### Puerta de Seguridad YMYL: Linter de Léxico Prohibido y Matización Científica
*(Aplicable a canales de Ciencia, Salud, Nutrición, Finanzas y Noticias - Ver `_framework/contingencia-y-politicas-sensibles.md`)*:
- **Carga de la Prueba:** Prohibido redactar una afirmación fáctica en el guion sin su respectivo DOI o fuente primaria registrada en `06-fuentes-y-verificacion.md`.
- **Eliminación de Absolutos Sensacionalistas:** Sustituir frases que disparan las alarmas de YouTube (*"este estudio demuestra"*, *"cura definitiva"*, *"el secreto oculto"*) por formulaciones rigurosas (*"un mecanismo observado preliminarmente"*, *"los datos sugieren una correlación"*).
- **Matización Animales vs. Humanos:** Si el estudio citado fue en roedores o células in vitro, el guion **debe aclararlo expresamente en la locución**.
- **Disclaimer Legal Obligatorio:** Incluir en la descripción del video la cláusula de exención de responsabilidad médica o financiera correspondiente.

### Regla de Oro de Credibilidad Ética (Prohibido Inventar Credenciales)
- ❌ **Prohibición absoluta:** El agente **tiene terminantemente prohibido inventar experiencias personales falsas, títulos académicos ficticios o credenciales inventadas** para simular autoridad (*"tras pasar 10 años en Wall Street..."* o *"luego de analizar personalmente 500 pacientes..."* si no es una realidad comprobable del creador).
-  **Construcción de Autoridad Legítima:** Cuando el narrador no cuente con una biografía de autoridad personal directa, **la credibilidad se sostiene en fuentes primarias verificadas, citas transparentes, razonamiento lógico riguroso y demostraciones prácticas**. Un canal transmite máxima confianza con hechos y método, sin necesidad de inventar un personaje ficticio.
- **El Método del Conejillo de Indias (*The Guinea Pig Method*):** (Masterclass YouTube 2025). Cuando el creador no posea títulos formales, la autoridad legítima se construye mediante la **experiencia o prueba empírica directa**: vivir un reto en carne propia, auditar un proceso durante 30, 90 o 1.000 días, o documentar un experimento metódico. La prueba viva y transparente genera mayor fascinación y credibilidad genuina que un título inventado.

---

## 2. Estructura de Storytelling: Del Conflicto al Valor

- ❌ **Evitar aperturas lentas o académicas sin gancho:** Demorar el conflicto con saludos formales o preámbulos innecesarios genera caídas tempranas de retención. Las estructuras narrativas de tres actos (planteamiento, confrontación y resolución) son plenamente válidas siempre que atrapen al espectador desde el inicio.
-  **Estructura dinámica orientada al valor:**
  $$\text{Conflicto / Dilema} \longrightarrow \text{Contexto Dosificado} \longrightarrow \text{Desarrollo / Argumento Central} \longrightarrow \text{Resolución (Payoff)} \longrightarrow \text{CTA Orgánico}$$

### Arquetipo Opcional de Referencia: Estructura de Proceso y Transformación
*(Modelo de referencia útil exclusivamente para videos de transformaciones visuales, restauraciones, manualidades o procesos de ciencia/IA; no aplica a tutoriales directos, análisis ni ensayos)*:

1. **Declaración:** Fija el objetivo o desafío inicial (*Segundos 0-5*).
2. **Evaluación:** Muestra el estado inicial con mediciones, datos o diagnóstico (*Segundos 5-15*).
3. **Aislamiento:** Tratamiento metódico de las dificultades paso a paso (*Segundos 15-30*).
4. **Proceso:** Desarrollo técnico, químico o práctico acelerado (*Segundos 30-45*).
5. **Construcción / Acabado:** Ajustes finales con precisión (*Segundos 45-53*).
6. **Revelación (*Reveal*):** Muestra el resultado final transformado (*Segundos 53-59*).
- **Anclaje de Contraste Antes/Después (Opcional):** Si el video trata sobre una transformación, fijar claramente el estado inicial en los primeros segundos (mediante una captura, gráfica, imagen de referencia o pantalla dividida) para que la revelación final complete la expectativa de forma evidente.

### Arquetipo Opcional: La Estructura del Arco en Bucle (*Looped Arc*) — General, no solo cortos/medianos

> **Encuadre (revisión externa 5, ronda de pulido 2):** este arco es una **estructura narrativa general**, aplicable a cualquier duración cuando la incertidumbre, las dificultades y la resolución contribuyen a sostener el interés. En un video largo puede ser el arco principal o **repetirse como subestructura** de una parte del video. **No es obligatorio para todos los videos**: un tutorial, una explicación cuya respuesta debe darse pronto o una pieza contemplativa que no necesite conflicto no lo usa. Definición canónica en este documento (rol 03 §2).

- La estructura lineal básica `Gancho ➔ Acción plana ➔ Recompensa` suele volverse monótona hacia la mitad del metraje.
- **El Arco en Bucle añade tensión intermedia:**
  $$\text{Gancho (Bucle Abierto)} \longrightarrow \text{Acción Inicial} \longrightarrow \mathbf{Conflicto / Error\ Inesperado} \longrightarrow \mathbf{Recuperación / Reintento} \longrightarrow \text{Payoff / Recompensa}$$
- *Mecánica:* El reto arranca con normalidad ➔ A mitad de camino ocurre un fallo imprevisto, error de cálculo o dificultad técnica (**Conflicto**) ➔ El creador debe adaptarse, probar otra técnica o recalibrar (**Recuperación**) ➔ Se alcanza el resultado final con un remate de impacto (**Payoff**). Esto mantiene al espectador sin saber si el intento tendrá éxito o fracasará.

### Caja de Herramientas: Reactivación Narrativa en Videos Largos `[Opcional — solo si la duración lo pide]`

> **Origen:** revisión externa 5 (`_framework/referencias/auditorias/revision-externa-5-2026-10-22.md`). Una única línea argumental lineal difícilmente sostiene la atención de un video de doble dígito de minutos hasta su desenlace.

Para videos largos que lo necesiten, se puede planificar **un punto de reactivación a mitad del metraje**. Opciones (no es lista cerrada):
1. **Una pregunta nueva** que profundice en el tema.
2. **Un caso inesperado o excepción** que cambie la interpretación de lo ya explicado.
3. **Una demostración práctica** que permita comprobar lo explicado.
4. **Una recompensa parcial** que resuelva una cuestión y planteé otra.
5. **Una línea narrativa secundaria** que contribuya al objetivo principal.

**Límites:** no se impone un giro cada tres minutos ni se fabrican obstáculos artificiales. Un video científico, un tutorial o un ensayo puede sostener la atención con **claridad, descubrimiento progresivo y demostraciones**, sin parecer un reto de entretenimiento. Si el formato no necesita reactivación, no se fuerza.

### Prohibición del Cliché del "Listicle" de Autoayuda en el Payoff:
- ❌ **El reflejo perezoso a evitar:** Terminar un video de divulgación científica, histórica o de análisis profundo con "3 tips rápidos de autoayuda para tu día a día (1. Duerme bien, 2. Repasa tus notas, 3. Come sano)". Esto degrada un descubrimiento de alto nivel a un post genérico de TikTok y destruye la recompensa intelectual.
-  **El Payoff de Reencuadre Mental:** La resolución debe cerrar el dilema planteado al inicio ofreciendo un **nuevo modelo mental transformador** para el espectador (ej. entender que el olvido no es un fallo de memoria, sino un mecanismo biológico activo de limpieza sináptica sin el cual el cerebro colapsaría por sobrecalentamiento informático).

---

## 3. Ganchos y Apertura (Los Primeros 5 a 30 Segundos según Formato)

El objetivo de la apertura es alinear de inmediato las expectativas del espectador con lo prometido en el título y la miniatura, **protegiendo la retención temprana según el formato**: en formatos dinámicos y tutoriales se valida en los primeros 5–10 segundos; en ensayos y documentales en los primeros 15–30 segundos; en Shorts desde el segundo cero. **No existe una métrica universal de "retención a los 30 segundos" aplicable a todos los formatos**: YouTube documenta que los momentos clave de retención requieren ≥60s y ≥100 vistas (long-form); Shorts reportan métricas propias (Viewed vs Swiped, duración media, % medio visto). La apertura debe validar la promesa en la ventana que corresponda al formato.

### ❌ Linter Narrativo Anti-Spoiler — **Condicionado por Formato** (no es una prohibición universal)

> **Corrección de la revisión externa 5** (`_framework/referencias/auditorias/revision-externa-5-2026-10-22.md`): esta regla estaba redactada como prohibición estricta para todos los videos, heredada del canal de divulgación con revelación central. Contradecía la adaptabilidad por género del propio §3 y era activamente dañina en tutoriales y explicación directa.

- **Cuándo APLICA (el descubrimiento es parte de la experiencia):** misterio, transformación, reto, investigación, divulgación con mecanismo central revelado.  
  ❌ **La trampa a evitar:** desvelar la causa biológica/técnica o el desenlace en los primeros compases. Si en el segundo 30 el espectador ya sabe la respuesta, la tensión cognitiva muere y el resto del video se vuelve una monografía.  
  ✅ **Qué va en la apertura:** el síntoma universal, el dolor, el dilema o la paradoja (*"Olvidar no es un desgaste pasivo de tu mente: es una orden activa que consume enormes cantidades de energía... pero ¿por qué tu cerebro gastaría tantos recursos en destruir lo que tanto te costó aprender?"*). La revelación se reserva para el desarrollo.
- **Cuándo NO APLICA (la respuesta temprana es el valor):** tutoriales, screencasts, explicación directa, videos que resuelven una pregunta concreta del espectador (búsqueda), documentación técnica.  
  ❌ **La trampa aquí:** retrasar artificialmente la respuesta para fabricar tensión. El espectador que busca cómo resolver algo **abandona si no obtiene señales de que la respuesta llega**; frustrar la consulta es perder la retención que se quería proteger.  
  ✅ **Qué va en la apertura:** confirma la promesa pronto y construye el interés sobre el **cómo**, el **por qué** o la **aplicación**, no sobre esconder el resultado.
- **Registro obligatorio:** el guion (`02-guion.md`) declara en una línea qué caso aplica y por qué. El payoff **nunca** puede ser un listicle vago de autoayuda.

### El Filtro del Gancho en Bucle Abierto (*Open Loop Hook*) — Herramienta Opcional
-  **El Gancho como Pregunta o Enigma Abierto (herramienta opcional, condicionada al formato):** Formular el gancho como una incógnita irresistible (*"¿Qué pasaría si comprimieras 100 latas de Red Bull en una sola bebida?"*). El cerebro del espectador entra en tensión cognitiva y **mientras el bucle siga abierto, el motivo para quedarse es cerrarlo**.
  - **Cuándo es la herramienta correcta:** retos, misterios, transformaciones, narrativas donde el desenlace es el valor. Allí la promesa se cierra cerca del final.
  - **Cuándo NO lo es:** tutoriales, explicación directa y videos que responden una consulta de búsqueda. **No se debe obligar a retrasar una respuesta que el espectador vino a buscar.** Allí el bucle abierto se traslada: la respuesta se entrega pronto y la tensión pasa al **cómo aplicarla, qué limitaciones tiene o por qué funciona**.
  - ❌ **El error que mata la retención (afirmación cerrada, en los casos donde sí aplica el bucle):** redactar un gancho que describe y destripa el resultado final (*"Este creador convirtió 100 Red Bulls en polvo usando una máquina especial"*) antes de que el video pueda mostrar el proceso.

### Adaptabilidad según Formato (Apertura Flexible)
La regla de validar la promesa en los primeros segundos es una guía de retención, no una camisa de fuerza idéntica para todos los géneros:
- **Formatos dinámicos / Desafíos / Tutoriales:** La promesa debe validarse en los primeros **5 a 10 segundos** tanto con audio como con video para evitar abandono inmediato.
- **Ensayos científicos / Documentales / Divulgación profunda:** Requieren establecer una atmósfera o pregunta provocadora (*hook de misterio o tensión*) en los primeros 15 a 30 segundos antes de desplegar el argumento.
- **Relatos / Contenido pausado (ej. relax o bedtime stories):** El tono y la inmersión sonora inicial son prioritarios sobre un corte apresurado.

### Caja de Herramientas: 5 Técnicas Opcionales de Apertura
El agente dispone de este repertorio de ganchos para elegir el que mejor encaje con la idea:
1. **La Pregunta Imposible de Ignorar:** Genera una incógnita o tensión cognitiva directa (*"¿Qué pasaría si...?"*).
2. **El Dato que Rompe Creencias:** Expone un hecho o estadística sorprendente que contradice el sentido común de la audiencia.
3. **El Escenario Hipotético:** Sitúa al espectador en una circunstancia vívida que apela a su experiencia cotidiana (*"Imagina que te despiertas mañana y..."*).
4. **La Promesa Directa / Demostración Inmediata:** Expone de frente el resultado o solución que se obtendrá al final del video.
5. **Inmersión Atmosférica / Enigma Narrativo:** Para relatos de ficción, historias o relax, arranca sumergiendo al espectador en el ambiente sonoro y el contexto dramático sin estridencias.

---

## 4. Caja de Herramientas de Intros y Aperturas (Alineación, Autoridad y Compromiso Mental)

> **Criterio de Aplicabilidad:** Esta caja de herramientas está diseñada para **formatos de Autoridad, Negocios, Divulgación Científica, Ensayos o Videos de Media y Larga Duración**. En formatos de **Ficción, Cuentos para Dormir, Sátira, Misterio o Tutoriales Ágiles**, forzar un *Unfair Edge* o un *Roadmap* rompe la inmersión: en esos géneros se prioriza la atmósfera, el enigma o la acción inmediata.

Toda apertura en formatos educativos o de autoridad responde a las necesidades críticas de retención a través de las siguientes técnicas combinables:

### 1. Reafirmar la Promesa (*Reaffirm what they clicked for*)
- En el segundo cero, confirmar de inmediato con audio y video que el espectador está en el lugar correcto.
- Cumplir la expectativa directa del título y la miniatura para que decida quedarse unos segundos más.

### 2. El "Unfair Edge Statement" (Por qué debes escucharme a mí y no a otro)
- *(Aplicable a canales de experto, análisis, ciencia o negocios)*:
- Establecer en **una frase memorable, clavada y contundente** tu autoridad o ventaja injusta única:
  - *"Sé esto porque pasé los últimos 3 meses leyendo los 50 papers originales de Oxford sobre..."*
  - *"Gestiono 100M$ al mes en pauta publicitaria para clientes como X..."*
- ❌ **Prohibición de interrupciones institucionales:** No interrumpir la tensión inicial con autopromoción o eslóganes del canal (*"En este canal leemos los papers de las mejores revistas..."*). Al espectador que recién entra a YouTube no le importa el nombre del canal; la autoridad se demuestra a través del rigor de las fuentes y la calidad de la narración, no con un discurso institucional en los primeros 45 segundos.

### 3. El Roadmap de Compromiso Mental (*Where the video is going / Spoiler Intro*)
- *(Aplicable a videos largos o explicaciones complejas donde el espectador debe comprometerse a mirar 15-40 minutos)*:
- Enumerar de forma lógica y rápida los hitos del video: *"Te voy a mostrar exactamente cómo configurar X, qué error arruina el 90% de los intentos, y el método exacto para resolver Y"*.
- Al ver la estructura completa de lo que viene, el espectador concluye lógicamente: *"Esto es exactamente todo lo que necesito saber"* y se queda hasta el final.
- *Nota:* En relatos, misterio o ficción, **NO usar roadmap**: revelar lo que viene destruye la intriga y el factor sorpresa.

### 4. Frontloading (Adelantar la Experiencia)
Si el video contendrá animación destacada, datos reveladores o edición especial, mostrar un destello de esa calidad en los primeros compases para fijar el estándar de producción en la mente de la audiencia.

### 5. Estructura R.A.I.N.Y. de Intros (Alternativa Modular para Ensayos y Educación)
> **Origen:** Masterclass de YouTube 2025. 🟡 **ADAPTADO.**
Estructura opcional compacta (<45 s en videos largos, <10 s en formatos dinámicos) para enganchar audiencias escépticas:
- **R (Result):** Adelantar el resultado que obtendrán o la pregunta irresistible que se resolverá.
- **A (Address Objection):** Desactivar el detector de mentiras del espectador abordando su principal objeción o duda antes de que abandone (*"sé lo que piensas: que esto no aplica si no tienes equipo profesional..."*).
- **I (Instant):** Entrada rápida y sin preámbulos institucionales.
- **N (Now):** Explicar por qué este tema es relevante y oportuno ahora mismo (tendencia, cambio o urgencia).
- **Y (You):** Establecer por qué tú (el Unfair Edge del canal o la prueba del conejillo de indias).

---

## 5. Arquitectura Atómica del Guion (Bloques con IDs Estables y Locución Provisional)

Para trabajar de forma modular y económica con agentes de IA y herramientas de montaje, el guion no se redacta como un texto corrido monolítico:

### 1. Identificadores Estables de Bloque (`[B01]`, `[B02]...`)
- El guion maestro se divide en bloques numerados con un objetivo narrativo y una duración estimada en segundos:
  - `[B01_Hook]` (Apertura / Promesa inicial - ~8s)
  - `[B02_Contexto]` (Contexto indispensable - ~15s)
  - `[B03_Conflicto]` (Tensión o dilema central - ~30s)
  - `...`
- **Ventaja de ingeniería:** Permite correlacionar cada frase exacta con su escena en el storyboard. Si se detecta un error o dato desactualizado en el minuto 2, **no se reconstruye el video completo**: se regenera únicamente el audio de ese bloque y se ajustan solo los clips asociados.

### 2. Locución Provisional (*Scratch Track*) vs. Definitiva
- **Regla de ahorro y validación:** No gastar créditos de locución de pago (ElevenLabs, etc.) ni grabar locución definitiva en el primer borrador.
- Se genera una locución provisional rápida (TTS gratuito del sistema o borrador) para verificar:
  - Pronunciación de términos técnicos o nombres.
  - Duración real de las frases y naturalidad de las pausas.
  - Fluidez al oído (frases que en texto parecen buenas pero habladas suenan pedantes o trabadas).
- Una vez validado y aprobado el ritmo con el *animatic*, recién se procede a renderizar la locución definitiva.

### 3. Pautas de Escritura para Voz Sintética / Narrada (Escribir para el Oído)
- **Lenguaje conversacional:** Escribir como se habla naturalmente. Las estructuras gramaticales excesivamente densas o académicas fatigan al oyente.
- **Dinamismo auditivo:** Alternar frases cortas y contundentes con oraciones explicativas más fluidas para crear una cadencia atractiva.
- **Pausas y respiración:** Utilizar puntos y comas bien calibrados para indicar pausas dramáticas o de respiro a la voz sintética.
- **Términos técnicos:** Evitar encadenar palabras complejas o siglas sin explicarlas de inmediato.
- **Regla de Identidad Sonora contra la "Voz Genérica de IA":** (Ingeniería Inversa Zack D. Films). En canales sin presentador a cámara (*faceless*), queda terminantemente desaconsejado utilizar las voces gratuitas estándar más trilladas de las bibliotecas de TTS (ej. voces estándar de CapCut o de biblioteca genérica). La audiencia detecta esas voces en los dos primeros segundos como "contenido automatizado de baja estofa" y desliza (*swipe away*). **Solución:** Priorizar la clonación de la propia voz del creador (conforme a las directrices de YouTube), o calibrar un modelo neuronal con una personalidad y entonación singulares que forjen la identidad sonora del canal.
- **Voice Prompting y Acotaciones Actorales (Dirección Vocal IA):** Los motores neuronales modernos (como Google AI Studio *Generate Speech* con Gemini, ElevenLabs *Voice Design*, etc.) no solo leen texto plano; interpretan **prompts de diseño acústico y acotaciones de dirección escénica**. El guionista o agente puede enriquecer los bloques `[Bxx]` con indicaciones interpretativas entre corchetes:
  - *Diseño acústico del personaje:* `[Narrador: voz barítono profunda, tono reflexivo y sereno, ritmo pausado, documental BBC]`.
  - *Modulación emocional y física:* `[Personaje Y: respiración entrecortada, voz temblorosa por el frío]`, `[Personaje Z: tono escéptico, carraspea y habla con desdén]`.
  - *Pausas e inflexiones:* `[Susurro tenso]` *"La puerta estaba abierta..."*, `[Pausa de 1 segundo antes de la cifra]`.
  Esto elimina la monotonía sintética y convierte la locución en una **interpretación actoral creíble**, permitiendo que varios personajes dialoguen con personalidades vocales contrastadas.

### 4. La Regla de las 3 B's de Locución (MKBHD: Básico, Audaz, Breve)
> **Origen:** Masterclass de YouTube 2025 (MKBHD & Jon Youshaei). ✅ **ADOPTADO.**
Directivas de estilo para la redacción de los bloques `[Bxx]` para asegurar que el guion comunique con claridad y autoridad natural:
1. **Básico (Lenguaje Llano):** Traducir la jerga técnica a vocabulario accesible (ej. usar *"aprovechar"* en vez de *"apalancar"*; *"habilidades"* en vez de *"competencias"*). Escribir a un nivel de comprensión equivalente a 6º de primaria; la sofisticación radica en las ideas y el análisis, no en la complicación artificial del vocabulario.
2. **Audaz (Eliminar Titubeos):** Suprimir condicionales y vacilaciones que socavan inconscientemente la autoridad (*"quizás"*, *"posiblemente"*, *"podría ser"*). Formular afirmaciones asertivas y directas (salvo en temas YMYL donde la matización científica sea un requisito legal).
3. **Breve (Economía Verbal):**
   - Oraciones de **máximo 25 palabras** para que la locución conserve aire y cadencia.
   - Párrafos de **máximo 3 frases**.
   - Prohibidas las redundancias y descripciones dobles: no decir *"el cuarto estaba limpio y ordenado"*, sino simplemente *"limpio"*. Eliminar palabras de relleno que no agreguen información nueva.
- **Símbolos y números:** Escribir los símbolos por su nombre fonético completo (*"por ciento"*, *"dólares"*) para evitar lecturas defectuosas del motor TTS.
- **El Momento de Mayor Valor:** En lugar de forzar un giro artificial a 2/3 del video si la historia no lo pide, asegurar que el video contenga un **momento de máxima recompensa intelectual o emocional** (la prueba decisiva, la revelación del mecanismo o la conclusión práctica).

### 5. Grados de Guionado según el Formato (Palabra por Palabra vs. Estructura Nítida)

> **"A full script can make a strong expert worse on camera. You need to figure out which ideas require exact wording versus a sharp structure with room to think."**

- **Grado A: Guion Completo Palabra por Palabra (*Full Script*):**
  - *Cuándo usar:* Videos narrados con locución en off (TTS de ElevenLabs, documentales, historias, ensayos científicos densos).
  - *Razón:* Cuando no hay un presentador humano improvisando, cada palabra cuenta para el ritmo, la retención y los bucles abiertos (*open loops*). La locución debe estar pulida al milímetro.
- **Grado B: Estructura Nítida con Espacio para Pensar (*Sharp Structure / Bullet Points*):**
  - *Cuándo usar:* Grabaciones de pantalla (screencasts de software/código), retos técnicos en vivo, o expertos hablando directamente a cámara.
  - *Razón:* Forzar a un programador o experto a leer un guion palabra por palabra mientras interactúa con una pantalla arruina la naturalidad y lo vuelve rígido. Se define con precisión el objetivo de cada bloque `[Bxx]`, las cifras clave y el remate, pero se deja libertad para explicar con soltura la acción real.

---

## 6. Arquitectura de Conversión: El CTA como el "Siguiente Paso Más Útil"

> **"Views alone do not grow your business. The video does not have to make the whole sale; it just has to make the next useful step obvious."**

### 1. La Muerte del "Pitch Aleatorio" (Random Pitch)
- ❌ **Prohibido el esquema tradicional:** `Valor ➔ Valor ➔ Valor ➔ Pitch desconectado` (*"Y por cierto, si quieres que te gestionemos las campañas, haz clic en el enlace..."* o *"Únete a mi newsletter gratuita..."*).
- Este tipo de llamadas se sienten como un **"Take" (quitarle al espectador)**, generan fricción comercial y rompen la satisfacción acumulada.
-  **El Principio del "Give":**  
  > **"The action should feel like it's the most useful next step. Instead of being a take, it's a give and the viewer is thanking you for it."**  
  *(La acción debe sentirse como el siguiente paso indispensable para aplicar lo aprendido; en vez de pedirle algo, le estás dando un recurso y el espectador te lo agradece).*

---

### 2. Las Dos Vías de Integración de Ofertas:

#### Vía 1: El Producto como Desatascador Narrativo (Para Software, Apps o Productos)
- En lugar de hacer un "video demostrativo de una funcionalidad", se empaqueta la herramienta dentro de un desafío o historia real (ej. caso *Instantly.ai*: reto de conseguir la primera venta de un negocio en 10 horas, donde la función de dominios precalentados resuelve el obstáculo crítico del tiempo).
- **El Filtro del Experto Imparcial (*The Unbiased Expert Test*):**  
  > *"¿Un experto completamente imparcial que no tuviera ningún interés económico en este producto lo seguiría incluyendo aquí porque hace que el video sea más útil?"*  
  - Si la respuesta es **SÍ**, la mención es orgánica, creíble y eleva el video.
  - Si la respuesta es **NO**, la herramienta está forzada con calzador y quemará la confianza de la audiencia.

#### Vía 2: La Extensión Natural de la Lección (Para Servicios, Consultoría, Info o Canales Educativos)
- Cuando el servicio o consultoría no puede actuar como herramienta física dentro de la historia, se crea un activo tangible que **continúa la lección donde termina el video**:
  - *Si el video enseña una estrategia de anuncios:* El dolor inmediato siguiente es dónde ver ejemplos ➔ **Lead Magnet:** *"Te dejo gratis nuestra biblioteca viva de anuncios ganadores en Notion"*.
  - *Si el video enseña a gestionar una empresa con KPIs:* El dolor inmediato es cómo estructurar la tabla ➔ **Lead Magnet:** *"Descarga gratis la plantilla exacta de Google Sheets con el Scorecard que uso cada semana"*.
- **La función del Lead Magnet:** El espectador se descarga un recurso que necesita desesperadamente para ejecutar lo que acaba de aprender, entra al embudo encantado y agradecido, y queda en la lista para ofertas de alto valor posteriores.

---

### 3. Principio de Adaptabilidad: Arquetipos de Canal y Etapas de Madurez

> **Regla de ingeniería:** Jamás aplicar un enfoque de "todo o nada". El CTA y la monetización se amoldan a la naturaleza de la temática y al momento de vida del canal. Forzar un embudo de ventas en un canal de relax o en un canal nuevo es un error de diseño.

#### Matriz por Arquetipo de Canal:
1. **Canales de Entretenimiento, Relax, Ficción o Sátira:**
   - *Temáticas:* Cuentos para dormir, animación, lore, noticias satíricas, curiosidades.
   - *Modelo:* AdSense puro, patrocinios futuros de marcas y volumen masivo.
   - *El Siguiente Paso Más Útil:* **EL SIGUIENTE VIDEO COMPLEMENTARIO**.  
     - En un video para dormir o relajarse, nadie quiere descargarse un PDF ni suscribirse a una newsletter (rompe la experiencia).
     - El CTA ideal es: *"Si te sirvió esta historia, acá tenés la lista con los 3 relatos más relajantes para esta noche"*. Genera reproducción en cadena (*binge-watching*), que es la métrica de oro que YouTube más premia.
2. **Canales de Pasión, Hobby o Nicho Práctico:**
   - *Temáticas:* Coctelería, motos, cultura, programación básica.
   - *Modelo:* Enlaces de afiliación transparentes (libros o herramientas recomendadas en la descripción) o comunidad abierta.
3. **Canales de Autoridad, Servicios, Consultoría o SaaS:**
   - *Temáticas:* B2B, marketing, productividad avanzada, finanzas profesionales.
   - *Modelo:* Lead Magnets funcionales (plantillas de Notion, Google Sheets, demos) orientados a captar clientes cualificados.

#### Etapas de Madurez del Canal (Ciclo de Vida):
- **Etapa 1: Validación y Tracción Inicial (Primeros 10 a 20 videos):**
  - **Foco único:** Descubrir qué busca la audiencia y lograr que YouTube comience a recomendar el canal.
  - **Cero complejidad de backend:** No hay producto, no hay lead magnet complejo, no hay newsletter obligatoria.
  - **El único CTA permitido:** Recomendar el siguiente video del canal que responde a la siguiente duda lógica para alimentar el algoritmo.
- **Etapa 2: Monetización Blanda (Audiencia recurrente):**
  - Activación de AdSense y enlaces de afiliados limpios en la descripción sin interrumpir la narrativa.
- **Etapa 3: Backend Propio (Consolidación):**
  - Solo cuando el canal tiene tracción real y audiencia recurrente, se construyen recursos descargables, productos o servicios.

#### Advertencia contra el Backend Prematuro (Filtro Anti-CPG / Negocio Pesado):
> **Origen:** estudio de fuente 2 (MrBeast), capítulo 24. ✅ **ADOPTADO.**
- No apresurarse a crear productos físicos complejos, líneas de mercancía o negocios pesados paralelos en las etapas iniciales o intermedias del canal.
- El costo de oportunidad de descuidar el contenido para gestionar inventarios, logística o empresas nacientes suele destruir el alcance del canal. Para la gran mayoría de los canales, los acuerdos de marca limpios y los enlaces de afiliación bien contextualizados ofrecen un retorno financiero superior con una fracción de la complejidad operativa.

---

### 4. Protocolo Operativo de Enlaces, Afiliados y Patrocinios en Guion
- **Comprobación Previa (Check de Intención Comercial):** Antes de redactar la locución definitiva de un video, el guionista o agente debe verificar si el video incluye enlaces de afiliados, patrocinios de marca o recursos descargables en la descripción.
- **Mención Verbal Obligatoria:** Si el video cuenta con enlaces de afiliados o recursos clave, la locución debe incluir una mención verbal natural y contextualizada en el bloque correspondiente (por ejemplo en el cierre o al introducir la herramienta como desatascador). El espectador rara vez desciende a leer la descripción por iniciativa propia sin un llamado verbal orgánico.
- **Alineación con Packaging:** Todo enlace o recurso mencionado verbalmente debe quedar registrado en la propuesta de descripción en `01-packaging.md` y en el `entregable-final.md`.

---

### 5. Pausas Naturales para Anuncios (Mid-Rolls en Videos > 8 Minutos)
- **Umbral de Plataforma:** YouTube habilita la colocación de pausas publicitarias intermedias (mid-rolls) únicamente en videos con una duración superior a 8 minutos.
- **Diseño de Puntos de Interrupción Orgánicos:** En videos de formato largo (>8 min), el guion debe planificar conscientemente 1 o 2 momentos de respiro o transición temática entre bloques (tras redondear una idea o resolver una tensión parcial) y marcarlos explícitamente:
  `[Pausa natural / Mid-roll sugerido: mm:ss]`
- **Propósito Editorial:** Evitar que el sistema de inserción automática de YouTube corte el video en medio de una frase o en el clímax de una revelación. Definir las pausas de forma manual en YouTube Studio sobre puntos de transición natural protege la retención y la experiencia del espectador mientras optimiza la monetización por AdSense.

---

## 7. Doctrina "Copiar con Gusto" vs. Imitación Estilística Superficial (Remix & Elevate)

> **Origen:** estudio de fuente 2 (MrBeast), capítulo 4. ✅ **ADOPTADO.**

Inspirarse en la estructura de un formato, reto o premisa viral (*outlier*) **no autoriza a imitar superficialmente el estilo de edición, el ritmo frenético ni el tono de otro creador**.

- **La regla de Jimmy:** *"Si la audiencia quisiera ver el estilo de MrBeast, vería mi video. No necesitamos a alguien más haciendo mis videos con menos presupuesto y esfuerzo; necesitamos gente haciendo su versión con su propio giro y gusto."*
- **El modelo Ryan Trahan:** Tomar la premisa estructural (ej. viajar con presupuesto limitado o comparar lugares), pero ejecutarla con la propia voz: ritmo pausado, silencios, humor sutil y personalidad propia.
- **Directiva:** Al trasponer una idea, adoptar el conflicto estructural y la brecha de curiosidad; adaptar el ritmo, la velocidad de corte y la narrativa a la identidad del canal.


