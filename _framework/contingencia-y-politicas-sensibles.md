# Políticas Sensibles (YMYL), Regímenes de Veracidad y Plan de Contingencia

Este documento establece las barreras de seguridad editorial para evitar penalizaciones, huelgas (*strikes*) o cancelaciones de cuenta por políticas de **Desinformación, Prácticas Engañosas y Contenido Sensible en YouTube (YMYL: *Your Money or Your Life*)**, así como los protocolos de respuesta y apelación ante incidencias.

---

## 🚦 1. Los 3 Regímenes de Veracidad por Temática

Cada canal y video debe clasificarse bajo uno de los tres regímenes en `00-estado-produccion.md`:

| Régimen | Temáticas Típicas | Tolerancia a la Ficción / Hipérbole | Riesgo de Penalización | Requisito Operativo del Agente |
| :--- | :--- | :---: | :---: | :--- |
| **Régimen 1: Ficción, Fantasía y Relax** | Cuentos para dormir, animación, parodias, historias de lore, relatos de misterio. | **Máxima** (Se asume la narrativa artística). | **Cero por veracidad** (cuidar solo copyright). | Redacción creativa libre. No requiere tabla de fact-checking `06`. Dejar claro en el packaging el carácter de relato o ficción. |
| **Régimen 2: Divulgación Factual / Hobby** | Resúmenes de libros, coctelería, historia, tecnología general, motos, viajes. | **Moderada** | **Bajo** | Citar fuentes generales y no presentar conjeturas o debates abiertos como dogmas históricos absolutos. |
| **Régimen 3: Zona Roja YMYL (Ciencia, Salud, Dinero, Noticias)** | Papers de neurociencia/sueño, salud física y mental, nutrición, finanzas, noticias de actualidad. | **TOLERANCIA CERO** | **EXTREMO** (Retiro de video, strikes de normas y cierre de canal). | **Carga de la prueba obligatoria.** Prohibido escribir una afirmación en el guion sin su DOI o paper verificado en `06-fuentes-y-verificacion.md`. Linter de léxico prohibido estricto. |

---

## 🚫 2. Linter de Léxico Prohibido vs. Redacción Blindada (Zona Roja YMYL)

YouTube utiliza clasificadores automáticos de lenguaje natural (NLP) para detectar desinformación médica y financiera. El agente tiene prohibido emplear términos absolutos o sensacionalistas:

| ❌ Término / Estructura Prohibida (Alarma en YouTube) |  Redacción Blindada (Científica y Aprobada) |
| :--- | :--- |
| *"Este estudio demuestra que..."* | *"Los investigadores observaron una correlación preliminar en..."* |
| *"Cura milagrosa / Solución definitiva / Elimina para siempre..."* | *"Un mecanismo biológico que ayuda al organismo a regular..."* |
| *"El secreto que los médicos/la ciencia no quieren que sepas..."* | *"Un ensayo clínico reciente publicado en [Revista] sugiere..."* |
| *"Si no haces esto vas a enfermar de [Enfermedad grave]..."* | *"Los datos epidemiológicos asocian este hábito con un menor riesgo relativo de..."* |
| *"Garantiza un rendimiento financiero del X% sin riesgo..."* | *"Casos de estudio históricos donde este método arrojó..."* |

### Regla de Oro: "Modelos Animales vs. Ensayos en Humanos"
- **Peligro:** El 80% de los canales sancionados en salud toman un estudio realizado en **ratones o cultivos celulares (*in vitro*)** y lo titulan como si fuera una cura demostrada en personas.
- **Obligación:** Si el paper citado en `06-fuentes-y-verificacion.md` fue realizado en roedores o modelos celulares, el guion **debe matizar explícitamente**:
  > *"Es importante aclarar que este mecanismo fue observado en modelos animales y los científicos aún investigan cómo se traslada a la fisiología humana."*

---

## ⚖️ 3. Cláusulas de Exención de Responsabilidad (*Disclaimers* Legales)

Para todo video en **Régimen 3 (YMYL)**, se debe incluir obligatoriamente en la descripción y de forma sutil en pantalla:

### Disclaimer de Salud / Divulgación Científica:
```text
Aviso legal: Este video tiene fines exclusivamente divulgativos y educativos. No constituye asesoramiento médico, diagnóstico ni tratamiento profesional. Si tienes dudas sobre tu salud, consulta siempre con un médico o profesional sanitario cualificado. Nunca desestimes el consejo médico profesional por información compartida en este canal.
```

### Disclaimer de Finanzas / Negocios:
```text
Aviso legal: El contenido de este video es puramente educativo y analítico. No constituye asesoramiento financiero, fiscal ni de inversión. Toda decisión económica conlleva riesgos; consulta a un asesor certificado antes de invertir.
```

