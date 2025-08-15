# Webinar STAC und verwandte OGC API Standards

Zielpublikum: GIS-Fachleute

Inhalt:
- Vorstellung von STAC (SpatioTemporal Asset Catalogs)
- Einordung und Vergleich mit OGC API Standards
- Material zum Selbststudium

## Webinar und Schulungsunterlagen

* Video (Dauer 10'):
* Slides (PDF):
* Schulungsunterlagen:

## Webinar-Technik

### OBS Studio

* OBS Studio: https://obsproject.com/
* Tutorial: https://diesofortwirkung.de/obs-studio-tutorial/

### Slides

Requirements:
* Typst: https://github.com/typst/typst
* pdfpc (optional): https://pdfpc.github.io/

Generierung PDF:
`typst compile -f pdf slides.typ`

Liste der installierten Fonts:
`typst fonts`

Export Speaker Notes (pdfpc):
`polylux2pdfpc --root .. slides.typ`

Start Präsentation:
`pdfpc slides.pdf`

In Window-Modudus für Aufnhame mit OBS:
`pdfpc --windowed=both slides.pdf`
