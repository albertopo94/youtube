# Plantilla: Registro Integral de Procedencia, Licencias y Activos de IA

Cada recurso incorporado a la producción (sea clip de stock, imagen generada por IA, voz sintética/TTS, música o tipografía) debe contar con un registro formal de procedencia, condiciones comerciales y comprobantes legales.

> **¿Por qué es indispensable?**  
> Si meses después surge una reclamación de derechos de autor, reclamos de Content ID o una auditoría del Programa de Socios de YouTube (YPP), este registro acredita fehacientemente qué herramienta, plan, licencia o atribución ampara cada segundo del video.

---

## 1. Material de Stock y Archivo Externo (Video y Fotos)

| Archivo Local | Plataforma / Repositorio | URL Original del Asset | Creador / Autor | Licencia Exacta y Versión | Permiso Comercial Vigente | ¿Requiere Atribución? | Texto Exacto de Atribución (para descripción de YouTube) | Evidencia de Términos (Captura o Enlace Guardado) |
| :--- | :--- | :--- | :--- | :--- | :---: | :---: | :--- | :--- |
| `clips/intro_paisaje.mp4` | Coverr (web) | `https://coverr.co/videos/...` | Creador A | Coverr Free License (18/10/2026) | Sí | No | N/A | `licencias/coverr_terminos_2026.png` |
| `clips/documento_historico.jpg` | Wikimedia Commons | `https://commons.wikimedia.org/...` | Archivo Histórico | CC-BY 4.0 | Sí | Sí | *"Imagen por [Autor] vía Wikimedia (CC-BY 4.0)"* | `licencias/cc_by_4_terms.pdf` |

---

## 2. Activos Visuales Generados por IA (Midjourney, Flux, DALL-E, etc.)

| Archivo Local | Herramienta / Modelo IA | Plan y Cuenta Utilizada | Términos Comerciales del Plan | Prompt Utilizado | Seed / Parámetros | ¿Muestra Personas / Hechos Reales? | ¿Requiere Declaración IA en YouTube Studio? |
| :--- | :--- | :--- | :--- | :--- | :--- | :---: | :---: |
| `thumbnails/hero_render.png` | Flux 1.1 Pro via Replicate | Cuenta Comercial de Pago | Comercial permitido (Términos API Replicate) | `"Hyperrealistic close up..."` | Seed: 48192 | No (ficción pura) | No |
| `clips/ia_broll_escena3.mp4` | Runway Gen-3 Alpha | Plan Pro de Pago | Derechos comerciales completos de salida | `"Cinematic drone shot of..."` | Gen: 2910 | No | No |

---

## 3. Locución y Voz Sintética / TTS (ElevenLabs, OpenAI, etc.)

| Archivo de Audio Local | Proveedor / Servicio | Modelo y Nombre de Voz | Tipo de Voz (Biblioteca vs. Clonada Propia vs. Tercero) | Plan de Cuenta | ¿Otorga Derechos Comerciales? | ¿Imita a una Persona Real Conocida? | ¿Requiere Declaración en YouTube Studio? |
| :--- | :--- | :--- | :--- | :--- | :---: | :---: | :---: |
| `audio/locucion_master.wav` | ElevenLabs | Eleven Multilingual v2 / Voz "Adam" | Voz estándar de la biblioteca | Plan Creator (de pago) | Sí | No | No |
| `audio/locucion_doblaje.wav` | ElevenLabs | Instant Voice Clone | Voz clonada del creador (consentimiento propio) | Plan Pro | Sí | No (voz propia) | No |

---

## 4. Música y Efectos Sonoros (SFX)

| Archivo Local | Plataforma / Proveedor | Título de Pista / Artista | Tipo de Licencia / Suscripción | Código de Clearing Content ID (si aplica) | ¿Requiere Atribución en Descripción? | Texto de Atribución Requerido |
| :--- | :--- | :--- | :--- | :--- | :---: | :--- |
| `audio/musica_fondo.mp3` | YouTube Audio Library | Track X / Artista Y | YouTube Audio Library License | Exento (libre de reclamos en YouTube) | No | N/A |
| `audio/tema_principal.mp3` | Epidemic Sound / Artlist | Track Z / Artista W | Licencia Comercial de Sincronización | Canal vinculado / ID: 948123 | No | N/A |

---

## 5. Tipografías y Gráficos / Identidad

| Elemento / Fuente | Nombre de la Tipografía | Origen / Diseñador | Licencia (OFL, Comercial, Adobe Fonts) | Uso Comercial Permitido |
| :--- | :--- | :--- | :--- | :---: |
| Tipografía Miniaturas | Montserrat Black | Google Fonts | SIL Open Font License 1.1 | Sí |
| Gráficos Motion | Pack Infografía Vector | Envato Elements | Licencia individual para este video | Sí |

---

## Directrices de Seguridad y Cumplimiento
1. **Evidencias en Git sin medios pesados:** Almacenar únicamente los comprobantes documentales (capturas de términos, licencias en PDF/texto) en `licencias/` o `assets/licencias/`. Los archivos de video y audio pesados quedan fuera del repositorio Git mediante `.gitignore`.
2. **Transferencia obligatoria al entregable final:** Todo crédito o atribución requerida por una licencia (ej. Creative Commons o bibliotecas abiertas) debe transferirse automáticamente a `entregable-final.md` para incluirse en la descripción pública del video en YouTube.
3. **Modelos no comerciales (CC-BY-NC):** Queda prohibido utilizar herramientas, modelos o pesos clasificados como no comerciales (ej. modelos de investigación abierta con licencias NC) en canales que aspiren a monetizar en YouTube.