---

## 🛑 4. Plan de Contingencia ante Reclamaciones y Sanciones de YouTube

Si un video publicado recibe una notificación o sanción en YouTube Studio, el creador y los agentes deben seguir este árbol de decisión:

```text
                                ¿Qué tipo de notificación se recibió?
                                                  │
                 ┌────────────────────────────────┴────────────────────────────────┐
                 ▼                                                                 ▼
      [Reclamación de Content ID]                                    [Falta de Normas de la Comunidad]
                 │                                                                 │
    (Música o clip de terceros)                                    (Desinformación, engaño o copyright)
                 │                                                                 │
   ¿La licencia era válida?                                       ¿Es por un fragmento acotado?
        ┌────────┴────────┐                                            ┌───────────┴───────────┐
        ▼                 ▼                                            ▼                       ▼
      [SÍ]              [NO]                                         [SÍ]                    [NO]
  Impugnar con      Reemplazar audio                             Usar Editor Web         Evaluar Apelación
  licencia en       en Studio Editor                             de YouTube Studio       Formal con DOIs
  `04-registro`     (sin borrar video)                           (Recortar segmento)     (Menos de 800 chars)
```

---

### Paso A: Remediación No Destructiva (Editor Web de YouTube Studio)
- **REGLA SUPREMA:** **NUNCA borrar un video sancionado si la falta se debe a un fragmento o pista puntual.** Borrar el video destruye el historial de visualizaciones, comentarios y tiempo de reproducción acumulado.
- YouTube Studio cuenta con un **Editor Web integrado**:
  - Si un fragmento de 15 segundos infringe normas o contiene una afirmación conflictiva: se utiliza la herramienta **Recortar (*Trim*)** para extirpar ese segmento exacto directamente en los servidores de YouTube. El video se mantiene online con la misma URL.
  - Si una canción tiene reclamo: se utiliza la opción **Reemplazar canción** o **Silenciar audio** en Studio.

---

### Paso B: Protocolo y Prompt de Apelación Formal (Revisión Humana)
Si YouTube marca un video por supuesta "desinformación" debido a un falso positivo de sus bots algorítmicos, y el video está respaldado por los DOIs de `06-fuentes-y-verificacion.md`:

> **Límite de YouTube:** Las apelaciones en Studio tienen un límite estricto de **800 caracteres**. No escribir ensayos; presentar datos duros y fuentes primarias.

#### Prompt / Plantilla de Apelación Formal:
```text
Estimado equipo de revisión de YouTube:

Solicito la revisión humana de la decisión tomada sobre este video. 
El contenido no infringe las políticas de desinformación ni salud; se trata de divulgación científica rigurosa sustentada en literatura académica primaria con revisión por pares:

1. Afirmación del minuto [XX:XX]: Respaldada por el estudio publicado en [Nombre de la revista, ej. Nature Neuroscience] (DOI: [Insertar DOI]).
2. En el minuto [YY:YY] se incluye explícitamente la matización de que los resultados corresponden a modelos preliminares y se incorpora la advertencia legal médica correspondiente.

El video aporta contexto educativo y no desincentiva tratamientos ni promueve prácticas perjudiciales. Agradezco la reevaluación del caso.
```

---

### Paso C: Protocolo de Re-Upload Anti-Shadowban (Para Shorts o Videos Estancados)

Si un Short o video quedó atrapado con cero impresiones del feed (ej. menos de 200 visitas) debido a una colisión de cadencia con un video viral previo o una sospecha de infracción menor, y el creador decide eliminarlo para darle una segunda oportunidad:

> ⚠️ **REGLA SUPREMA:** **Jamás re-subir el archivo idéntico.** El algoritmo de YouTube calcula el hash binario del archivo y la huella espectral de audio. Re-subir el mismo archivo activa los filtros de spam algorítmico y puede provocar un **shadowban** permanente en el canal.

#### Pasos Obligatorios antes de un Re-Upload:
1. **Modificación de la Pista de Audio:** Cambiar la canción de acompañamiento, alterar los efectos sonoros o re-ecualizar la mezcla.
2. **Alteración Visual:** Recortar o cambiar al menos un fragmento o escena, ajustar sutilmente la velocidad (ej. 101%) o modificar el primer segundo del gancho.
3. **Re-exportación Limpia:** Exportar un archivo nuevo con un nombre de archivo diferente desde el editor.
4. **Metadatos Renovados:** Reescribir el título y la descripción con variaciones de palabras clave.
5. **Comprobación de Cadencia:** No re-subir de inmediato. Verificar en YouTube Studio que las velas horarias del canal estén estables antes de publicar la versión corregida.
