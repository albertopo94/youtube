# AGENTS.md — Protocolo Operativo y Contrato de Gobernanza para Agentes

Este repositorio es la oficina de producción de canales y videos de YouTube del creador. Todo agente de IA que opere en este workspace debe acatar estrictamente el siguiente contrato de trabajo, niveles de autonomía y directivas técnicas.

---

## 🧭 01. Protocolo Universal de Inicio y Continuidad de Tareas

Tanto si un agente ingresa al repositorio por primera vez como si retoma el trabajo de otro agente o del creador, debe seguir este protocolo antes de ejecutar cualquier acción:

### Al Iniciar una Sesión de Trabajo:
1. **Identificar el Contexto:** Detectar si la tarea pertenece a un canal en investigación (`canales-en-estudio/[canal]/`) o a un canal activo en producción (`mis-canales/[canal]/`).
2. **Consultar el Estado Real (`00-estado-produccion.md`):** Leer el archivo de estado de producción del video o canal. No asumir nada a partir de conversaciones pasadas.
3. **Verificación Física de Entregables:** Inspeccionar qué archivos existen realmente en el disco (ej. si `01-packaging.md` tiene títulos y miniaturas aprobados; si `06-fuentes-y-verificacion.md` tiene las fuentes primarias validadas). **Completar casillas no equivale a haber demostrado el resultado.**
4. **Determinar la Siguiente Acción Permitida:** Identificar la fase activa y verificar si se encuentra en estado `EN_CURSO` o si está bloqueada en `PENDIENTE_APROBACION` esperando validación humana.
5. **Linter Obligatorio de Ideas y Temáticas Vetadas:** Antes de proponer o listar cualquier idea de canal o video, el agente **está obligado a consultar**:
   - La lista negra global en `ideas.md` (`## 4. 🚫 Territorios y Nichos Vetados`).
   - El archivo `backlog-ideas.md` del canal correspondiente (`## 3. 🚫 Ideas y Enfoques Vetados`).
   *Prohibido terminantemente proponer temas o formatos que figuren en estas secciones.*
6. **Prohibición de Atribuir Contenido Inexistente a Archivos de Notas:** Si un archivo de referencia (`banco-visual.md`, `referentes.md`) contiene notas breves, listas en borrador o está incompleto, el agente **tiene terminantemente prohibido inventar paletas de color, códigos hexadecimales o estándares de diseño atribuyéndoselos falsamente a ese archivo**. Debe consultar con honestidad: *"En banco-visual.md solo tienes anotado X e Y; ¿qué estilo visual tienes en mente para este canal o prefieres que te proponga 5 alternativas?"*.

### Al Finalizar o Pausar la Sesión:
1. **Registrar Entregables y Estado:** Actualizar `00-estado-produccion.md` con:
   - Entregables completados y verificados físicamente.
   - Estado normalizado (`NO_INICIADO`, `EN_CURSO`, `BLOQUEADO`, `PENDIENTE_APROBACION`, `APROBADO`).
   - Bloqueos detectados o decisiones pendientes de validación.
   - Siguiente acción exacta que debe ejecutar el próximo agente.
2. Si se alcanzó un hito creativo, cambiar el estado a `PENDIENTE_APROBACION` y presentar la solicitud al creador.
3. **Persistencia Automática de Ideas (Gestión de Backlog):** Cada vez que en una sesión el creador apruebe ideas pero solo se produzca una:
   - Las ideas aprobadas restantes **deben registrarse inmediatamente en `backlog-ideas.md`** bajo `## 📥 1. Ideas Aprobadas en Cola de Producción`.
   - Las ideas explícitamente descartadas por el creador **deben registrarse en `## 🚫 3. Ideas Vetadas para este Canal` con su motivo breve**, asegurando que ningún agente futuro vuelva a insistir sobre ellas.

---

## ⚡ 02. Gobernanza y Niveles de Autonomía

Para asegurar control creativo y seguridad financiera sin burocracia paralizante:

### 1. Autonomía Normal (Ejecución Fluida)
- El agente investiga, redacta borradores, organiza archivos, busca recursos de stock, verifica fuentes y ejecuta tareas reversibles **sin pedir permiso en cada paso**.
- Para tareas rutinarias o técnicas, el agente presenta una **recomendación principal fundamentada**, acompañada de alternativas solo cuando aporten valor genuino.

### 2. Aprobación Creativa (Puntos de Control / Checkpoints)
El creador valida y aprueba explícitamente los hitos estratégicos antes de avanzar:
- **Concepto del canal y nicho** (en `canales-en-estudio/`).
- **Packaging del video:** Título definitivo y conceptos de miniatura en `01-packaging.md`.
- **Guion maestro por bloques:** Estructura `[Bxx]`, gancho, fuentes y puerta de originalidad en `02-guion.md`.
- **Montaje preliminar / Animatic:** Validación del ritmo sobre la locución provisional en `03-storyboard-y-edicion.md` **antes de generar renders de pago o descargar clips en alta**.
- **Modo de producción:** Decisión entre montaje asistido por agente o edición manual por el creador en software externo.
*(Una vez aprobado cada hito por el creador, el agente continúa con autonomía).*

