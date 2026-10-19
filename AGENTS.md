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

### Al Finalizar o Pausar la Sesión:
1. **Registrar Entregables y Estado:** Actualizar `00-estado-produccion.md` con:
   - Entregables completados y verificados físicamente.
   - Estado normalizado (`NO_INICIADO`, `EN_CURSO`, `BLOQUEADO`, `PENDIENTE_APROBACION`, `APROBADO`).
   - Bloqueos detectados o decisiones pendientes de validación.
   - Siguiente acción exacta que debe ejecutar el próximo agente.
2. Si se alcanzó un hito creativo, cambiar el estado a `PENDIENTE_APROBACION` y presentar la solicitud al creador.

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
   - *Filtro de Relatibilidad en Outliers:* Priorizar conceptos universalmente comprensibles (comida, dinero, hábitos cotidianos, mascotas) sobre cifras brutas de videos hiper-técnicos que carecen de tracción masiva fuera de su nicho.
   - *Arquetipo del Arco en Bucle (*Looped Arc*):* Romper la predictibilidad lineal con la secuencia `Bucle Abierto ➔ Acción ➔ Conflicto/Fallo inesperado ➔ Recuperación/Reintento ➔ Payoff`.
   - *Ganchos en Bucle Abierto:* Formular el gancho como pregunta o enigma que solo se cierre al final; evitar afirmaciones cerradas que destripen el resultado en el segundo 3.
   - *Transposición Cross-Niche:* Reutilizar mecánicas de ganchos, progresión y payoffs de videos de 50M+ visitas de nichos maduros adaptándolas al tema propio.
   - *Enfoque Ágil en Primeras Subidas:* En un canal nuevo, priorizar la agilidad y el aprendizaje práctico para observar qué temáticas y formatos generan tracción sin sobre-perfeccionar la primera entrega.
   - *Cadencia Sostenible vs. Picos Virales:* YouTube indica oficialmente que las visualizaciones no dependen del intervalo entre publicaciones; la prioridad absoluta es la calidad y un ritmo de producción sostenible. Como práctica editorial opcional en Shorts, si un video experimenta un pico viral atípico en tiempo real, el creador puede evaluar espaciar la siguiente subida para observar su desarrollo.
   - *Diagnóstico antes de Re-subir:* Si un video tiene un rendimiento inesperadamente bajo, diagnosticar primero la causa objetiva (interés de la idea, packaging, retención inicial). Si se decide relanzar, revisar y mejorar la pieza aportando valor renovado, evitando republicar archivos idénticos que confundan a la audiencia o al algoritmo.
   - *Edición de Valor Añadido (Sin Falsas Garantías):* En formatos que analicen o comenten metraje existente, es indispensable aportar transformación sustancial (guion y locución propios, nuevo montaje sonoro y valor crítico/educativo). La atribución no otorga derechos legales por sí sola, y la monetización depende de la aportación humana genuina, sin porcentajes mágicos de IA que garanticen la aprobación.
   - *Heurísticas vs. Reglas Estrictas:* Consejos de packaging (como longitud de texto en miniaturas o ubicación visual) son **heurísticas orientativas, jamás camisas de fuerza** que limiten la creatividad adecuada al formato.

---

## 🎯 05. Criterios de Salida Verificables (Definition of Done) por Fase

Para que una fase se considere `APROBADO`, debe existir evidencia física demostrable:

- **Fase Packaging:** Existen 5 títulos candidatos y 3 conceptos de miniatura bien diferenciados con bocetos/prompts en `01-packaging.md`. Título y enfoque elegidos por el creador.
- **Fase Guion:** Existe el documento `02-guion.md` con bloques identificados `[Bxx]` que satisface los siguientes criterios:
  - **Condiciones Estrictamente Obligatorias:**
    1. *Cumplir la promesa editorial:* Satisface y desarrolla la expectativa generada por el packaging aprobado en `01-packaging.md`.
    2. *Prohibición de credenciales falsas:* Prohibido inventar biografías, experiencia personal ficticia o títulos académicos/financieros para simular autoridad en el narrador. La credibilidad se construye sobre fuentes verificadas, razonamiento transparente y rigor metodológico.
    3. *Verificación según naturaleza y riesgo:* Toda afirmación fáctica relevante debe sustentarse en fuentes consultadas registradas en `06-fuentes-y-verificacion.md`, aplicando el linter de léxico prohibido y matización en temas sensibles (YMYL).
    4. *Aportación editorial propia:* Supera la puerta de originalidad (no es mera paráfrasis ni duplicado de videos ajenos).
    5. *Grado de guionado adecuado:* Justifica la elección entre *palabra por palabra* (para locución IA/off) o *estructura nítida con viñetas* (para screencasts o experto a cámara).
  - **Técnicas Narrativas Opcionales (Caja de Herramientas a Evaluar):**
    - La fórmula de intro de 3 pasos (*Unfair Edge* + Roadmap) se evalúa para educación o negocios; en ficción, misterio, relax o tutoriales rápidos se eligen aperturas inmersivas o de acción directa sin destripar la intriga.
    - El gancho puede formularse como pregunta, dato chocante, hipótesis o demostración según el impacto buscado.
    - La arquitectura dramática (tres actos, arco en bucle o dinámica de valor) y el tipo de CTA (bucle al siguiente video o recurso funcional) se eligen según el arquetipo y la madurez del canal.
