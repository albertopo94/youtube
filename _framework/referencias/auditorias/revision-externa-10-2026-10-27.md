Los problemas que aún corregiría
1. Hay una contradicción entre el rol y la plantilla de producción
Esta es mi prioridad número uno.

En el rol de dirección, ahora la regla de aislamiento acústico es una recomendación y contempla una excepción cuando se desea generar música integrada. Sin embargo, en la plantilla de storyboard siguen apareciendo estas instrucciones:
- «Incluir siempre» el prompt que prohíbe la música.
- Limitar obligatoriamente las iteraciones de imagen a un máximo de dos y reiniciar si la imagen no encaja.
Están en las líneas 89–90, tanto en la plantilla canónica como en la copia de la plantilla de canal.

Qué haría: sincronizar ambas copias con las nuevas recomendaciones del rol, conservar las excepciones por formato e incluir sus identificadores VID-IA-007 y VID-IA-008. Un agente que trabaja directamente en la plantilla no debería recibir instrucciones más estrictas que las de la política canónica.
2. La clasificación de la evidencia no está completamente alineada
En gobernanza-evidencia.md, la dimensión «Fundamento y Validación» mezcla categorías como FUENTE, HIPÓTESIS, PILOTO, REPETIDA y CONTRATO VERIFICADO.

Pero el registro central ya separa dos columnas: Fundamento y Validación Propia.

Eso crea una ambigüedad. ¿PILOTO es un tipo de fundamento o un estado de validación? ¿Y CONTRATO VERIFICADO describe el origen de una regla o el mecanismo que demuestra que se cumple?

Mi recomendación es mantener las tres dimensiones principales, pero definir dos subcampos dentro de la primera:
Campo	Valores orientativos
Tipo de fundamento	FUENTE, HIPÓTESIS, DERIVACIÓN, CONTRATO INTERNO
Validación propia	SIN_PROBAR, PILOTO_PARCIAL, PILOTO_VALIDADO, REPETIDA, VERIFICADA_DETERMINÍSTICAMENTE

No son necesariamente los nombres definitivos, pero sí la separación conceptual que necesitas. De esa forma, el registro y el reglamento utilizarán el mismo modelo.
3. GATE-003 está clasificada como un control más sólido de lo que demuestra el verificador
En el registro, la verificación factual con DOIs en temas YMYL aparece como:
- Fundamento: CONTRATO VERIFICADO.
- Validación propia: PILOTO_PARCIAL.
- Fuerza operativa: COMPUERTA.
Sin embargo, el check-contrato.sh comprueba estados, documentos, timecodes y el catálogo de herramientas. No verifica de forma determinista que las afirmaciones de un guion estén realmente respaldadas por DOI o fuentes primarias.

Esto no significa que la verificación factual no pueda ser obligatoria. Puede ser una compuerta editorial manual, revisada por una persona. Lo que falta es declarar expresamente esa modalidad.

Para resolverlo, haría una de estas dos cosas: documentar GATE-003 como compuerta humana con condición de aceptación, verificador, evidencia y excepción autorizada; o crear un control automático para las condiciones que realmente puedan comprobarse mediante código. También definiría formalmente PILOTO_PARCIAL, que aparece en el registro pero no figura como nivel independiente en la tabla normativa.
4. Falta validar automáticamente el propio registro
El nuevo sistema todavía está principalmente en documentación. En este commit no has modificado check-contrato.sh, su batería de pruebas ni el workflow de CI para comprobar el registro de técnicas.

Eso significa que, hoy, un cambio podría introducir un identificador duplicado, una técnica sin ubicación canónica o una compuerta sin los campos necesarios sin que el verificador actual detectase necesariamente el problema.

Además, en el rol de dirección ya aparece VID-IA-011 para el prefijo de estilo fijo, pero ese identificador no tiene su propia entrada en el registro central.

Qué añadiría al CI:
- Verificar que los IDs son únicos y que cada ID usado en los roles tiene una entrada en el registro.
- Comprobar que las ubicaciones canónicas existen.
- Validar los valores permitidos de fundamento, estado de validación y fuerza operativa.
- Exigir los cuatro campos de una compuerta: condición de aceptación, verificador, evidencia y excepción autorizada.
El código puede comprobar que estos campos existen y tienen contenido. No debe decidir automáticamente si una afirmación editorial es verdadera.

No he podido confirmar el resultado de ejecución de CI de este último commit; por tanto, no doy las pruebas por superadas.