### 3. Confirmación Obligatoria de Operaciones Sensibles
El agente **debe detenerse y solicitar confirmación expresa** antes de:
- Publicar videos o metadatos en producción en YouTube.
- Operaciones que impliquen costos financieros o consumo de créditos de pago (APIs de voz, generadores de imagen de pago, etc.).
- Modificar o borrar archivos existentes relevantes de forma irreversible.
- Operaciones destructivas de Git.

### 4. Política General de Selección de Herramientas (Método Agnóstico de Proveedores)
Las herramientas, modelos y plataformas mencionados en el repositorio (Google Flow, FilmCraft, EffectCraft, Higgsfield, Seedance, Seedream, Midjourney, ElevenLabs, etc.) son **ejemplos, no dependencias obligatorias**. El framework enseña métodos; el producto concreto se decide según cada proyecto y las herramientas disponibles.
- **Partir de lo que el creador tiene:** el agente parte de las herramientas que el creador tiene disponibles y prefiere.
- **Recomendación debatible:** el agente puede proponer otra herramienta si existe una ventaja relevante, pero debe explicar qué mejora, qué pierde, qué cuesta y qué limitaciones tiene. El creador puede debatir la recomendación y decide; **el agente no cambia de herramienta unilateralmente**.
- **Comprobar la capacidad antes de proponer:** antes de proponer un flujo dependiente de una función específica (modo borrador, referencia multi-imagen, extensión de clip, etc.), el agente debe comprobar si la herramienta elegida la ofrece o si existe un procedimiento equivalente.
- **Nunca asumir gratuidad:** ningún modo «Draft», «Preview» o «Borrador» es gratuito por definición; el costo real se registra en `04-registro-recursos.md` antes de escalar a la versión definitiva.
- **Prohibida la magia de nombres de modelo:** no afirmar que escribir el nombre de un modelo en un prompt permite a otro LLM «cargar su base de datos» o conocer sus capacidades privadas; nombrar el modelo solo lo orienta.
- **Comparaciones de modelos son hipótesis:** una conclusión informal ("el modelo X limpió mejor esta imagen") es una observación de un flujo concreto, no una prueba universal ni una regla del sistema.
- **Especificación creativa portable:** la intención de un plano (acción, sujeto, elementos invariantes, cambios permitidos, cámara, duración y resultado esperado) se describe de forma independiente de la sintaxis de cualquier herramienta; el agente adapta después esa especificación a la plataforma elegida usando solo funciones cuya disponibilidad se haya comprobado. El conocimiento no queda atrapado en prompts de un producto concreto.
- **Corrección dirigida:** ante un resultado defectuoso, se identifica primero el defecto principal y su origen (referencia, prompt, parámetros o método) y se corrige ese elemento antes de reevaluar; se evitan regeneraciones indiscriminadas sin hipótesis de mejora.
*(Origen: revisión externa 4 y su complemento, `_framework/referencias/auditorias/revision-externa-4-2026-10-22.md`: destilación de `_framework/referencias/apuntes-segundo-amigo.md`, commit `f523833`.)*

### 5. Filtro de Comunicación Ejecutiva (Entregables y Experiencia vs. Fontanería Interna)
- El agente debe comunicarse con el creador como un **Director Creativo y de Producción**, hablando en términos de entregables tangibles y experiencia de escucha (*"uní las pistas de audio de los bloques con medio segundo de pausa entre cada una para que escuches el flujo continuo en tu reproductor"*).
- **Prohibido el ruido de fontanería de terminal:** No arrojar nombres de herramientas de bajo nivel ni comandos de consola (`ffmpeg`, `sox`, scripts bash crudos) como justificación del resultado, a menos que el creador pregunte explícitamente por la implementación técnica interna.

---

## 🎬 03. Selección del Flujo Audiovisual según el Género

Al iniciar la producción de un video, el agente debe identificar el género y aplicar el flujo audiovisual correspondiente:

1. **Audio-First (Predeterminado):**
   - *Aplicable a:* Ensayos audiovisuales, divulgación científica, documentales e historias narradas.
   - *Flujo:* Guion por bloques ➔ Locución provisional (Scratch Track) ➔ Animatic preliminar ➔ Aprobación narrativa ➔ Locución final y assets de alta resolución ➔ Música y SFX al final.
