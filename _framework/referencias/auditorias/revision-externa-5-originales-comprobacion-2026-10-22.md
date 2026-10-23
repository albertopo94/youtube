He revisado completa la sección AGENTS.md §04.7, los apartados relacionados de los roles 01 y 03 y las plantillas de guion y métricas. El problema es algo más amplio que el arco en bucle: la sección de Shorts mezcla técnicas narrativas, investigación de ideas, estrategia de publicación y políticas de monetización.

No todo está mal. El objetivo de la siguiente pasada debería ser separar esas responsabilidades sin perder las técnicas útiles ni convertirlas en nuevas reglas rígidas.
1. Auditoría de los ocho puntos de AGENTS.md §04.7
Documento revisado: AGENTS.md — Directivas específicas para YouTube Shorts
Punto actual	Mi diagnóstico	Qué haría
Filtro de relatabilidad en outliers	Sí es pertinente para estudiar Shorts de entretenimiento masivo.	Mantenerlo como criterio específico de selección de ejemplos de Shorts, pero sin convertir la popularidad masiva en requisito para todos los nichos.
Arco en bucle	Técnica narrativa, no exclusiva de Shorts.	Trasladar su definición al rol 03 y dejar en AGENTS.md una referencia breve.
Ganchos en bucle abierto	Técnica narrativa general y ya condicionada por formato en el rol 03.	Quitar la formulación rígida de §04.7 y remitir al rol 03.
Transposición Cross-Niche	Metodología de investigación e ideación, no exclusiva de Shorts.	Centralizarla en Rol 01, sección 4, donde ya está desarrollada.
Enfoque ágil en primeras subidas	Principio de experimentación para canales nuevos, no necesariamente específico de Shorts.	Precisar que se refiere a los primeros Shorts o trasladarlo a las pautas generales de experimentación del canal.
Cadencia sostenible frente a picos virales	Mezcla una recomendación general con una práctica específica de Shorts.	Dejar las pautas de cadencia sostenible en la estrategia general y conservar la observación opcional de picos virales dentro de Shorts.
Diagnóstico antes de re-subir	Es una práctica general de publicación y análisis del rendimiento.	Llevarla a un protocolo general de diagnóstico y republicación, relacionado con las métricas.
Edición de valor añadido	Se refiere a originalidad, derechos y monetización de materiales de terceros, independientemente del formato.	Integrarla en la gobernanza editorial y el control de originalidad, evitando duplicar el filtro que ya existe en el rol 03.
Heurísticas frente a reglas estrictas	La advertencia es válida, pero está limitada a packaging y miniaturas.	Situarla junto al rol 02 de packaging. No utilizarla como descargo general para las demás reglas de la sección.
La tabla tiene nueve filas porque he separado el contenido de cadencia y el de transposición de la lista que visualmente contiene ocho puntos de interés; el desglose sirve para distinguir mejor las responsabilidades.
2. Las correcciones narrativas que considero prioritarias
A. El arco en bucle no debería pertenecer a una sección exclusiva de Shorts
En Rol 03 — Guion y narrativa ya aparece el arco en bucle como arquetipo opcional, pero actualmente se presenta como modelo para vídeos cortos y medianos. Ese límite de duración tampoco debería mantenerse sin una razón editorial clara.

La estructura que estableciste:

Bucle abierto → Acción → Conflicto inesperado → Recuperación → Payoff

puede utilizarse en diferentes duraciones siempre que la historia se beneficie de una incertidumbre real y una resolución. En un vídeo largo puede constituir el arco principal o repetirse como subestructura de una parte del vídeo.

No tiene por qué utilizarse en un tutorial directo, una explicación cuyo resultado deba darse pronto o una pieza contemplativa que no necesite conflicto.

La modificación correcta, por tanto, es doble: sacar la definición de la sección de Shorts y describirla en el rol narrativo como una estructura opcional, aplicable según el tipo de historia, no según una duración fija.
B. El gancho en bucle abierto conserva instrucciones contradictorias entre documentos
Esta es la inconsistencia que resolvería primero.

