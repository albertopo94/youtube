Hallazgos importantes
1. El primer vídeo publicado podría hacer fallar el verificador.

La plantilla de estado solo admite NO_INICIADO, EN_CURSO, BLOQUEADO, PENDIENTE_APROBACION y APROBADO. Sin embargo, el flujo de publicación indica que al archivar un vídeo debe quedar como PUBLICADO. El propio check-contrato.sh examina los estados dentro de mis-canales/, incluidos los vídeos archivados, pero tampoco acepta PUBLICADO.

No es solo una diferencia de nombres: cuando archives el primer vídeo con el estado indicado por el procedimiento, el verificador puede denunciarlo como inválido. Hay que definir el estado terminal y añadir una prueba que lo cubra.

2. Hay dos descripciones distintas del orden de producción.

El README principal y los contratos operativos priorizan packaging first: título y miniatura antes del guion. En cambio, _framework/ciclo-produccion.md presenta primero guion, vídeo y audio; después edición, y solo entonces miniatura. Su flujo automatizado objetivo también salta desde el packaging a la publicación sin describir toda la producción intermedia.

Ese documento necesita alinearse con el flujo canónico o quedar identificado explícitamente como una vista simplificada y no normativa. Tal como está, un agente que lo consulte por separado puede seguir una secuencia distinta de la que quieres.

3. La decisión sobre el futuro youtube-shell no está reflejada de forma uniforme.

youtube-shell-brief-lector.md presenta como decisiones tomadas construir el producto, comenzar con un paquete de Pi, mantener un repositorio nuevo y no modificar la oficina de referencia. Sin embargo, PENDIENTES.md mantiene abiertas la elección de ruta de desarrollo y la forma del producto.

También es relevante que el documento de diseño del runtime reconoce que todavía falta alinear las cinco fases generales de AGENTS.md con las siete fases editoriales numeradas en la plantilla. No es necesario resolverlo todo para seguir usando el framework, pero sí es una decisión que debe quedar única y explícita antes de implementar controles de fase.

4. Algunas afirmaciones sobre el algoritmo siguen expresadas con demasiada certeza.

En roles/01-investigacion-ideas.md se afirma que un éxito viral fuera de temática destruye la satisfacción entre vídeos y provoca que el algoritmo deje de impulsar los siguientes. Es razonable evitar los vídeos que atraen a una audiencia que después no encuentra valor en el canal, pero no conviene presentar esa consecuencia como una regla determinista.

La documentación oficial de YouTube explica que las recomendaciones son personalizadas y que un experimento que salga mal no perjudica necesariamente el potencial del canal; también advierte que publicar frecuentemente vídeos con mala respuesta sí puede afectar al rendimiento con el tiempo. La formulación del repositorio debería conservar el consejo editorial, pero dejar clara esa distinción.

Ayuda de YouTube
+1



Otros problemas que afectan a la coherencia y a la operación
5. El diseño de audio permite excepciones en una plantilla, pero las exige en otro documento.

En roles/04-direccion-y-edicion.md se establece que el montaje no puede darse por terminado si solo hay voz: exige preparar música y efectos, e indica que deben solicitarse, generarse o descargarse si faltan.

Sin embargo, la plantilla 03-storyboard-y-edicion.md y el contrato de AGENTS.md permiten eliminar una pista cuando no aporta valor al género, siempre que se justifique. Para un vídeo ambient, musical o un screencast limpio, esas instrucciones pueden llevar a dos decisiones diferentes.

La regla común debería ser: es obligatorio conseguir un resultado sonoro adecuado, medido y escuchado; no es obligatorio introducir pistas que el formato no necesita.

Hay además una cuestión técnica con los −23 LUFS. La recomendación EBU R 128 utiliza ese objetivo para la sonoridad del programa completo, no como objetivo universal de la pista aislada de voz. El framework debe separar el nivel de la locución, la mezcla entre pistas y el objetivo de sonoridad del master final. La documentación oficial de la EBU lo especifica expresamente.

EBU Technology & Innovation
+1




6. La plantilla de estado puede permitir saltarse verificaciones de hechos en ficción.

En 00-estado-produccion.md aparece N/A si Ficción en la fase de investigación previa, y el campo Régimen de Veracidad agrupa «Ficción / Relax» frente a «Divulgación Factual» y «Zona Roja YMYL».

En cambio, las plantillas 02-guion.md y 06-fuentes-y-verificacion.md aclaran correctamente que una ficción no queda exenta de verificar hechos reales que mencione. La contradicción importa para relatos históricos, ficción basada en ciencia real, vídeos de relax con afirmaciones médicas y otros formatos híbridos.