2. **Screen-First / Action-First:**
   - *Aplicable a:* Tutoriales de software, desarrollo de código, screencasts paso a paso.
   - *Flujo:* Guion de acciones técnicas ➔ Grabación de pantalla de las acciones reales ➔ Locución adaptada a los tiempos de la interacción ➔ Montaje y acentos visuales.
3. **Speaker-First (A-Roll Directo):**
   - *Aplicable a:* Presentador hablando directamente a cámara, entrevistas o vlogs.
   - *Flujo:* Puntos clave/escaleta ➔ Grabación de A-Roll ➔ Selección de tomas buenas ➔ B-Roll de apoyo sobre la voz del presentador.
4. **Music-First / Ambient:**
   - *Aplicable a:* Piezas contemplativas, videos para relax, concentración o dormir.
   - *Flujo:* Selección de pista sonora o atmósfera ambiental ➔ Selección de metraje fluido ➔ Locución pausada (si aplica) sincronizada con la música.

---

## 🧠 04. Ingeniería de Demanda y Niveles de Conciencia (Eugene Schwartz)

Todo tema y propuesta de packaging debe fundamentarse en los principios de *Breakthrough Advertising*:

1. **Evidencia de Demanda Cualificada:**
   - Antes de proponer o validar una idea, el agente debe responder con evidencia objetiva:
     > *"¿Qué evidencia demuestra que las personas que quiero como clientes o seguidores cualificados ya están eligiendo ver este tema en YouTube?"*
   - No confundir reproducciones masivas casuales o entretenimiento viral con demanda de audiencia cualificada.

2. **Calibrar el Nivel de Conciencia (Schwartz):**
   - El agente debe identificar dónde está la masa de la audiencia target:
     - **Problem Aware (Mayor masa):** Sienten el síntoma o dolor pero desconocen la solución. El packaging debe hablarle directamente al dolor o síntoma que ya reconocen.
     - **Solution Aware (Cualificada):** Buscan activamente soluciones y comparan métodos. El packaging debe posicionar una alternativa superior.
     - **Mechanism Aware:** Conocen el método técnico. Solo apto para nichos avanzados.

3. **La Regla del Deseo Amplio y el Mecanismo Novedoso:**
   > *"The broad desire gives the idea demand. The unfamiliar mechanism gives them a new reason to care."*
   - La gente desea el resultado sin entender el mecanismo subyacente.
   - El packaging apela al **Deseo Amplio o Dolor Preexistente** (lo que genera el volumen de clics).
   - El guion desvela el **Mecanismo Novedoso** (lo que genera la retención, la sorpresa y el valor).

4. **El Principio del Puente (The Bridge Principle):**
   > *"If direct demand exists, build around it. If it does not, change the subject or bridge it to something people already want."*
   - Si no hay demanda directa por un tema técnico o paper científico, el agente **tiene prohibido empaquetarlo con el mecanismo técnico solo**. Debe construir obligatoriamente un **puente** que conecte el deseo que la gente ya busca con el mecanismo que el video viene a revelar.

5. **Orquestación del Barrido DFS Híbrido (Mapeo de Nicho):**
   - Para investigar un canal o nicho nuevo en `canales-en-estudio/`, el agente debe actuar como **Cerebro y Gestor de la Pila (*Stack*)**:
     1. Generar la lista semilla (*Seed List*) en lenguaje de dolor/deseo del usuario y cargarla en la pila.
     2. Solicitar al creador que busque en YouTube en **ventana de incógnito** el primer término.
     3. Recibir los enlaces de outliers que el creador identifique, calcular el ratio de visitas vs. suscriptores y extraer los patrones de empaque.
     4. Pedir al creador que explore la **barra lateral de recomendaciones (*Up Next*)** del video outlier para ramificar hacia nuevos creadores.
     5. Gestionar el retroceso (*backtracking*) cuando una rama se agota para pasar al siguiente término de la pila.

6. **Evidencia Negativa y el Canal como Campaña Única:**
   - *Anti-sesgo de positividad:* Al evaluar un formato exitoso, el agente debe investigar también los videos que fracasaron con ese formato para identificar las reglas de ejecución y trampas a evitar.
   - *Campaña única:* Prohibido proponer videos virales fuera de temática (*off-topic hits*); un éxito que atrae a la audiencia equivocada destruye la retención de los videos posteriores. El canal debe fidelizar a un mismo perfil recurrente.

7. **Directivas Específicas para Producción de YouTube Shorts:**
Esta sección contiene **solo** los criterios operativos que son **realmente propios del formato Shorts** (vídeos verticales o cuadrados de hasta 3 minutos, subidos al feed de Shorts y descubribles también mediante búsqueda, página de inicio, suscripciones y otras superficies). Todo lo que es principio narrativo, de ideación, de publicación o de gobernanza general tiene su definición canónica en otro documento y aquí solo se remite a ella.

