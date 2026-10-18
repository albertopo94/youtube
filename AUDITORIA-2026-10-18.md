# Auditoría integral del repositorio YouTube Creator Hub

- **Fecha de la auditoría y de consulta de fuentes externas:** 18/10/2026
- **Alcance:** lectura de todos los archivos del repositorio, `.git/logs` y `old-workflow/`; verificación de referencias externas.
- **Nota:** el repositorio no se modificó durante la auditoría. Este archivo se añadió después, por petición expresa.

> Premisa corregida: las reglas "mínimo 5 alternativas siempre", "preguntar antes de cada paso" y "cambiar la miniatura a las pocas horas" ya no están vigentes. Viven en `old-workflow/aspectos.md`; `AGENTS.md` y `_framework/roles/02-packaging-miniaturas.md` las sustituyen. Quedan restos (ver P1).

---

## 1. Veredicto ejecutivo

**LUZ VERDE CON CONDICIONES.**

Los 5 commits son del 18/10/2026 (en unas 2 horas) y todo es documentación: no hay ningún canal elegido ni un vídeo de prueba. El marco es razonable y sus puertas de originalidad, fuentes y licencias están bien pensadas. Hay un bloqueo real (no existe ningún canal en estudio) y varios errores concretos en licencias, herramientas y automatización que conviene cerrar antes de publicar.

## 2. Lo que está bien resuelto

- Autonomía en 3 niveles en `AGENTS.md` (el agente trabaja fluido; el creador aprueba hitos y confirma publicar, gastar o borrar).
- Regla de 5 alternativas limitada a decisiones creativas de alto impacto.
- Packaging como hipótesis, no como ley.
- Pruebas de miniatura nativas con Watch Time Share, sin cambios precipitados (coincide con la documentación oficial: hasta 3 títulos y miniaturas, gana el de mayor tiempo de visualización).
- Puerta de originalidad de 4 preguntas y plantilla de verificación de fuentes.
- Métricas por intervalos (24 h, 7 d, 28 d) con contexto de fuentes de tráfico.
- Pipeline de 5 archivos por vídeo: simple y copiable.
- Idiomas tratados como hipótesis en `01-investigacion-ideas.md` §5.

## 3. Problemas y señalamientos

