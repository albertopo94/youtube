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

---

## 🎯 05. Criterios de Salida Verificables (Definition of Done) por Fase

Para que una fase se considere `APROBADO`, debe existir evidencia física demostrable:

- **Fase Packaging:** Existen 5 títulos candidatos y 3 conceptos de miniatura bien diferenciados con bocetos/prompts en `01-packaging.md`. Título y enfoque elegidos por el creador.
- **Fase Guion:** Existe el documento `02-guion.md` con estructura atómica por bloques `[Bxx]`, fórmula de intro en 3 pasos (reafirmar promesa en segundos 0-5, *Unfair Edge Statement* de autoridad y roadmap de compromiso mental), aportación editorial justificada, fuentes primarias registradas en `06-fuentes-y-verificacion.md`, y **CTA diseñado como el 'Siguiente Paso Más Útil'** (*Give* que extiende la lección o desatascador que supera el filtro del experto imparcial; prohibido el pitch comercial desconectado o pedir suscripción a newsletters genéricas).
- **Fase Animatic:** Existe una locución provisional reproducible y un timeline/animatic de baja fidelidad donde el ritmo y el flujo narrativo fueron evaluados y aprobados.
- **Fase Producción y Edición:** Existen los recursos generados/descargados, la tabla de `03-storyboard-y-edicion.md` vinculada 1:1 con los bloques de guion, respetando la coherencia de estilo con el empaque (*la edición elimina fricción, no rescata un video vacío*), y el video exportado ha superado los checks de sonido (*sound check*), ritmo (*flow check*) y estilo (*style check*).
- **Fase Auditoría Legal:** Todos los recursos cuentan con licencia verificada, términos archivados y textos de atribución en `04-registro-recursos.md`.

---

## 🛡️ 06. Dos Reglas Críticas de Realidad Operativa

1. **El Control de Originalidad NO es Garantía de Monetización:**
   El filtro de originalidad y anti-contenido repetitivo eleva el estándar editorial y mitiga riesgos conocidos, pero **no garantiza la monetización ni blinda el canal de forma infalible**. Las decisiones de YouTube son discrecionales y están sujetas a revisiones humanas y cambios de políticas. La función del agente es señalar riesgos y maximizar el valor genuino.
2. **No Automatizar Prematuramente:**
   No desarrollar aplicaciones de orquestación complejas, dashboards analíticos ni bots de publicación automática por API antes de completar manualmente con éxito un **primer video piloto**. El foco actual es validar el pipeline y las capacidades reales del entorno.

---

## 🏗️ 07. Scaffolding y Estructura por Video en Producción

Cada carpeta de video en `mis-canales/[canal]/videos-en-estudio/[numero-slug]/` debe contener exactamente:

```text
[numero-slug]/
├── 00-estado-produccion.md       # Estado persistente, fase actual y siguiente acción
├── 01-packaging.md               # 5 títulos + 3 variantes de miniatura para prueba nativa
├── 02-guion.md                   # Guion por bloques [Bxx], locución provisional y puerta de originalidad
├── 03-storyboard-y-edicion.md    # Animatic preliminar, tabla de escenas y diseño sonoro
├── 04-registro-recursos.md       # Registro integral de stock, IA visual, TTS, música y licencias
├── 05-metricas-retencion.md      # Impresiones, fuentes, retención y prueba nativa de YouTube
└── 06-fuentes-y-verificacion.md  # Fact-checking: afirmaciones, fuentes primarias DOI y estado
```

---

## 🛠️ 08. Protocolo de Herramientas: Mapeo por Fase, Traspaso y Proactividad

Las herramientas de la oficina están catalogadas en `_framework/herramientas-y-apis.md`. El agente debe manejarlas bajo las siguientes directivas:

### 1. Cuándo invocar cada herramienta (Mapeo por Fase):
- **Investigación e Ideación:** Consultar YouTube Studio (pestañas Research y Audience), VidIQ (competencia y outliers), Google Trends y Books Ngrams.
- **Packaging:** Diseñar variantes de títulos y miniaturas; sugerir **Thumblytics** para simulación previa de feed; inspirarse en **AdForum** para ganchos publicitarios de alto impacto; usar **Google AI Studio** para refinamiento multimodal de prompts.
- **Fact-Checking:** Consultar **Google Scholar & Labs** para abstracts y DOIs de papers primarios.
- **Storyboard y Animatic:** Usar **Google Docs Video Scene Editor** o plantillas internas; generar locución provisional con **ElevenLabs (tier gratuito)** o TTS de sistema.
- **Montaje y Edición:** Priorizar **FilmCraft** por su arquitectura abierta nativa para CLI y protocolo de control con agentes (MCP). El resultado del video piloto determinará si es viable en el entorno local o si se requiere asistencia manual en editores de escritorio.
- **Música y SFX:** Explorar **FlowMusic**, **Google Flow** o la **YouTube Audio Library** libre de reclamos.
- **Búsqueda de Assets:** Conectar vía API/MCP con **Coverr**, **Pexels**, **Pixabay**, **Wikimedia Commons** u **Openverse**.

### 2. Protocolo de Traspaso (Handoff Agente ➔ Creador):
Cuando una herramienta requiera interacción visual, inicio de sesión o ejecución manual en una interfaz web o software de escritorio, el agente **tiene prohibido dar instrucciones abstractas**. Debe **entregar el paquete completamente preparado y listo para usar** según el caso:

- **Generadores de Música y Audio (FlowMusic, Google Flow, etc.):** El agente debe entregar el **prompt musical completo listo para copiar** (género, tempo/BPM aproximado, instrumentación, curva emocional y duración deseada para cada bloque).
- **Generadores Visuales y de Miniaturas (Midjourney, Flux, DALL-E):** El agente entrega el **prompt visual detallado**, con parámetros técnicos (relación de aspecto `--ar 16:9` o `--ar 1:1`, estilo de iluminación, encuadre y focal point).
- **Simuladores de Feed (Thumblytics):** El agente entrega los 3 conceptos visuales y la pregunta exacta para el *glance test* para que el creador solo tenga que subirlos y simular.
- **Plataformas de Publicación (YouTube Studio):** El agente entrega el título final, la descripción formateada con capítulos y marcas de tiempo, la lista de tags separada por comas y los textos de atribución de licencias listos para pegar.
- **Investigación con Paywall (Google Scholar & Labs):** El agente entrega el DOI, enlace directo, título del paper y el abstract resumido para que el creador pueda descargar el PDF completo si requiere credenciales.
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