- *Filtro de Relatibilidad en Outliers:* Priorizar conceptos universalmente comprensibles (comida, dinero, hábitos cotidianos, mascotas) sobre cifras brutas de vídeos hiper-técnicos que carecen de tracción masiva fuera de su nicho. **Hipótesis editorial:** el feed de descubrimiento masivo de Shorts tiende a premiar lo universalmente reconocible en la primera fracción de segundo; YouTube documenta que el descubrimiento depende de personalización, decisión de ver vs. deslizar, tiempo medio, porcentaje visto, señales de satisfacción, interés temático, competencia y estacionalidad — no una regla universal. Usar como heurística para elegir ejemplos, no como propiedad demostrada del algoritmo.
- *Observación opcional de picos virales:* Si un Short experimenta un pico viral atípico en tiempo real, el creador puede evaluar espaciar la siguiente subida para observar su desarrollo. **Práctica editorial opcional, específica del comportamiento del feed de Shorts**.

---

### Véase también (definiciones canónicas)
Las siguientes materias se mencionan aquí porque aplican a Shorts, pero su desarrollo normativo y su gobernanza viven en su ubicación canónica:

| Tema | Ubicación canónica | Qué regula |
| :--- | :--- | :--- |
| Arquetipo del Arco en Bucle (Looped Arc) | `roles/03` §2 | Estructura narrativa general (no exclusiva de Shorts) |
| Ganchos en Bucle Abierto | `roles/03` §3 | Herramienta opcional condicionada al formato |
| Transposición Cross-Niche | `roles/01` §4 | Metodología de investigación e ideación |
| Enfoque Ágil en Primeras Subidas | `roles/01` §6 (Protocolo Canónico) / Producción general | Principio de experimentación en canales nuevos (aplicable a cualquier formato) |
| Cadencia Sostenible | `05-metricas-retencion.md` §3 / Producción general | Ritmo sostenible vs. picos virales |
| Diagnóstico y Republicación | `05-metricas-retencion.md` §8 (Protocolo de Diagnóstico y Republicación) | Republicación con mejora verificable; re-empaquetado en §7 |
| Edición de Valor Añadido | `roles/03` §1 | Gobernanza editorial y originalidad |
| Heurísticas vs. Reglas Estrictas | `roles/02` §5-6 | Packaging y miniaturas |

> **Ancla preservada:** `AGENTS.md` **§04.7: Heurísticas vs. Reglas Estrictas** — esta línea existe para que las referencias externas (`banco-de-titulos.md`) sigan resolviendo. La definición normativa vive en `roles/02` §5-6.

---

## 🎯 05. Criterios de Salida Verificables (Definition of Done) por Fase

Para que una fase se considere `APROBADO`, debe existir evidencia física demostrable:

