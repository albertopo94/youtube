# Mis Canales (Producción Activa)

Esta carpeta contiene los canales formalmente aprobados y en operación activa.

## Estructura recomendada para cada canal:
```text
mis-canales/[nombre-canal]/
├── branding/                      # Logo, banner, tipografías, bio, paleta de colores
│   └── banner.png
├── videos-en-estudio/             # Pipeline activo de videos en producción
│   └── video-001-slug/            # Usar la plantilla _framework/plantillas/pipeline-video-template/
│       ├── 01-packaging.md
│       ├── 02-guion.md
│       ├── 03-storyboard-y-edicion.md
│       ├── 04-registro-recursos.md
│       └── 05-metricas-retencion.md
└── videos-publicados/             # Historial de videos subidos a YouTube
    └── video-001-slug/            # Carpeta movida tras publicación con sus métricas finales
```
