# Webinar STAC und verwandte OGC API Standards

Zielpublikum: GIS-Fachleute

Inhalt:
- Vorstellung von STAC (SpatioTemporal Asset Catalogs)
- Einordung und Vergleich mit OGC API Standards
- Material zum Selbststudium

## Webinar und Schulungsunterlagen

* Video
* [Folien (PDF)](./slides/slides.pdf)
* [Schulungsunterlagen](./hands-on/README.md)

## Webinar-Technik

### OBS Studio

* OBS Studio: https://obsproject.com/
* Tutorial: https://diesofortwirkung.de/obs-studio-tutorial/

### Slides

Requirements:
* Typst: https://github.com/typst/typst
* VS Code Plugin (optional): Tinymist Typst
* pdfpc (optional): https://pdfpc.github.io/

Generierung PDF:
`typst compile -f pdf slides.typ`

Liste der installierten Fonts:
`typst fonts`

Export Speaker Notes (pdfpc):
`typst query --root . slides.typ --field value --one "<pdfpc-file>" > slides.pdfpc`

Start Präsentation:
`pdfpc slides.pdf`

In Window-Modudus für Aufnhame mit OBS:
`pdfpc --windowed=both slides.pdf`