Lo más claro sería separar dos cosas: género/formato del vídeo y riesgo factual de su contenido. Y el N/A debería permitirse únicamente cuando el contenido sea puramente ficticio y no formule afirmaciones sobre la realidad.

7. El procedimiento de copia al sandbox deja más vías abiertas de las que su explicación sugiere.

El bloque rsync del README principal reconoce que rsync no aplica automáticamente las reglas de .gitignore, pero su lista manual de exclusiones solo cubre determinados patrones de secretos y algunas extensiones de audio/vídeo.

Por ejemplo, no excluye expresamente .npmrc, archivos credentials.json ni otros posibles ficheros de credenciales. Y, entre los medios, no incluye globalmente todas las extensiones que sí aparecen en el .gitignore, como .mkv, .webm, .m4v, .flac o .aac. Estos ficheros pueden copiarse si están fuera de las carpetas descartadas.

No he encontrado evidencia de que el repositorio contenga actualmente esas credenciales; el riesgo está en el procedimiento, si se ejecuta sobre un árbol local que las tenga. Antes de usarlo para crear otro repositorio, reforzaría la copia mediante una lista explícita de contenido permitido, filtros probados y una comprobación previa de secretos.

8. El verificador de contrato es útil, pero valida menos de lo que podría parecer.

El código de check-contrato.sh comprueba la presencia de archivos, algunos estados, la correspondencia de bloques y tiempos entre guion y storyboard, y determinadas etiquetas del catálogo de herramientas. Eso sí aporta valor.

Pero he detectado límites concretos:
- La comprobación del estado no valida el valor completo. Como busca nombres permitidos mediante coincidencias de texto, un valor con un sufijo inválido que contenga NO_INICIADO puede pasar.
- Si falta por completo la línea de estado, esa comprobación puede dar por bueno el archivo: no encontrar una línea inválida no equivale a haber validado una línea válida.
- Los fixtures del script de pruebas usan intencionadamente varios archivos de contenido vacío para representar un árbol válido. Eso comprueba la estructura, no la evidencia real ni la completitud de las fases.
- No valida por sí solo todas las casillas de las fases, la validez de las aprobaciones, la trazabilidad legal o si el master satisface la hoja de aceptación.
- No he encontrado un workflow de GitHub Actions que ejecute estas pruebas automáticamente; tampoco he podido ejecutar la suite en tu Mac ni contra una producción real.
No considero esto un defecto inesperado: los documentos de diseño de youtube-shell ya distinguen entre un verificador documental y un gate que intercepte operaciones. Pero sí significa que el repositorio actual tiene controles parciales, no una barrera técnica que impida al agente saltárselos.

La siguiente mejora del script debería incluir pruebas para el estado PUBLICADO, estados ausentes o malformados y contenido obligatorio vacío. Después, habría que decidir qué verificaciones se ejecutan automáticamente en cada cambio y cuáles corresponden a un futuro runtime.

9. Hay una referencia que afirma preservar un ancla que no existe como sección real.

En AGENTS.md, la nota «Ancla preservada: AGENTS.md §04.7: Heurísticas vs. Reglas Estrictas» no coincide con el contenido de ese apartado, que trata las directivas específicas para Shorts. La definición de heurísticas frente a reglas estrictas sí está en roles/02 §5–6. La referencia de banco-de-titulos.md debería apuntar claramente a esa definición canónica o crearse una sección real con un identificador estable.

Es una corrección pequeña, pero en una oficina guiada por referencias y contratos conviene que los nombres y las ubicaciones no sean ambiguos.

10. La atribución de ciertas afirmaciones de plataforma sigue necesitando más rigor.

Además de las afirmaciones sobre el algoritmo ya señaladas, contingencia-y-politicas-sensibles.md atribuye a una «Política Oficial YouTube» el uso de clasificadores NLP para detectar desinformación médica y financiera, pero no aporta ahí una fuente oficial que sustente ese mecanismo concreto. La política sobre desinformación puede documentarse; el funcionamiento interno específico no debe presentarse como confirmado sin una fuente directa.

La casilla de divulgación de IA en 02-guion.md también describe la música generada por IA como un caso que requiere declaración, sin conservar toda la precisión del criterio oficial: YouTube menciona la música generada por IA cuando es el foco principal del vídeo, además de otros supuestos de contenido sintético realista. Conviene reflejar ese alcance o etiquetar explícitamente una regla interna más conservadora.