- **Fase Packaging:** Existen 5 títulos candidatos que exploran **palancas o ángulos distintos** (metodología en `_framework/roles/02-packaging-miniaturas.md` §3) y 3 conceptos de miniatura bien diferenciados con bocetos/prompts en `01-packaging.md`. El título principal elegido tiene una **justificación escrita** (deseo/dolor al que apunta, bucle que abre, adecuación al canal) y pasa el check de legibilidad (asimilable de un vistazo; lo importante al inicio; ~55 caracteres como heurística, no ley). Su **promesa debe ser clara y veraz respecto a lo que el video realmente entrega** (ver heurística de proporción en rol 02 §3.3, que es hipótesis a evaluar, no ley), dejando margen al criterio creativo sobre cómo expresar la profundidad del video. Título y enfoque elegidos por el creador.
- **Fase Guion:** Existe el documento `02-guion.md` con bloques identificados `[Bxx]` que satisface los siguientes criterios:
  - **Condiciones Estrictamente Obligatorias:**
    1. *Cumplir la promesa editorial:* Satisface y desarrolla la expectativa generada por el packaging aprobado en `01-packaging.md`. El guion pasa la **Puerta de Congruencia Promesa ➜ Contenido** del rol 03 §1 (5 preguntas: título, miniatura, entrega, apertura, afirmaciones respaldables).
    2. *Puerta de Correspondencia del Arranque:* Las **cuatro comprobaciones del rol 03 §1** (primera imagen, primera frase, ventana de arranque según formato, y cumplir/superar) están **respondidas por escrito en el guion y revisadas antes de cerrar guion y storyboard**. Es evidencia exigible de la fase: no basta con que el agente recuerde leer la subsección.
    3. *Prohibición de credenciales falsas:* Prohibido inventar biografías, experiencia personal ficticia o títulos académicos/financieros para simular autoridad en el narrador. La credibilidad se construye sobre fuentes verificadas, razonamiento transparente y rigor metodológico.
    4. *Verificación según naturaleza y riesgo:* Toda afirmación fáctica relevante debe sustentarse en fuentes consultadas registradas en `06-fuentes-y-verificacion.md`, aplicando el linter de léxico prohibido y matización en temas sensibles (YMYL).
    5. *Aportación editorial propia:* Supera la puerta de originalidad (no es mera paráfrasis ni duplicado de videos ajenos).
    6. *Grado de guionado adecuado:* Justifica la elección entre *palabra por palabra* (para locución IA/off) o *estructura nítida con viñetas* (para screencasts o experto a cámara).
    7. *Progresión Dramática y Anti-Spoiler Condicionado por Formato:* **Cuando el descubrimiento forma parte de la experiencia** (misterio, transformación, reto, divulgación con revelación central), la apertura plantea el dilema y la paradoja y **no** nombra el mecanismo central ni da la conclusión antes de tiempo; la revelación se reserva para el desarrollo. **En tutoriales, explicación directa o videos que responden una pregunta concreta, retrasar artificialmente la respuesta frustra al espectador: allí se entrega la respuesta temprano y la tensión se construye sobre el cómo, el por qué o la aplicación.** La elección se registra en `02-guion.md` con una línea de justificación por formato. En cualquier caso, se prohíbe cerrar con listicles vagos de autoayuda en el payoff. *(Origen: revisión externa 5, `_framework/referencias/auditorias/revision-externa-5-2026-10-22.md`: esta regla estaba redactada como prohibición universal heredada del canal de divulgación y contradecía el criterio de adaptabilidad por género del rol 03 §3.)*
  - **Técnicas Narrativas Opcionales (Caja de Herramientas a Evaluar):**
    - La fórmula de intro de 3 pasos (*Unfair Edge* + Roadmap) se evalúa para educación o negocios; en ficción, misterio, relax o tutoriales rápidos se eligen aperturas inmersivas o de acción directa sin destripar la intriga.
    - El gancho puede formularse como pregunta, dato chocante, hipótesis o demostración según el impacto buscado.
    - La arquitectura dramática (tres actos, arco en bucle o dinámica de valor) y el tipo de CTA (bucle al siguiente video o recurso funcional) se eligen según el arquetipo y la madurez del canal.
- **Fase Animatic:** Existe una locución provisional reproducible y un timeline/animatic de baja fidelidad donde el ritmo y el flujo narrativo fueron evaluados y aprobados.
- **Fase Producción y Edición:** Existen los recursos generados/descargados y la tabla de `03-storyboard-y-edicion.md` estructurada bajo **orquestación modular**:
  - *Prohibición de dilemas binarios perezosos:* El agente **no puede plantear la edición como un dilema cerrado** ("o ensamble plano automático o todo a mano"). Debe desglosar fuentes mixtas (generación para ciencia/fantasía + stock para lo cotidiano + overlays animados en la pista V2) y estructurar el montaje con las **4 capas de pulido técnico**. *Las herramientas concretas de este desglose están en §08.1 como flujo de referencia actual, no como requisitos universales (ver §02.4).*
  - *Regla de Pacing Visual:* **Perfil predeterminado: ningún plano o imagen fija queda congelado más de 5 segundos** sin un cambio visual (corte a nuevo plano, detalle B-roll, punch-in de escala 100%-105% o aparición escalonada de elementos gráficos). Es una **referencia editorial predeterminada, no una ley universal**: puede extenderse con **propósito creativo escrito** cuando el género y la intención de la escena lo justifiquen (ambient, ensayos contemplativos, explicaciones lentas). La regla operativa y sus excepciones viven en `03-storyboard-y-edicion.md` §4; este contrato no debe fijar un umbral distinto.
  - *Arquitectura de Audio (perfil predeterminado, con excepciones justificadas):* Se distinguen tres niveles, para no obligar a introducir pistas que no aportan valor al formato:
    1. **Requisito del resultado (siempre):** narración inteligible y bien nivelada, ausencia de saturación y de cortes de audio, y que el balance se **mida y escuche** sobre el master real.
    2. **Perfil de mezcla predeterminado (para videos que sí lo necesitan):** voz normalizada a −23 LUFS en A1, música con *ducking* (≈ −18 dB bajo la voz, −12 dB en pausas) en A2 y SFX de acento en A3.
    3. **Excepción con justificación escrita:** formatos donde una pista no aporta valor o no corresponde al género (piezas ambientales o musicales, un documental que decide no llevar música, un screencast limpio). La excepción se registra en `03-storyboard-y-edicion.md`; no requiere música obligatoria, sí requiere el requisito del nivel 1.
    *Los valores y su carácter de perfil (no ley) se gobiernan desde `03-storyboard-y-edicion.md` §4.*
  - *Consistencia visual con libertad de contraste:* Aplica los 4 anclajes de estilo en los prompts como línea base, pero permite explícitamente rupturas estéticas voluntarias cuando el creador busque humor, parodia, sorpresa o excentricidad artística consciente.
  - *Checks de calidad superados:* El video master exportado supera la ficha técnica de render en `00-estado-produccion.md` (inspección de audio balanceado, ausencia de fotogramas negros y sincronización exacta).
