// https://polylux.dev/book/
// https://sitandr.github.io/typst-examples-book/book/
#import "@preview/polylux:0.4.0": *
#import "layout.typ": *
#show: layout

#slide[
  #set align(horizon)

  Webinar
  = STAC und OGC API Standards
  Pirmin Kalberer, Sourcepole AG, Zürich
]

#slide[
  #set align(horizon)

  #place(top+right, image("STAC-01.png", width: 30%))

  = STAC
  == SpatioTemporal Asset Catalogs
  ==


  The STAC specification is a *common language to describe
  geospatial information*, so it can more easily be worked with,
  indexed, and discovered.

  #link("https://stacspec.org/")[ _stacspec.org_ ]
]

#slide[
  = STAC Spezifikation
  =

  - *Item*: Enthält Assets (Files, etc.)

  - *Catalog*: JSON file of links that provides a structure to organize and browse STAC Items

  - *Collection*: Catalog with additional information such as the extents, license, keywords, providers, etc
]

#slide[
  = Aufbau STAC (JSON)
  =

  - Version, Extensions, etc.
  - Collections
    - Collection
      - Assets (Items) (href, media_type, roles, etc.)
      - Links (href, roles, etc.)
    - Links
  - Links

  #note(
    ```md
    - Asset roles: data, thumbnail, overview, metadata,...
    - Link roles: self, parent, child, root, item, collection, service, etc.
    ```
  )

]

#slide[

  = Items / Asset Typen (media_type)
  =

  - TIFF, COG, JPEG, PNG, ZARR, ...

  - GeoJSON, GeoPackage, FlatGeobuf, GeoParquet, ...

  - PDF, KML, ...

  // from https://pystac.readthedocs.io/en/stable/api/media_type.html
]

#slide[
  = STAC Extensions
  =

  - ...
]

#slide[
  = STAC API
  =

  - ...

  #toolbox.pdfpc.speaker-note(
    ```md
    Öffentliche Kataloge:
    - geo.admin.ch
    - geodienste.ch
    ```
  )
]

#slide[
  = Beispiel HTML Ansicht via Service (Demo)
  =

  #toolbox.pdfpc.speaker-note(
    ```md
    https://geoservice.dlr.de/eoc/ogc/stac/v1/
    ```
  )

]

#slide[
  = JSON-Ansicht (Demo)
  =

  Via Service oder statisch.

  #toolbox.pdfpc.speaker-note(
    ```md
    https://geoservice.dlr.de/eoc/ogc/stac/v1/collections/ENMAP_HSI_L0_QL?f=json
    ```
  )
]


#slide[
  = STAC Tools

  - Clients
    - Python
    - QGIS (_Demo_)
    - ...
  - Services
    - pgSTAC
    - ..
  - https://stacindex.org/

  #toolbox.pdfpc.speaker-note(
    ```md
    ```
  )
]

#slide[
  = OGC API Standards
  =

  - OGC API Records (Nachfolge CSW)
    - ...
  - OGC API Features (Nachfolge WFS)
    - ...
]

#slide[
  = eCH-0056
  =

  - ...
]

#slide[
  = Fazit

  - Metadadaten für Geodaten (Filesystem oder http)
  - Verwandt mit OGC Standards
  - Nutzbar ohne Dienst
  - Grosse Verbreitung
  - ...
]

#slide[
  = STAC und OGC API Standards
  _Pirmin Kalberer, Sourcepole AG, Zürich_

  - Unterlagen: https://github.com/geostandards-ch/webinar-stac (TODO: QR-Code)
    - Folien
    - Hands-On Unterlagen (Praktische Übungen)
]
