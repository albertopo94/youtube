# Estudio y Disposición — Fuente 6 de Video con IA: Producción de Series Animadas y Sets Reutilizables

**Archivo fuente:** `_framework/referencias/produccion-series-animadas-ia-transcripcion.md` (`Creación de Dibujos Animados y Series con IA: Flujo Asset-First de Localizaciones`, archivado desde la raíz)  
**Fecha de inicio:** 2026-10-27  
**Objetivo:** Extraer la metodología de sets de localización multicámara reutilizables y sintaxis de etiquetado explícito de referencias para producciones por episodios o de universo consistente en `roles/04` y `03-storyboard-y-edicion.md`.

---

## Leyenda de Disposición
- ✅ **ADOPTADO:** Se incorpora al framework (roles o plantillas).
- 🟡 **ADAPTADO:** El principio de tagging y plantillas se generaliza de forma agnóstica de software.
- ⚪ **CONSERVADO SIN DUPLICAR:** Ya está cubierto en el framework actual.
- ❌ **RECHAZADO:** No aplica (promesas de 20 min o dependencia exclusiva de Higgsfield/Seed Audio).

---

## Hallazgos y Disposición

### 1. Hojas de Localización Multicámara Reutilizables (*Master Location Sheets*)
- **Evidencia:** Al igual que en series clásicas de animación (ej. la casa de Los Simpson), los escenarios recurrentes del canal no deben generarse desde cero para cada plano o episodio. Se construye una **hoja de localización maestra** y se exportan de antemano 4 o 5 tiros de cámara estandarizados de ese mismo espacio (plano hacia el sofá, tiro hacia la ventana, ángulo contrapicado, vista cenital). Al producir un nuevo video o escena, se combinan las referencias de personajes con estos fondos ya aprobados, garantizando coherencia absoluta y reduciendo drásticamente el tiempo de generación.
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3 y `03-storyboard-y-edicion.md` §1.1, formalizar el protocolo de **Hojas de Localización Multicámara Reutilizables** para universos y canales con escenarios recurrentes.

### 2. Sintaxis de Etiquetado Explícito de Referencias en Prompts Complejos
- **Evidencia:** En escenas con múltiples personajes y fondos, redactar instrucciones en prosa abierta ("el viajero le habla al herrero") provoca que la IA confunda identidades o cruce voces. Se debe emplear una sintaxis de asignación explícita donde cada sujeto, fondo y voz se enlace inequívocamente con su slot de referencia (`[Sujeto @Ref_P1] en [Ubicación @Ref_Fondo_Angulo_A] dice 'texto' con [Voz @Ref_Voz_1]`).
- **Disposición:** ✅ **ADOPTADO.**
  - *Acción:* En `_framework/roles/04-direccion-y-edicion.md` §3, incorporar la pauta de **Sintaxis de Etiquetado Explícito de Referencias** para prompts de video multi-personaje y locución.

### 3. Filosofía de Producción de Estudio vs. Generación Aislada
- **Evidencia:** Los estudios profesionales no empiezan animando tomas aisladas; primero crean la biblia visual, personajes, locaciones y voces, y luego producen historias sobre esa base.
- **Disposición:** ⚪ **CONSERVADO SIN DUPLICAR.**
  - *Motivo:* Coincide con nuestro pipeline *Asset-First* y la arquitectura modular del framework.