En AGENTS.md §04.7, el gancho en bucle abierto todavía se formula como una pregunta o un enigma que «solo se cierre al final». En cambio, el Rol 03, sección 3, actualizado en la última revisión, ya lo define como una herramienta opcional condicionada por formato.

Ambos textos deben expresar el mismo criterio. En los vídeos de misterio, retos y transformaciones, mantener abierto el desenlace puede ser el motor de interés. En los tutoriales o vídeos de respuesta directa, la solución puede entregarse pronto y el interés trasladarse a cómo funciona, cómo aplicarla o qué limitaciones tiene.

No basta con que la versión correcta exista en el rol 03 si el contrato global todavía contiene la instrucción antigua.
C. La plantilla de guion todavía no respeta plenamente el modo narrativo elegido
La otra parte importante está en la plantilla 02-guion.md.

La plantilla ya ofrece dos opciones de progresión: que el descubrimiento forme parte de la experiencia o que la respuesta temprana sea el valor. Sin embargo, el bloque B01 conserva una prohibición terminante de revelar la solución y B04 sigue dedicado a revelar por primera vez el mecanismo desconocido.

Esto puede conducir al agente a seguir el esqueleto de misterio incluso cuando ha seleccionado la modalidad de respuesta temprana.

Mi recomendación es mantener ese ejemplo narrativo, no eliminarlo, pero hacerlo condicional de forma explícita: B01 solo debe aplicar el anti-spoiler cuando el descubrimiento sea parte de la experiencia; B04 debe ser un bloque de revelación únicamente en ese caso. Para los demás formatos, debe poder convertirse en demostración, aplicación, procedimiento o desarrollo de la respuesta.

La plantilla tiene que representar tanto la arquitectura de misterio como la de respuesta directa, sin obligar a utilizar una de ellas.
3. Cómo reorganizaría el repositorio
El objetivo no sería repartir todas las viñetas literalmente entre más archivos, sino establecer una ubicación de referencia para cada tipo de decisión.
AGENTS.md
Contrato global

Mantener las reglas de gobernanza, los criterios verificables y las referencias a cada rol. En §04.7, conservar únicamente los criterios operativos que sean realmente propios de Shorts y que no estén desarrollados de forma canónica en otro documento.


_framework/roles/01-investigacion-ideas.md
Investigación e ideación

Centralizar la transposición entre nichos, el análisis de outliers y los criterios para elegir ejemplos de los que extraer estructuras. Evitar repetir el mismo procedimiento en AGENTS.md.


_framework/roles/03-guion-y-narrativa.md
Arquitectura narrativa

Mantener aquí el arco en bucle, los ganchos abiertos, el anti-spoiler condicionado, los arquetipos de transformación y la elección de progresión según el género y la promesa.


_framework/roles/02-packaging-miniaturas.md
Packaging

Centralizar las heurísticas sobre títulos, miniaturas, legibilidad y libertad creativa. La advertencia contra convertir heurísticas en reglas rígidas encaja aquí.


Plantillas de guion y métricas
Aplicación de las decisiones

02-guion.md debe permitir elegir y materializar una estructura narrativa sin contradicciones; 05-metricas-retencion.md debe registrar hipótesis y resultados sin convertir recomendaciones generales en causalidades demostradas.


4. Orden de trabajo recomendado
Lo abordaría en una sola pasada de coherencia con este orden:
1. Resolver las instrucciones contradictorias de narrativa: arco en bucle, gancho abierto y bloques B01/B04.
2. Desmezclar AGENTS.md §04.7: dejar el contenido realmente específico de Shorts y mover el resto a la ubicación canónica correspondiente.
3. Eliminar duplicaciones: especialmente la transposición Cross-Niche, que ya tiene desarrollo en el rol 01.
4. Revisar referencias y copias: comprobar que los roles, AGENTS.md y las dos copias de cada plantilla siguen sincronizados y que ninguna instrucción antigua contradice la nueva.
Mi valoración final es que tu amiga detectó bien dos candidatos, pero el arco en bucle no debe corregirse asumiendo que es una técnica nacida para Shorts. La corrección es documental y semántica: preservar tu estructura narrativa, retirar la limitación de formato que se introdujo al organizarla y hacer que los agentes elijan la arquitectura que corresponde a cada vídeo.