- **Fase Auditoría Legal:** Todos los recursos cuentan con licencia verificada, términos archivados y textos de atribución en `04-registro-recursos.md`.

---

## 🛡️ 06. Dos Reglas Críticas de Realidad Operativa

1. **El Control de Originalidad NO es Garantía de Monetización:**
   El filtro de originalidad y anti-contenido repetitivo eleva el estándar editorial y mitiga riesgos conocidos, pero **no garantiza la monetización ni blinda el canal de forma infalible**. Las decisiones de YouTube son discrecionales y están sujetas a revisiones humanas y cambios de políticas. La función del agente es señalar riesgos y maximizar el valor genuino.
2. **No Automatizar Prematuramente:**
   No desarrollar aplicaciones de orquestación complejas, dashboards analíticos ni bots de publicación automática por API antes de completar manualmente con éxito un **primer video piloto**. El foco actual es validar el pipeline y las capacidades reales del entorno.

---

## 🏗️ 07. Scaffolding y Contrato Canónico de Archivos

### 1. Estructura de un Canal (tanto en `canales-en-estudio/` como en `mis-canales/`):
```text
[nombre-canal]/
├── backlog-ideas.md              # 📥 Ideas aprobadas en cola + 🚫 Ideas vetadas para este canal
├── banco-de-titulos.md          # 🧭 Norte de estructuras/palabras que funcionan en ESTE canal (opcional, heurístico, nunca plantilla obligatoria)
├── estudio-mercado.md            # Outliers, competidores y análisis DFS
└── propuesta-branding.md         # Concepto, audiencia, tono y Unfair Edge Statement
```
*(Al aprobarse el canal, se traslada íntegramente de `canales-en-estudio/[canal]` a `mis-canales/[canal]`, conservando su `backlog-ideas.md` y añadiendo las carpetas `branding/`, `videos-en-estudio/` y `videos-publicados/`).*

### 2. Durante la Producción Activa de un Video:
Cada carpeta de video en `mis-canales/[canal]/videos-en-estudio/[numero-slug]/` se compone de los siguientes archivos:

```text
[numero-slug]/
├── 00-estado-produccion.md       # Estado persistente, fase actual y siguiente acción
├── 01-packaging.md               # Títulos candidatos + variantes para prueba nativa en long-form
├── 02-guion.md                   # Guion por bloques [Bxx], locución y puerta de originalidad
├── 03-storyboard-y-edicion.md    # Storyboard, animatic preliminar y ficha técnica de render
├── 04-registro-recursos.md       # Registro integral de stock, IA visual, TTS, música y licencias
├── 05-metricas-retencion.md      # Registro de rendimiento, retención y elegibilidad A/B
└── 06-fuentes-y-verificacion.md  # Fact-checking: investigación previa y verificación de borrador
```

### 3. Tras la Publicación en YouTube:
- La carpeta del video se traslada **íntegramente** de `videos-en-estudio/[numero-slug]/` a `mis-canales/[canal]/videos-publicados/[numero-slug]/`.
- **Preservación estricta de trazabilidad:** Se conservan intactos todos los archivos de producción originales (`00` a `06`) para mantener las pruebas de licencias, DOIs verificados y versiones aprobadas.
- Se genera el archivo **`entregable-final.md`** (usando `_framework/plantillas/entregable-final-template.md`) con la URL pública definitiva, créditos y descripción oficial, y se actualiza `00-estado-produccion.md` al estado de cierre.

---

## 🛠️ 08. Protocolo de Herramientas: Mapeo por Fase, Traspaso y Proactividad

Las herramientas de la oficina están catalogadas en `_framework/herramientas-y-apis.md`. El agente debe manejarlas bajo las siguientes directivas:

### 1. Cuándo invocar cada herramienta (Mapeo por Fase)

> **Estatus de este mapeo (ver §02.4):** lo que sigue es el **flujo de referencia actualmente validado en el entorno del creador**, no una dependencia universal de todos los proyectos. Cada nombre es un ejemplo donde existe una operación probada; si el creador usa otra herramienta, el agente busca la **capacidad equivalente** y solo debate el cambio si aporta una mejora real. Los nombres de funciones concretas (`essentialSound.*`, etc.) describen una **intención editorial** —nivel de voz controlado, música que no tapa la narración, overlays sobre la pista V2— cuya realización debe lograrse con la función equivalente de la herramienta que se use.

