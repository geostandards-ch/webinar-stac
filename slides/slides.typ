#import "./globals.typ": *

// https://touying-typ.github.io/docs/intro

#let geostandards-theme(
  aspect-ratio: "16-9",
  ..args,
  body,
) = {
  set text(
    font: "Fira Sans", // Homepage CSS: Poppins (ähnlich: Comfortaa)
    size: 25pt,
    fill: bg-color.darken(80%),
  )

  set list(marker: text(fill: bg-color.darken(50%), sym.square.filled), indent: 1em)

  show: touying-slides.with(
    config-page(
      paper: "presentation-" + aspect-ratio,
      margin: (top: 4em),
      fill: bg-color,
      background: place(horizon+right, dx: -5%, dy: 10%, image("geostandards-grafik-ch-transp.png", width: 30%)),
      header: align(top,
          block(
            inset: (left: 74pt, rest: 37pt),
            text(1.2em, weight: "bold", utils.display-current-heading(level: 2))
          )
        ),
      footer: align(bottom,
        block(
          width: 100%,
          height: 35pt,
          fill: bg-color.darken(50%),
          inset: 10pt,
        )[
          #set text(fill: bg-color.lighten(50%), size: 20pt, weight: "medium")
          GeoStandards.ch
        ]),
    ),
    // config-common(
    //   slide-fn: slide,
    // ),
    // config-colors(
    //   primary: bg-color.darken(80%),
    //   neutral-lightest: bg-color,
    //   neutral-darkest: rgb("#000000"),
    // ),
    ..args,
  )

  body
}

#show: geostandards-theme

#include "content.typ"