| Prioridad | Archivo o sección | Problema concreto | Consecuencia probable | Corrección recomendada |
|---|---|---|---|---|
| **P0** | `canales-en-estudio/`, `mis-canales/` | Solo plantillas: ningún canal, nicho, idioma ni voz, ni estudio de outliers real. `herramientas-y-apis.md` enlaza a un canal de Studio que el repo no registra. | No hay primer vídeo posible. | Elegir 1 canal candidato y rellenar `estudio-mercado.md` con outliers reales (enlaces). |
| P1 | `old-workflow/aspectos.md` | Contiene las reglas superadas, sin aviso de obsoleto. | Un agente que escanee el repo puede aplicarlas. | Cabecera "HISTÓRICO, NO OPERATIVO" y línea en `AGENTS.md`. |
| P1 | `README.md` paso 6; `01-packaging.md` "Miniatura B (contingencia)" | Siguen hablando de miniaturas de reemplazo "si es necesario". | Contradice la regla de no tocar durante la prueba. | B y C son variantes de la prueba nativa, no recambios. |
| P1 | `roles/03-guion-y-narrativa.md` §1; `02-guion.md` | Usa el nombre antiguo ("repetitivo") y cita "fair use legítimo". La política vigente se llama contenido inauténtico (masivo o repetitivo), se aplica al canal entero e incluye IA con plantillas genéricas sin aportación propia. El pipeline (misma plantilla, estructura, voz y stock) se parece a ese patrón. Fair use es doctrina de EE. UU.; en España/UE rigen excepciones tasadas (no verificado jurídicamente). | Desmonetización a nivel de canal; falsa seguridad sobre citas. | Añadir "variación sustancial entre vídeos" a la puerta; sustituir fair use (ver §4). |
| P1 | `registro-licencias-template.md`, `04-registro-recursos.md` | No cubre assets generados por IA (herramienta, plan, términos, prompt), voces/TTS, tipografías, figuras de papers ni logos. Sin índice asset→vídeos. `assets/` no está definido y `.gitignore` no excluye vídeo ni audio. | No se podrán acreditar derechos de lo más usado (IA + voz); binarios grandes hacia GitHub. | Ampliar campos e ignorar medios (ver §4). |
| P1 | `herramientas-y-apis.md` (ArtCraft) | Sobrevendido. FilmCraft se declara en alfa (~56 % de preparación para trabajo real, según su README). SoundCraft es un clon de Pro Tools en pre-alfa, no de Audition. "AudioCraft" no figura entre las 13 apps de ArtCraft; si es el de Meta, sus pesos son CC-BY-NC (sin uso comercial). | Depender de alfa para el vídeo 1; música no comercial en canal monetizado. | Columna "Estado"; prohibir AudioCraft hasta verificar. |
| P1 | `herramientas-y-apis.md` (Coverr) | El MCP existe (mcp.coverr.co, requiere API key; plan Demo: 50 peticiones/hora). La documentación de la API condiciona el acceso gratuito a no hacer uso comercial de los vídeos; no se pudo confirmar si difiere de la licencia web. | Posibles términos distintos para clips bajados por API. | Antes de monetizar con clips de API, confirmar términos por escrito; por defecto, descargar desde la web y guardar la licencia. |
| P1 | `ciclo-produccion.md` "Flujo automatizado" | Plantea publicar y lanzar la A/B desde el agente. Las subidas por API de proyectos no verificados creados tras julio de 2020 quedan privadas hasta pasar una auditoría. No se encontró soporte de API para Test & Compare. Contradice `AGENTS.md`. | Creer automatizable lo que hoy es manual. | Etiquetar "visión futura, no implementada". |
| P1 | `02-guion.md` casilla de IA | "Voz sintética estándar → no requiere declaración" es ambiguo: YouTube incluye entre los casos con declaración generar sintéticamente la voz de una persona. Solo se comprobó el anuncio original de 2024, no la página vigente. | Declaración mal decidida. | Definir criterio (ver §4) y reverificar la página vigente. |
| P1 | `AGENTS.md` fact-check | Nada impide que el agente marque `Verificado` sin abrir la fuente. | Falsos "verificados". | El agente no marca verificado sin URL/DOI y fecha; el creador revisa lo numérico y polémico. |
| P1 | `ideas.md` | Riesgo de terceros en noticias+sátira (clips, imagen y voz de personas reales), resúmenes de libros y lore (IP ajena). "Dormir = más anuncios" sin evidencia. | Reclamaciones, declaración sintética, reutilización. | Para el canal 1, priorizar ideas 1, 3 o 7 (contenido propio); el resto, tras análisis de licencias. |
| P2 | `01-investigacion-ideas.md` | Filtros 3 ("80 % de la audiencia") y 4 ("objetivo de visualizaciones") no medibles sin audiencia. Umbral 5x–10x sin muestra mínima. | Filtros decorativos. | Reescribir como hipótesis medibles. |
| P2 | `02-packaging-miniaturas.md` | Heurísticas escritas como hechos (caras en canales nuevos, Smart TV arriba, máx. 5 palabras). "Modificar durante la prueba reinicia el experimento" no se encontró en las páginas oficiales. | Reglas rígidas sin base. | Marcar `[heurística]`. |
| P2 | Gobernanza y plantillas duplicadas | Gobernanza triplicada (README, AGENTS, reglas-sistema); plantillas de estudio y branding duplicadas; `AGENTS.md` pide `entregable-final.md`, que el pipeline no copia. | Deriva entre copias. | Fuente única en `AGENTS.md`. |
| P2 | `estrategia-idiomas.md`, `05-metricas-retencion.md`, bloque YPP ausente | Ranking por alcance y hablantes, sin ingreso por mil vistas, competencia ni capacidad nativa. Métricas sin predicción previa ni mínimo de datos. Sin umbrales de monetización. | Elegir mercado por tamaño; aprendizaje débil. | Ver §4. |

