# Mis Canales (Producción Activa)

Esta carpeta contiene los canales formalmente aprobados y en operación activa.

## Estructura canónica para cada canal:
```text
mis-canales/[nombre-canal]/
├── backlog-ideas.md              # 📥 Ideas aprobadas en cola + 🚫 Ideas vetadas para este canal
├── branding/                      # Logo, banner, tipografías, bio, paleta de colores
│   └── banner.png
├── banco-visual.md                # Estilos visuales específicos de este canal
├── referentes.md                  # Canales benchmark y competencia de este nicho
├── videos-en-estudio/             # Pipeline activo de videos en producción
│   └── video-001-slug/            # Suite modular completa (00 a 06):
│       ├── 00-estado-produccion.md       # Estado persistente y siguiente acción permitida
│       ├── 01-packaging.md               # 5 títulos + variantes para prueba nativa
│       ├── 02-guion.md                   # Guion por bloques [Bxx] y puerta de originalidad
│       ├── 03-storyboard-y-edicion.md    # Animatic preliminar, tabla de escenas y diseño sonoro
│       ├── 04-registro-recursos.md       # Registro integral de licencias, stock, IA y música
│       ├── 05-metricas-retencion.md      # Impresiones, fuentes, retención y Test & Compare
│       └── 06-fuentes-y-verificacion.md  # Fact-checking: fuentes primarias, DOIs y matices
└── videos-publicados/             # Historial de videos subidos a YouTube
    └── video-001-slug/            # Carpeta trasladada íntegramente tras publicación (conserva 00 a 06 + entregable-final.md):
        ├── 00-estado-produccion.md       # Estado final de cierre (PUBLICADO)
        ├── 01-packaging.md               # Packaging original aprobado
        ├── 02-guion.md                   # Guion definitivo de producción
        ├── 03-storyboard-y-edicion.md    # Storyboard y ficha técnica del render master
        ├── 04-registro-recursos.md       # Trazabilidad legal de licencias preservada
        ├── 05-metricas-retencion.md      # Registro continuo de métricas (24h, 7d, 28d)
        ├── 06-fuentes-y-verificacion.md  # Registro de fuentes primarias y fact-checking
        └── entregable-final.md           # Metadata definitiva, URL de YouTube y créditos públicos
```
