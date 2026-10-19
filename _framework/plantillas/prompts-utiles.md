# Plantilla: Prompts Útiles y Operativos

Colección de prompts base listos para ser utilizados por los agentes o manualmente por el creador:

---

## 1. Alternativas para Imagen de Perfil
```text
Dame 5 alternativas para la imagen de perfil del canal, teniendo en cuenta la temática, el público objetivo y la identidad visual deseada. Para cada una define: concepto central, elementos clave, estilo de renderizado/ilustración y justificación de por qué funciona en tamaño circular pequeño.
```

---

## 2. Alternativas para Banner de Canal (con especificaciones técnicas obligatorias)
```text
Dame 5 alternativas para la imagen del banner del canal. 
Diseña el banner respetando estrictamente las medidas estándar de YouTube: 
- Un lienzo total de 2560 × 1440 px visible en Smart TV.
- Una franja horizontal central de 2560 × 423 px para PC de escritorio.
- Una extensión visible de 1855 × 423 px para tablets.
- Una zona segura central de 1546 × 423 px para móviles y portátiles, donde debes concentrar de forma obligatoria todo el texto principal, logotipos, elementos clave y claims indispensables para garantizar que no se corten en ningún dispositivo.
- Permite que únicamente el fondo, texturas y elementos decorativos secundarios se expandan hasta los bordes del lienzo completo de 2560 × 1440 px.
```

---

## 3. Conversión de Guion a Storyboard y Plan de Producción
```text
Convierte el guion aprobado en un storyboard detallado y un plan de producción real. Para cada escena indica:
1. Marca de tiempo / Duración estimada.
2. Texto o locución asociada.
3. Objetivo visual y punto focal de la escena.
4. Recurso necesario específico: animación, ilustración/imagen fija, gráfico/infografía, texto en pantalla o clip de video de apoyo.
5. Efectos de sonido (SFX) o cambio en la música de acompañamiento.
```

---

## 4. Prompt Maestro Operativo para Guionado Asistido por IA

Utilizar este prompt cuando se solicite a un modelo de IA (Claude, Gemini, etc.) redactar o refinar el guion de un video para la oficina de YouTube:

```text
Actúa como un guionista audiovisual experto en retención, psicología del espectador y narrativa para YouTube.

Antes de redactar, consulta los parámetros de producción del video:
- Canal y Nicho: [NICHO]
- Perfil de Audiencia: [AUDIENCIA]
- Título / Promesa aprobada en 01-packaging.md: [TEMA_Y_TITULO]
- Formato / Género: [GÉNERO: Divulgación / Ensayo / Tutorial / Narrativa / Relax]
- Fuentes primarias y hechos comprobados en 06-fuentes-y-verificacion.md: [FUENTES]
- Duración estimada: [DURACIÓN_MINUTOS]
- Régimen de Veracidad: [Régimen 1 Ficción / Régimen 2 Factual / Régimen 3 YMYL]
- CTA objetivo: [Siguiente paso más útil o video complementario]

Instrucciones de Redacción:
1. Selección de Estructura: Identifica el género y selecciona una arquitectura narrativa adecuada (Dinámica de Valor, Tres Actos, o Arco en Bucle). Justifica brevemente por qué encaja.
2. Formato por Bloques Atómicos: Redacta el guion dividiéndolo en unidades numeradas con identificadores estables [Bxx], indicando para cada bloque su tiempo estimado, objetivo narrativo, texto de locución y notas visuales de referencia.
3. Grado de Guionado: Si es voz en off/IA, redacta palabra por palabra con lenguaje conversacional apto para el oído. Si es un screencast o demostración técnica, redacta una estructura nítida con viñetas clave y espacio para fluir con naturalidad.
4. Rigor y Ética: NO inventes credenciales, biografías ni experiencias personales ficticias. Cualquier afirmación en temas YMYL debe estar sustentada en las fuentes primarias provistas. Aplica el linter de léxico prohibido (sin absolutos sensacionalistas y matizando si los estudios son en animales).
5. Apertura y CTA: Diseña un gancho en bucle abierto que no destripe el final. El CTA debe ser un "Give" natural (extensión de la lección o bucle al siguiente video), prohibido el pitch comercial desconectado.

Entrega el resultado estructurado directamente para la plantilla 02-guion.md en estado PENDIENTE_APROBACION, señalando cualquier duda editorial o fuente pendiente de validación.
```