**Justificación de prioridades:** solo el P0 impide empezar. Los P1 tienen riesgo legal, de monetización o de coherencia y deben cerrarse antes de publicar. Los P2 no deben retrasar el vídeo 1.

### Clasificación de reglas clave

- **Correcta y útil:** packaging como hipótesis; Test & Compare con 3 variantes y Watch Time Share.
- **Razonable, dependiente del contexto:** aperturas de 5–10 s, 15–30 s o inmersiva según formato; ranking de idiomas como hipótesis; voz TTS genérica sin declaración.
- **Necesita evidencia:** "modificar reinicia la prueba"; outliers 5x–10x; "dormir = más anuncios".
- **No verificable hoy:** filtros 3 y 4; caras, Smart TV y máx. 5 palabras.
- **Incorrecta o desactualizada:** "fair use legítimo"; SoundCraft como equivalente de Audition; "repetitivo" como nombre de la política.
- **Potencialmente perjudicial:** AudioCraft sin verificar licencia.

## 4. Cambios concretos en los documentos

### Obligatorios

- **`AGENTS.md`**: añadir
  ```
  ## Verificación
  El agente no marca `Verificado` sin URL/DOI abierto y fecha de consulta.
  El creador revisa afirmaciones numéricas o polémicas.
  ## Histórico
  Ignorar `old-workflow/`: no contiene reglas vigentes.
  ## Capacidades
  Hoy no hay automatizaciones. Publicar, A/B y gasto son manuales.
  ```
- **`roles/03-guion-y-narrativa.md` §1 y `02-guion.md`**: sustituir "fair use" por "Citas o parodia solo bajo la excepción aplicable y con revisión humana; por defecto, sin material ajeno sin licencia". Nueva pregunta de la puerta: "¿Difiere sustancialmente de los últimos 3 vídeos en estructura, ejemplos y aportación?". Criterio de IA: TTS genérico que no imita a nadie = no declara; voz clonada o realista de una persona real, o escenas realistas = sí.
- **`registro-licencias-template.md` y `04-registro-recursos.md`**: columnas `ID asset | Tipo (stock/IA/voz/música/fuente) | Herramienta y plan | URL y captura de términos | Prompt o voice ID | Uso comercial (Sí/No/Dudoso) | Declaración sintética | Vídeos donde se usa`, más un índice global con los mismos IDs.
- **`.gitignore`**: `*.mp4 *.mov *.mkv *.wav *.mp3 *.aiff *.psd assets/`.
- **`herramientas-y-apis.md`**: columna "Estado" (Verificado / Alfa / No verificado); corregir SoundCraft y AudioCraft.
- **`ciclo-produccion.md`, `README.md` paso 6, `01-packaging.md` B/C, `old-workflow/aspectos.md`**: aplicar los cambios descritos en la tabla.

### Opcionales

- **`01-investigacion-ideas.md`**: sustituir los filtros 3 y 4 por hipótesis del tipo "≥3 vídeos de ≥2 canales con ≥3× su mediana" (umbral inicial ajustable, no es un dato contrastado).
- **`05-metricas-retencion.md`**: campos "predicción previa" y "hipótesis → resultado".
- **Bloque de monetización** (YPP, página oficial): nivel inicial con 500 suscriptores, 3 subidas públicas en 90 días y 3.000 h (o 3M de vistas de Shorts); nivel pleno con 1.000 suscriptores y 4.000 h (o 10M). Una fuente secundaria menciona requisitos más duros desde febrero de 2027; no verificado.
- **Duplicados**: consolidar.

## 5. Plan de primera producción