- **Fase Animatic:** Existe una locución provisional reproducible y un timeline/animatic de baja fidelidad donde el ritmo y el flujo narrativo fueron evaluados y aprobados.
- **Fase Producción y Edición:** Existen los recursos generados/descargados, la tabla de `03-storyboard-y-edicion.md` trazable con los bloques de guion `[Bxx]` (con correspondencia clara pero sin forzar una rigidez 1:1, permitiendo que un bloque tenga varios planos si la dinámica lo requiere), respetando la **ley de anti-decoración** (*la edición elimina fricción, no rescata un video vacío; si un visual no aclara o demuestra, es solo movimiento y se elimina*), y el video exportado ha superado los checks de sonido (*sound check*), ritmo (*flow check*) y estilo (*style check*).
- **Fase Auditoría Legal:** Todos los recursos cuentan con licencia verificada, términos archivados y textos de atribución en `04-registro-recursos.md`.

---

## 🛡️ 06. Dos Reglas Críticas de Realidad Operativa

1. **El Control de Originalidad NO es Garantía de Monetización:**
   El filtro de originalidad y anti-contenido repetitivo eleva el estándar editorial y mitiga riesgos conocidos, pero **no garantiza la monetización ni blinda el canal de forma infalible**. Las decisiones de YouTube son discrecionales y están sujetas a revisiones humanas y cambios de políticas. La función del agente es señalar riesgos y maximizar el valor genuino.
2. **No Automatizar Prematuramente:**
   No desarrollar aplicaciones de orquestación complejas, dashboards analíticos ni bots de publicación automática por API antes de completar manualmente con éxito un **primer video piloto**. El foco actual es validar el pipeline y las capacidades reales del entorno.

---

## 🏗️ 07. Scaffolding y Contrato Canónico de Archivos por Video

### 1. Durante la Producción Activa:
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

### 2. Tras la Publicación en YouTube:
- La carpeta del video se traslada **íntegramente** de `videos-en-estudio/[numero-slug]/` a `mis-canales/[canal]/videos-publicados/[numero-slug]/`.
- **Preservación estricta de trazabilidad:** Se conservan intactos todos los archivos de producción originales (`00` a `06`) para mantener las pruebas de licencias, DOIs verificados y versiones aprobadas.
- Se genera el archivo **`entregable-final.md`** (usando `_framework/plantillas/entregable-final-template.md`) con la URL pública definitiva, créditos y descripción oficial, y se actualiza `00-estado-produccion.md` al estado de cierre.

---

## 🛠️ 08. Protocolo de Herramientas: Mapeo por Fase, Traspaso y Proactividad

Las herramientas de la oficina están catalogadas en `_framework/herramientas-y-apis.md`. El agente debe manejarlas bajo las siguientes directivas:

### 1. Cuándo invocar cada herramienta (Mapeo por Fase):
- **Investigación e Ideación:** Consultar YouTube Studio (pestañas Research y Audience), VidIQ (competencia y outliers), Google Trends y Books Ngrams.
- **Packaging:** Diseñar variantes de títulos y miniaturas; sugerir **Thumblytics** para simulación previa de feed; inspirarse en **AdForum** para ganchos publicitarios de alto impacto; usar **Google AI Studio** para refinamiento multimodal de prompts, contraste visual de miniaturas frente al feed y lectura profunda de textos largos.
- **Fact-Checking:** Consultar **Google Scholar & Labs** para abstracts y fuentes primarias (apoyándose en **Google AI Studio** para ingesta de documentos en acceso abierto o PDFs facilitados por el creador si están tras paywall institucional).
- **Storyboard, Animatic y Locución:** Usar **Google Docs Video Scene Editor** o plantillas internas; generar locución provisional o definitiva con **Google AI Studio Generate Speech (`aistudio.google.com/generate-speech?model=gemini-3.8-flash-tts`)**, **ElevenLabs (tier gratuito)**, **Luvvoice (Free tier / MCP oficial: `luvvoice.com/es/mcp`)** o TTS de sistema.
- **Montaje y Edición:** Priorizar **FilmCraft** por su arquitectura abierta nativa para CLI y protocolo de control con agentes (MCP). El resultado del video piloto determinará si es viable en el entorno local o si se requiere asistencia manual en editores de escritorio.
- **Video Cinemático, Storyboard y Personajes IA:** Usar **Google Flow (`flow.google.com`)** para:
  1. Montar storyboards visuales de concepto antes de arriesgar tiempo en una producción completa.
  2. Mantener la **consistencia de personajes (*character consistency*)** a lo largo de múltiples planos encadenando nodos de referencia (rostro, vestimenta, estilo).
  3. Generar B-roll cinemático y tomas sintéticas cuando no existan en stock libre.
- **Música, Jingles y Branding Sonoro:** Usar **Google Flow Music (`flowmusic.app`)** para crear la firma sonora oficial del canal, jingles de cabecera o canciones completas estructuradas; o la **YouTube Audio Library** para pistas de fondo libres de reclamos.
- **Búsqueda de Assets:** Conectar vía API/MCP con **Coverr**, **Pexels**, **Pixabay**, **Wikimedia Commons** u **Openverse**.

### 2. Protocolo de Traspaso (Handoff Agente ➔ Creador):
Cuando una herramienta requiera interacción visual, inicio de sesión o ejecución manual en una interfaz web o software de escritorio, el agente **tiene prohibido dar instrucciones abstractas**. Debe **entregar el paquete completamente preparado y listo para usar** según el caso:

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
