# Gobernanza de Evidencia y Fuerzas Operativas del Framework

Este documento establece el marco normativo para clasificar el fundamento, la validación y la fuerza operativa de las técnicas, heurísticas y compuertas integradas en el framework.

Su objetivo es evitar la **inflación epistémica**: impedir que una observación empírica de una fuente externa adquiera categoría de ley universal o bloquee el avance de una producción sin evidencia previa demostrada.

---

## 1. Las Tres Dimensiones de una Técnica

Toda instrucción, heurística o control dentro del framework se define a través de tres dimensiones independientes:

```text
               ┌────────────────────────────────────────────────────────┐
               │              DIMENSIÓN A: FUNDAMENTO                   │
               │   (¿Qué sabemos de la técnica y cómo lo sabemos?)     │
               └───────────────────────────┬────────────────────────────┘
                                           │
                                           ▼
               ┌────────────────────────────────────────────────────────┐
               │           DIMENSIÓN B: FUERZA OPERATIVA                │
               │        (¿Qué debe hacer el agente con ella?)           │
               └───────────────────────────┬────────────────────────────┘
                                           │
                                           ▼
               ┌────────────────────────────────────────────────────────┐
               │          DIMENSIÓN C: DECISIÓN HISTÓRICA               │
               │       (¿Qué decidimos hacer con el hallazgo?)          │
               └────────────────────────────────────────────────────────┘
```

---

### Dimensión A: Fundamento y Validación
Responde a: *¿Cuál es el respaldo empírico de esta afirmación en nuestro entorno?*

| Nivel de Fundamento | Definición | Criterio de Verificación |
| :--- | :--- | :--- |
| **`FUENTE`** | Descrita o demostrada por un creador, estudio o plataforma externa. | Archivo original y cita precisa en `_framework/referencias/`. No prueba que funcione en nuestro flujo. |
| **`HIPÓTESIS`** | Propuesta plausible adaptada a nuestra arquitectura, aún no contrastada. | Formulación teórica justificada en el rol correspondiente. |
| **`PILOTO`** | Probada al menos una vez en nuestro propio entorno (hardware y herramientas locales). | Registro auditable de ejecución (archivo, log, render o métrica archivada). |
| **`REPETIDA`** | Resultados consistentes y reproducibles a lo largo de múltiples producciones. | Trazabilidad en dos o más videos publicados o entregas independientes. |
| **`CONTRATO VERIFICADO`** | Invariante técnico o estructural comprobado de forma determinista. | Verificado por script (`check-contrato.sh`), linter o test automatizado de CI. |

---

### Dimensión B: Fuerza Operativa
Responde a: *¿Qué grado de obligatoriedad tiene para el agente o creador?*

| Fuerza Operativa | Comportamiento del Agente | Margen de Desviación |
| :--- | :--- | :--- |
| **`INFORMATIVA`** | Conocimiento contextual o lección aprendida. | No prescribe ninguna acción obligatoria. |
| **`RECOMENDADA`** | Opción predeterminada y aconsejada dentro de su ámbito. | Admite alternativas o excepciones con justificación creativa breve en el documento de trabajo. |
| **`OBLIGATORIA`** | Mandato de diseño dentro del ámbito formalmente definido. | Debe cumplirse; las excepciones requieren autorización expresa del creador. |
| **`COMPUERTA`** | Punto de control estricto que **bloquea el paso de fase** hasta cumplirse. | Cero tolerancia. Requiere evidencia objetiva o aprobación explícita humana. |

---

### Dimensión C: Decisión Histórica de Incorporación
Responde a: *¿Qué dispuso la oficina tras auditar la fuente?* (Utilizada en los ledgers de auditoría):
- **`ADOPTADO`:** Incorporada tal como fue descrita.
- **`ADAPTADO`:** Reformulada para hacerla agnóstica de software o ajustada a nuestra escala.
- **`CONSERVADO SIN DUPLICAR`:** Ya cubierta previamente por el framework.
- **`RECHAZADO`:** Descartada formalmente con motivo documentado.

---

## 2. Requisitos Mandatorios de una COMPUERTA (Gate)

Para que una regla tenga la fuerza de **`COMPUERTA`** y pueda detener la producción de un video o fase, **debe declarar contractualmente cuatro campos**:

1. **Condición de aceptación:** Qué condición inequívoca debe cumplirse.
2. **Verificador:** Quién o qué realiza la comprobación (script bash, checker automatizado, o aprobación editorial explícita del creador).
3. **Evidencia:** Dónde queda registrado físicamente el comprobante del resultado (log de terminal, DOI en `06`, casillas de firma en `00`, o diff limpio).
4. **Excepción autorizada:** Quién puede dispensar la regla y cómo se asienta el motivo.

> **Regla de oro anti-bloqueo artificial:** Un agente **nunca puede convertir una recomendación editorial subjetiva en una compuerta que paralice la producción**. Si el criterio es subjetivo (ritmo, tono, humor), la única compuerta válida es el visto bueno del creador humano.

---

## 3. Ciclo de Promoción de Técnicas

Una técnica no se vuelve obligatoria ni compuerta por el simple hecho de ser redactada en un archivo canónico:

```text
[Hallazgo en Fuente] 
       │
       ▼
 [Auditoría con Decisión (Adoptado / Adaptado)] 
       │
       ▼
 [Registro con Fuerza RECOMENDADA + Ámbito Delimitado] 
       │
       ▼ (Ejecución real en Producción / Piloto)
 [Evidencia Registrada en Disco] 
       │
       ▼ (Consistencia en Múltiples Entregas)
 [Promoción a OBLIGATORIA o COMPUERTA con Visto Bueno Humano]
```
