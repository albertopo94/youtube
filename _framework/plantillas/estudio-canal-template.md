# Estudio de Viabilidad de Canal Candidato

- **Nombre tentativo del canal:** 
- **Nicho / Temática:**
- **Mercado e Idioma principal:** (Español / Inglés / Hindi / Multiidioma)
- **Fecha de inicio de estudio:** 

---

## 1. Matriz de Investigación DFS (Depth-First Search) y Grafo de Recomendaciones

> **Protocolo de barrido híbrido:** El agente genera la lista semilla y gestiona la pila (*stack*). El creador o VA busca en ventana de incógnito en YouTube, localiza los outliers y sigue las recomendaciones laterales.

### Lista Semilla en Lenguaje de Dolor (*Seed List / The Stack*):
1. [Término semilla 1]
2. [Término semilla 2]
3. [Término semilla 3]
4. ...

### Base de Datos de Nodos y Outliers Validados:

| Término Semilla | Video Outlier (Título y URL) | Canal (Vistas vs. Subs) | Ratio Outlier | Deseo Amplio / Dolor Detectado | Curiosity Gap de Miniatura | Recomendaciones Laterales Relevantes (Próximos Nodos) |
| :--- | :--- | :--- | :---: | :--- | :--- | :--- |
| *[Semilla 1]* | *"..."* - `https://...` | Canal X (`15k subs`) | `12x` (`180k views`) | Alivio de niebla mental | Comparativa cerebro limpio vs. opaco | Video Y (`https://...`), Canal Z |
| *[Semilla 2]* | *"..."* - `https://...` | Canal W (`50k subs`) | `8x` (`400k views`) | Energía matutina rápida | Número redondo grande + cara asombro | Video K (`https://...`) |
| ... | ... | ... | ... | ... | ... | ... |

---

### Patrones Extraídos del Recorrido DFS:
- **Títulos con mayor tracción:** (¿Usan preguntas, declaraciones contundentes o superlativos?)
- **Patrones visuales en miniaturas:** (¿Ilustraciones, personas, interfaces o esquemas?)
- **Gaps o vacíos de contenido detectados:** ¿Qué preguntas recurrentes en comentarios ningún competidor está respondiendo bien?

---

## 2. Validación de Demanda del Cliente Target y Niveles de Conciencia (Eugene Schwartz)

- **Pregunta de Demanda Real:** *¿Qué evidencia objetiva demuestra que las personas que quiero como clientes o audiencia cualificada YA están eligiendo ver activamente este tema en YouTube?*
  - Evidencia de búsqueda y reproducciones: [Comentarios, preguntas recurrentes o videos con alta interacción]
  - ¿Qué canales o referentes consume actualmente este perfil de audiencia?
- **Nivel de Conciencia predominante en el nicho:**
  - [ ] **Problem Aware:** La audiencia siente el dolor/problema pero no conoce soluciones claras.
  - [ ] **Solution Aware:** La audiencia ya busca soluciones activamente y compara métodos.
- **Deseo Amplio que genera la demanda (*Broad Desire*):** (ej. salud, estatus, claridad mental, desarrollo profesional).
- **Mecanismo Diferencial que ofrecerá el canal (*Unfamiliar Mechanism*):** (El ángulo único o metodología que les da una nueva razón para suscribirse).

---

## 3. Propuesta de Valor y Notabilidad (How to be remarkable?)
- **Tipo de valor principal:** (Educación práctica / Entretenimiento / Curiosidad / Satírico / Lore)
- **Diferenciación:** *¿Cómo será significativamente mejor o significativamente diferente a lo existente?*

---

## 4. Propuesta de Identidad y Branding
- **Tono de voz:** (Serio / Chill / Dinámico / Satírico tipo Ryan Trahan / etc.)
- **Estilo visual predominante:** (De `banco-visual.md` - ej. anime, motion graphics, stop motion, minimalista)
- **Propuesta de Banner y Logo:** (Aplicar prompts de `_framework/plantillas/prompts-utiles.md`)

---

## 5. Banco de Primeros 5 Videos Candidatos (con Filtros de Eliminación)
1. **Video 1:** Topic + Format + Spice | Feasibility: [ ] | Potential: [ ] | Packaging: [ ]
2. **Video 2:** Topic + Format + Spice | Feasibility: [ ] | Potential: [ ] | Packaging: [ ]
3. **Video 3:** Topic + Format + Spice | Feasibility: [ ] | Potential: [ ] | Packaging: [ ]
4. **Video 4:** Topic + Format + Spice | Feasibility: [ ] | Potential: [ ] | Packaging: [ ]
5. **Video 5:** Topic + Format + Spice | Feasibility: [ ] | Potential: [ ] | Packaging: [ ]

---

## 6. Veredicto del Estudio
- [ ] **Aprobado para Producción** ➔ Mover a `mis-canales/[nombre-canal]/`
- [ ] **Descartado / En Pausa**