1. **Creador:** elige canal e idioma (ver P1 de `ideas.md`) y decide voz propia o TTS.
2. **Agente:** estudia 3 canales de referencia y 3 outliers por canal, con enlaces. **Creador** aprueba.
3. **Agente:** propone 5 títulos y 3 miniaturas. **Creador** aprueba.
4. **Agente:** redacta el guion y la tabla de fuentes con enlaces abiertos. **Creador** revisa afirmaciones clave y la puerta de originalidad.
5. **Assets:** priorizar material propio, generado o de dominio público; registrar cada recurso antes del render, con captura de términos.
6. **Edición:** con el editor que ya domine; FilmCraft solo aceptando que está en alfa y con plan B.
7. **Control previo:** escuchar en altavoz de móvil, revisar microgaps, decidir la declaración sintética y copiar las atribuciones.
8. **Creador:** publica a mano. Comprobar si Test & Compare está disponible (solo vídeos largos públicos, no Shorts); los requisitos de elegibilidad varían según la fuente: confirmar en Studio.

## 6. Qué NO haría todavía

- **Subida por API:** requiere auditoría; retomar tras varios vídeos si subir a mano estorba de verdad.
- **MCP de stock y suite ArtCraft completa:** hacerlo a mano hasta que una tarea repetida consuma más tiempo que el resto en 3 vídeos seguidos.
- **Doblaje o varios idiomas, Shorts derivados y dashboards:** primero demostrar el flujo en un idioma.
- **Herramientas de pago nuevas y branding perfecto.**

Evidencia para retomarlos: una fricción repetida y medida, no una intuición.

## 7. Criterios de salida

### Vídeo 1 listo para publicar

- [ ] Packaging aprobado (Clarity, Contrast y Glance superados).
- [ ] Se puede explicar en 2 frases qué aporta que no esté en la fuente.
- [ ] Toda afirmación sustancial tiene fuente abierta y fecha; las polémicas están revisadas.
- [ ] 100 % de los assets en el registro, sin filas "Dudoso" y con IDs vinculados al vídeo.
- [ ] Declaración sintética decidida y anotada.
- [ ] Sound check hecho y atribuciones pegadas en la descripción.
- [ ] Publicación manual confirmada por el creador.

### Sistema listo para repetir

- [ ] 3 vídeos publicados con `05-metricas-retencion.md` completo a 28 días.
- [ ] Tiempo por vídeo medido.
- [ ] Al menos 1 aprendizaje aplicado al siguiente vídeo.
- [ ] Cero assets sin registro.

## 8. Conclusión final

**Sí, luz verde con condiciones.** Es imprescindible elegir y estudiar un canal real (P0). Antes de publicar el vídeo 1, cerrar licencias de IA y voz, el criterio de declaración sintética, la puerta anti-contenido masivo y los restos de reglas viejas. Lo demás puede esperar.

## Fuentes consultadas (18/10/2026)

- Política de contenido inauténtico: support.google.com/youtube/answer/1311392
- Declaración de contenido alterado o sintético: anuncio de YouTube de marzo de 2024 (blog.google), no la página vigente del Centro de ayuda
- Test & Compare: support.google.com/youtube/answer/16391400 y /13861714
- Requisitos del YPP: support.google.com/youtube/answer/13429240
- API de YouTube (`videos.insert`, restricción a privado): developers.google.com/youtube/v3/docs/videos/insert
- FilmCraft y SoundCraft: repositorios `storytold/filmcraft` y `storytold/soundcraft`; apps oficiales en getartcraft.com/apps
- Licencia de los pesos de MusicGen (AudioCraft de Meta): CC-BY-NC 4.0
- Coverr API: api.coverr.co/docs y coverr.co/developers

## No verificado en esta auditoría

- Términos de Pexels, Pixabay, Openverse, Wikimedia, FlowMusic y Google Flow.
- La métrica "retención a 30 s" en Studio.
- Builds de EffectCraft y SoundCraft para macOS Intel (el DMG de FilmCraft sí es universal).
- La página vigente de declaración de contenido sintético.
- Aspectos jurídicos españoles.
- Si el repo tenía cambios sin commitear o si el remoto es privado.