- **Investigación e Ideación:** Consultar YouTube Studio (pestañas Research y Audience), VidIQ (competencia y outliers), Google Trends y Books Ngrams.
- **Packaging:** Diseñar variantes de títulos y miniaturas; sugerir **Thumblytics** para simulación previa de feed; inspirarse en **AdForum** para ganchos publicitarios de alto impacto; usar **Google AI Studio** para refinamiento multimodal de prompts, contraste visual de miniaturas frente al feed y lectura profunda de textos largos.
- **Fact-Checking:** Consultar **Google Scholar & Labs** para abstracts y fuentes primarias (apoyándose en **Google AI Studio** para ingesta de documentos en acceso abierto o PDFs facilitados por el creador si están tras paywall institucional).
- **Storyboard, Animatic y Locución:** Usar un editor de documentos/video o plantillas internas. Para el montaje preliminar (*Radio Edit* y animatic), el **requisito editorial** es una **voz neuronal moderna con entonación y pausas naturales**; el flujo de referencia actual ofrece **Google AI Studio Generate Speech** (`aistudio.google.com/generate-speech?model=gemini-3.8-flash-tts`), **Luvvoice (Free tier / MCP oficial)** o **ElevenLabs (tier gratuito)**, y cualquier alternativa debe cumplir el mismo requisito.
  ❌ **Prohibición de TTS mecánico:** Queda terminantemente prohibido utilizar sintetizadores locales arcaicos (como el comando `/usr/bin/say` de macOS) para cualquier audio que deba evaluar el creador. El agente debe presentar las vías disponibles, dar su recomendación técnica y consultar al creador cuál prefiere utilizar antes de generar el archivo.
- **Montaje y Edición Profesional (flujo de referencia):** **FilmCraft** es la herramienta actual, aprovechando los comandos de su protocolo de control y MCP (`essentialSound.setType`, normalización `essentialSound.autoMatch`, ducking paramétrico `essentialSound.generateDucking` y keyframes de escala); la equivalencia editorial y el procedimiento alternativo están en `03-storyboard-y-edicion.md` §4. Queda prohibido limitarse a una concatenación en bruto de clips; el agente debe aplicar las 4 capas de pulido con la herramienta elegida o preparar el paquete de cortes y timecodes para el editor de escritorio si se opta por masterización manual.
- **Motion Graphics y Overlays Animados (flujo de referencia):** **EffectCraft** (`effectcraft-cli 0.11.1` vía CLI o MCP `effectcraft-cli mcp`) para generar clips animados de 3 a 6 segundos (rótulos de neón, textos cinéticos, barras de progreso y onomatopeyas pop). Estos clips se montan en la pista superior **V2** sobre el metraje base, evitando dejar diapositivas estáticas planas.
- **Video Cinemático, Storyboard y Personajes IA (flujo de referencia):** **Google Flow (`flow.google.com`)** para:
  1. Montar storyboards visuales de concepto antes de arriesgar tiempo en una producción completa.
  2. Mantener la **consistencia de personajes (*character consistency*)** a lo largo de múltiples planos encadenando nodos de referencia (rostro, vestimenta, estilo).
  3. Generar B-roll cinemático y tomas sintéticas cuando no existan en stock libre.
- **Música, Jingles y Branding Sonoro (flujo de referencia):** **Google Flow Music (`flowmusic.app`)** para crear la firma sonora oficial del canal, jingles de cabecera o canciones completas estructuradas; o la **YouTube Audio Library** para pistas de fondo libres de reclamos.
- **Búsqueda de Assets (flujo de referencia):** Conectar vía API/MCP con **Coverr**, **Pexels**, **Pixabay**, **Wikimedia Commons** u **Openverse**, o cualquier banco que el creador ya use y pueda licenciar con trazabilidad en `04-registro-recursos.md`.

### 2. Protocolo de Traspaso (Handoff Agente ➔ Creador):
Cuando una herramienta requiera interacción visual, inicio de sesión o ejecución manual en una interfaz web o software de escritorio, el agente **tiene terminantemente prohibido dar instrucciones abstractas o arrojar listas de prompts sin clasificar**. Debe **entregar el paquete completamente preparado y listo para usar** mediante una **Ficha Técnica Inequívoca por Recurso**:

