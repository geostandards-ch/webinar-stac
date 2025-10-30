#import "./globals.typ": *
#import "@preview/cades:0.3.0": qr-code

#slide[
  #set page(header: none, footer: none, background: none)
  #set align(horizon)


  = STAC et OGC API Standards
  Pirmin Kalberer, Sourcepole AG, Zürich

  #speaker-note(```md
    - Spécialistes SIG
    - Introduction à STAC et aux normes API OGC associées
  ```)
]

#slide[
  #set align(horizon)

  #place(top+right, dy: -80pt, image("STAC-01.png", width: 30%))

  = STAC
  == SpatioTemporal Asset Catalogs
  ==

Organisation et description
De données géographiques et/ou temporelles.


  #link("https://stacspec.org/")[ _stacspec.org_ ]

Version 1.0: 25.5.2021 (API 1.0: 25.7.2023)
]

== Spécification STAC

- *STAC Catalog*: Organisation des Items, collections et catalogues

- *STAC Collection*: Collection d'éléments avec méta- données communes (étendues, licence, mots-clés, ...)

- *STAC Item*: Produit de données unique avec liens vers des ressources

- *STAC Asset*: Fichier (raster, vecteur, métadonnées, ...)

  _{ Catalog } $->$ { Collection }  $->$ { Item }  $->$ { Asset }_

#speaker-note(```md
  - Assets (Items) (href, media_type, roles, etc.)
  - Items / Asset Typen (media_type):
    - TIFF, COG, JPEG, PNG, ZARR, ...
    - GeoJSON, GeoPackage, FlatGeobuf, GeoParquet, XTF, ...
    - PDF, KML, QLR, ...
```)

== Caractéristiques STAC

- Format: JSON
- Fichier unique ou liens vers des fichiers de collection, fichiers d'éléments
- Liens avec Roles
- Extensions
  - Projection
  - Raster
  - Landsat, SAR, ...
  - #link("https://stac-extensions.github.io")[ _stac-extensions.github.io_ ]

#speaker-note(```md
  - Links (href (URL), roles, etc.)
  - Asset Roles: data, thumbnail, overview, metadata, ...
  - Links Roles: self, parent, child, root, next, item, collection, service, etc.
  - Raster extension: Des rubans

```)

== STAC API

- Core + API - Features
- Recherche
- Extensions:
  - Agrégation, tri, transaction, ...

#speaker-note(```md
  - Core: Rechercher dans le catalogue, fonctionnalités : = Fonctionnalités OGC API
  - Aggregation: aggregated data over a search
```)

== Katalog Demo (HTML/JSON)

#align(center, link("https://geoservice.dlr.de/eoc/ogc/stac/v1/", image("Screenshot-HTML-Catalog.jpg", width: 70%)))

#speaker-note(```md
  Collections -> Quicklook Products
  https://geoservice.dlr.de/eoc/ogc/stac/v1/collections/ENMAP_HSI_L0_QL?f=json
```)

== Diffusion

- Planet Labs, Maxar, ...
- NASA, ESA, Copernicus, ...
- Microsoft Planetary Computer, Google Earth Engine...
- Panoramax, ...
- data.geo.admin.ch, geodienste.ch

- #link("https://stacindex.org/")[ _stacindex.org_ ]

#speaker-note(```md
- Entreprises privées Observation de la Terre / Images satellites
- Panoramax : environnement OSM, photos au niveau de la rue / Images de rues
```)


== STAC Tools

- Clients
  - PySTAC, pystac-client, stactools, ...
  - R, ligne de commande, ...
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

- OGC API - Records (succession CSW)
- OGC API - Features (succession WFS)

== OGC API Records

- Version 1.0: 2.5.2025
- Grand chevauchement avec STAC
  - STAC Item $->$ Record
  - STAC Collection $->$ Record Collection
  - STAC Catalog $->$ Record Collection

#speaker-note(```md
  https://github.com/stac-utils/stac-crosswalks/tree/master/ogcapi-records`
```)

== OGC API Features

- Version 1.0: 14.10.2019
- Accès direct aux différentes fonctionnalités \
  (géométrie + attributs)
  - Métadonnées

  - "STAC API specification is fully aligned with OGC API - Features Version 1.0"

  #speaker-note(
  ```md
  - The STAC API extends the OGC API - Features - Part 1: Core with additional web service endpoints and object attributes.
  ```
  )

== eCH-0056

- Services de téléchargement
 - STAC et, en option, STAC-API
  - INTERLIS-XTF Support
- Services de téléchargement à accès direct
  - OGC Web Feature Service (WFS)
    ou OGC API Features Part 1+2
  - OGC Web Coverage Service (WCS)
- service de recherche
  - OGC Catalog Service Web (CSW)

#speaker-note(
```md
- Profil d'application Géoservices
- Avenir probable CSW -> OGC API Records
```
)

== STAC - Résumé

- Accès au catalogue des géodonnées (système de fichiers ou Web)
- Conforme aux normes OGC
- Utilisable sans service
- Services $->$ formats optimisés pour le cloud ?
- Large diffusion
- Bonne prise en charge des outils

#slide[
  #set page(header: none, footer: none, background: none)

== STAC und OGC API Standards
_Pirmin Kalberer, Sourcepole AG, Zürich_

#v(1em)

Documents:
- Présentation PowerPoint
- Documents pratiques (exercices pratiques)
#link("https://github.com/geostandards-ch/webinar-stac")[ _github.com/geostandards-ch/webinar-stac_ ]

#v(1em)
#place(left, qr-code("https://github.com/geostandards-ch/webinar-stac", width: 3cm,
color: bg-color.darken(50%)))

]
