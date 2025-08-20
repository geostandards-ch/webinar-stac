#import "./globals.typ": *
#import "@preview/cades:0.3.0": qr-code

#slide[
  #set page(header: none, footer: none, background: none)
  #set align(horizon)

  Webinar
  = STAC und OGC API Standards
  Pirmin Kalberer, Sourcepole AG, Zürich
]

#slide[
  #set align(horizon)

  #place(top+right, dy: -80pt, image("STAC-01.png", width: 30%))

  = STAC
  == SpatioTemporal Asset Catalogs
  ==

  Organisation und Beschreibung
  geografischer und/oder zeitlicher Daten.
  
  #link("https://stacspec.org/")[ _stacspec.org_ ]

Version 1.0: 25.5.2021 (API 1.0: 25.7.2023)
]

== STAC Spezifikation

- *STAC Catalog*: Organisation von Items, Collections und Catalogs

- *STAC Collection*: Sammlung von Items mit gemeinsamen Metadaten (Extents, Lizenz, Keywords, ...)

- *STAC Item*: Einzelnes Datenprodukt mit Links zu Assets

- *STAC Asset*: Datei (Raster, Vektor, Metadaten, ...)
  
  _{ Catalog } $->$ { Collection }  $->$ { Item }  $->$ { Asset }_

#speaker-note(```md
  - Assets (Items) (href, media_type, roles, etc.)
  - Items / Asset Typen (media_type):
    - TIFF, COG, JPEG, PNG, ZARR, ...
    - GeoJSON, GeoPackage, FlatGeobuf, GeoParquet, XTF, ...
    - PDF, KML, QLR, ...
```)

== STAC Eigenschaften

- Format: JSON
- Single File oder Links zu Collection Files, Item Files
- Links mit Roles
- Extensions
  - Projection
  - Raster
  - Landsat, SAR, ...
  - #link("https://stac-extensions.github.io")[ _stac-extensions.github.io_ ]

#speaker-note(```md
  - Links (href (URL), roles, etc.)
  - Asset Roles: data, thumbnail, overview, metadata, ...
  - Links Roles: self, parent, child, root, next, item, collection, service, etc.
  - Raster extension: Bänder
```)

== STAC API

- Core + API - Features
- Suche
- Extensions:
  - Aggregation, Sortierung, Transaktion, ...

#speaker-note(```md
  - Core: Durchsuchen von Katalogin, Features: = OGC API Features
  - Aggregation: aggregated data over a search
```)

== Katalog Demo (HTML/JSON)

#align(center, link("https://geoservice.dlr.de/eoc/ogc/stac/v1/", image("Screenshot-HTML-Catalog.jpg", width: 70%)))

#speaker-note(```md
  Collections -> Quicklook Products
  https://geoservice.dlr.de/eoc/ogc/stac/v1/collections/ENMAP_HSI_L0_QL?f=json
```)

== Verbreitung

- Planet Labs, Maxar, ...
- NASA, ESA, Copernicus, ...
- Microsoft Planetary Computer, Google Earth Engine...
- Panoramax, ...
- data.geo.admin.ch, geodienste.ch

- #link("https://stacindex.org/")[ _stacindex.org_ ]

#speaker-note(```md
  - Privatfirmen Erdbeobachtung / Satellitenbilder
  - Panoramax: OSM-Umfeld, street-level pictures / Straßenbilder
```)

== STAC Tools

- Clients
  - PySTAC, pystac-client, stactools, ...
  - R, Kommandozeile, ...
  - STAC Browser
  - QGIS (_Demo_), ArcGIS Pro, ...
- Services
  - pygeoapi, pycsw
  - pgSTAC
- #link("https://stacindex.org/")[ _stacindex.org_ ]

#speaker-note(```md
  - PySTAC - read + write *static* catalogs
```)

== OGC API Standards

- OGC API - Records (Nachfolge CSW)
- OGC API - Features (Nachfolge WFS)

== OGC API Records

- Version 1.0: 2.5.2025
- Grosse Überlappung mit STAC
  - STAC Item $->$ Record
  - STAC Collection $->$ Record Collection
  - STAC Catalog $->$ Record Collection

#speaker-note(```md
  https://github.com/stac-utils/stac-crosswalks/tree/master/ogcapi-records`
```)

== OGC API Features

- Version 1.0: 14.10.2019
  - Direktzugriff auf einzelne Features \
    (Geometrie + Attribute)
  - Vektordaten
  - Metadaten analog API Features & STAC
  - "STAC API specification is fully aligned with OGC API - Features Version 1.0"

== eCH-0056

- Downloaddienste
  - STAC und optional STAC-API
  - INTERLIS-XTF Support
- Direktzugriffs-Downloaddienste
  - OGC Web Feature Service (WFS)
    oder OGC API Features Part 1+2
  - OGC Web Coverage Service (WCS)
- Suchdienst
  - OGC Catalog Service Web (CSW)

#speaker-note(
```md
- Anwendungsprofil Geodienste
- Zukunft wohl CSW -> OGC API Records
```
)

== STAC - Zusammenfassung

- Katalogzugriff auf Geodaten (Filesystem oder Web)
- Verwandt mit OGC Standards
- Nutzbar ohne Dienst
  - Dienste $->$ cloud-optimierte Formate ?
- Grosse Verbreitung
- Gute Toolunterstützung

#slide[
  #set page(header: none, footer: none, background: none)

== STAC und OGC API Standards
_Pirmin Kalberer, Sourcepole AG, Zürich_

#v(2em)

Unterlagen:
  - Folien
  - Hands-On Unterlagen (Praktische Übungen)
  #link("https://github.com/geostandards-ch/webinar-stac")[ _github.com/geostandards-ch/webinar-stac_ ]

#place(right, qr-code("https://github.com/geostandards-ch/webinar-stac", width: 3cm,
color: bg-color.darken(50%)))

]