- **Ficha Obligatoria de Entrega de Prompts:** Todo prompt que el agente solicite generar al creador (sea en el chat o en `03-storyboard-y-edicion.md`) debe estructurarse con estos campos obligatorios:
  1. *Tipo de Recurso:* Identificar con claridad si el resultado esperado es: 🖼️ **Imagen estática**, 🎥 **Clip de video con movimiento**, 🎵 **Pista musical** o 🔊 **Efecto sonoro (SFX)**.
  2. *Herramienta y método de ejecución:* Indicar la plataforma elegida (o el método genérico si la tarea no depende de un proveedor) y los **parámetros necesarios para ejecutar la tarea** (modos, resolución, ratio, parámetros de estilo, etc.). La pestaña o módulo concreto es opcional y se indica solo cuando la herramienta elegida lo tenga (ej. Google Flow [`flow.google.com`] ➔ Pestaña *"Imagen"* vs. Pestaña *"Video"*). *Ver política de selección de herramientas en §02.4.*
  3. *Modo Operativo:* (ej. Text-to-Image con `--ar 16:9`, Image-to-Video con movimiento de cámara, o Text-to-Music con BPM/género).
  4. *Prompt listo para copiar:* Texto completo, calibrado y sin necesidad de edición posterior.
  5. *Acción sugerida en la interfaz:* (ej. *"si te convence el fotograma en Flow, hacé clic en el botón 'Crear Video' de ese mismo nodo para animarlo 5 segundos"*).

- **Generadores de Música y Audio (Google Flow Music, etc.):** El agente debe entregar el **prompt musical completo listo para copiar** (género, tempo/BPM aproximado, instrumentación, curva emocional y duración deseada para cada bloque).
- **Generadores Visuales, Video Cinemático y Personajes (Google Flow, Midjourney, Flux, DALL-E):** El agente entrega el **prompt visual o cinemático detallado** (con encuadre, iluminación y punto focal), y en caso de requerir un personaje recurrente en Google Flow, define el nodo de referencia maestro para asegurar la coherencia estética en planos derivados.
- **Simuladores de Feed (Thumblytics):** El agente entrega los 3 conceptos visuales y la pregunta exacta para el *glance test* para que el creador solo tenga que subirlos y simular.
- **Plataformas de Publicación (YouTube Studio):** El agente entrega el título final, la descripción formateada con capítulos y marcas de tiempo, la lista de tags separada por comas y los textos de atribución de licencias listos para pegar.
- **Investigación con Paywall (Google Scholar & Labs):** El agente entrega el DOI, enlace directo, título del paper y el abstract resumido para que el creador pueda descargar el PDF completo si requiere credenciales.
- **Búsqueda de Imágenes en Alta Resolución (Google Imágenes Handoff):** Cuando una escena requiera material visual específico que no esté en los bancos habituales, el agente construye y entrega la URL codificada en dos variantes:
  - *Alta resolución general:* `https://www.google.com/search?udm=2&tbs=isz:l&q={CONSULTA_URL_ENCODED}`
  - *Alta resolución + Licencia libre (Creative Commons):* `https://www.google.com/search?udm=2&tbs=isz:l,il:cl&q={CONSULTA_URL_ENCODED}`
  - El creador abre el enlace, descarga la imagen deseada y le proporciona la URL de origen al agente para que asiente autor, origen y licencia en `04-registro-recursos.md`.
- **Montaje en Editores de Escritorio (DaVinci, Premiere, CapCut o FilmCraft manual):** El agente entrega la tabla de `03-storyboard-y-edicion.md` con los timecodes exactos y los IDs de bloque `[Bxx]` para facilitar el corte sin fricción.

### 3. Proactividad de Herramientas (Con Visto Bueno Obligatorio):
- Si durante cualquier fase del flujo el agente identifica que hace falta una herramienta, biblioteca, CLI o recurso gratuito/FOSS que resolvería un cuello de botella técnico o de costos y que no figura en `herramientas-y-apis.md`, **debe proponerla proactivamente con su justificación**.
- **Regla innegociable:** El agente **NUNCA la incorpora al catálogo de forma automática**. Debe presentar la sugerencia al creador y, únicamente si el creador otorga su **visto bueno explícito**, registrarla en `_framework/herramientas-y-apis.md` indicando su estado de validación en el entorno local.

---

## 📚 09. Mapa de Conocimiento Especializado

| Etapa | Documento de Consulta |
| :--- | :--- |
| **Ideación, Outliers y Niveles de Conciencia** | `_framework/roles/01-investigacion-ideas.md` e `ideas.md` |
| **Títulos, Miniaturas y A/B Nativo** | `_framework/roles/02-packaging-miniaturas.md` |
| **Guion, Ganchos y Puerta de Originalidad** | `_framework/roles/03-guion-y-narrativa.md` |
| **Dirección, Flujos Audiovisuales y Edición** | `_framework/roles/04-direccion-y-edicion.md` |
| **Matriz de Capacidades Comprobadas** | `_framework/herramientas-y-apis.md` |
| **Trazabilidad Legal de Recursos** | `_framework/plantillas/registro-licencias-template.md` |
| **Fact-Checking y Fuentes Primarias** | `_framework/plantillas/registro-verificacion-fuentes-template.md` |
| **Políticas YMYL, Léxico y Contingencia** | `_framework/contingencia-y-politicas-sensibles.md` |
