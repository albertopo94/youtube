Los asuntos que todavía no daría por cerrados
A. PUBLICADO se acepta también en vídeos que siguen en producción
Corrección pendiente


Has corregido el estado terminal y mejorado la validación de estados en check-contrato.sh.

Sin embargo, hay un defecto en la propia prueba nueva: en test-check-contrato.sh, fixture 2, el estado PUBLICADO se introduce dentro de mis-canales/canal-x/videos-en-estudio/01-video/ y se espera que el verificador devuelva éxito.

El contrato dice que PUBLICADO es terminal después de publicar y archivar el vídeo. No debería aceptarse indiscriminadamente en cualquier ubicación.

Corrección concreta: el verificador debe comprobar también la ubicación. Un vídeo en videos-en-estudio/ no debería poder declararse PUBLICADO; un vídeo archivado en videos-publicados/ sí. Añade dos pruebas: una para el caso válido y otra para el inválido.

B. La plantilla de estado conserva la antigua regla de audio
Corrección pendiente


El rol de edición, AGENTS.md y 03-storyboard-y-edicion.md ya distinguen correctamente entre el nivel de voz, la mezcla y la sonoridad del master final. Sin embargo, 00-estado-produccion.md, apartado de inspección técnica, todavía incluye este perfil:
- A1: voz a −23 LUFS.
- A2: música con ducking a niveles predeterminados.
- A3: SFX.
Admite variaciones justificadas, pero mantiene una contradicción conceptual: −23 LUFS es la referencia EBU R 128 para la sonoridad del programa, no un objetivo universal para una pista aislada de voz.

EBU Technology & Innovation




Corrección concreta: sustituye esa línea por una comprobación del audio adecuado al género, la inteligibilidad, los picos y la escucha de control; exige que el objetivo integrado y el pico del master se registren en la hoja de aceptación del vídeo. Las pistas de música y SFX deben ser opcionales cuando no aporten valor.

Esta plantilla canónica y sus copias están sincronizadas, por lo que basta con corregir la fuente y volver a comprobar los hashes.

C. El comando de copia al sandbox sigue teniendo riesgo de borrado
Corrección de seguridad pendiente


Has mejorado bastante el procedimiento del README: incorpora dry-run, nuevas exclusiones y revisión antes de publicar la copia. Es una mejora real.

No obstante, el comando mantiene --delete y la instrucción posterior propone repetirlo sin -n. En ese caso se activaría el borrado de archivos que existan únicamente en youtube-prueba/ y que no estén protegidos por las exclusiones. Eso puede eliminar trabajo generado dentro del sandbox.

Además, la lista de exclusiones aún no coincide con todo lo ignorado por .gitignore: por ejemplo, faltan raw_footage/, cache/, *.aiff y *.flv.

Corrección concreta: elimina --delete del procedimiento normal de copia. Si necesitas sincronización destructiva, hazla mediante un procedimiento separado que revise explícitamente los borrados. Completa también las exclusiones o usa una lista de contenido permitido que minimice lo que se copia.

D. youtube-shell todavía no está alineado con la nueva revisión del framework
Compatibilidad entre repositorios


La decisión de mantener el producto en un repositorio separado está bien resuelta en PENDIENTES.md. He comprobado que existe albertopo94/youtube-shell, con motor de estados, almacenamiento con huellas y controles de runtime.

Sin embargo, hay dos matices importantes:

Primero, el estado del producto está expresado con demasiada fuerza. PENDIENTES.md dice que se distribuye como paquete de Pi, pero el propio README de youtube-shell lo describe como pre-MVP y docs/progreso.md todavía deja pendiente el empaquetado como paquete de Pi. Lo correcto sería decir que el producto existe y se desarrolla con ese objetivo; no que ya está distribuido como producto terminado.

Segundo, las plantillas del consumidor conservan reglas antiguas. Por ejemplo, youtube-shell/templates/pipeline-video/00-estado-produccion.md aún tiene el esquema anterior de régimen de veracidad y no contempla PUBLICADO; su plantilla de storyboard conserva la antigua regla de −23 LUFS para voz.

Esto no significa que haya que copiar automáticamente cada documento completo a youtube-shell: ese proyecto puede tener plantillas reducidas y adaptadas al runtime. Pero tiene que registrar qué revisión del framework consume y migrar las reglas que ahora resultan incompatibles. La separación de responsabilidades es correcta; el contrato entre ambos repositorios aún necesita esta última alineación.


3. ¿El verificador está mejor?
Sí. El cambio es sustancial: ahora exige una declaración exacta de estado, comprueba que exista y añade pruebas para estados malformados, bloques ausentes, tiempos inconsistentes y estados del catálogo.

El registro de revisión del propio repositorio indica ALL FIXTURES PASS (9/9). He inspeccionado las pruebas y sus condiciones, aunque no pude volver a ejecutar los scripts localmente desde esta sesión.

Queda una limitación distinta: el árbol de main no contiene un workflow de GitHub Actions, por lo que no veo evidencia de que esas pruebas se ejecuten automáticamente en cada cambio. Esto no invalida la mejora; simplemente significa que el resultado registrado no constituye todavía una protección continua del repositorio.

También es correcto que el checker no intente certificar la originalidad, la legalidad de cada licencia o la calidad del master solo a partir de Markdown. Para eso necesitas controles especializados y, en el caso de youtube-shell, sus verificadores de runtime.
