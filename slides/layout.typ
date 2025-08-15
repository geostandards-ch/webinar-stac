#import "@preview/polylux:0.4.0": *

#let layout(doc) = {
    enable-handout-mode(false)

    let bg-color = rgb("#97beb1")

    set page(
      paper: "presentation-16-9",
      //margin: (top: 30mm, x: 18mm, bottom: 10mm),
      margin: (bottom: 2em, rest: 2em),
      fill: bg-color,
      footer: align(bottom,
        toolbox.full-width-block(
          fill: bg-color.darken(50%),
          height: 35pt,
          inset: 10pt,
      )[
        #set text(fill: bg-color.lighten(50%), size: 20pt, weight: "medium")
        GeoStandards.ch
      ]),
    )

    set text(
      font: "Fira Sans", // Homepage CSS: Poppins (ähnlich: Comfortaa)
      size: 25pt,
      fill: bg-color.darken(80%),
    )

  // set heading.where(
  //       level: 1
  //     )

    //TODO: code
    // #set text(size: 15pt)

    set list(marker: text(fill: bg-color.darken(50%), sym.square.filled), indent: 1em)

  doc
}

#let note(body) = toolbox.pdfpc.speaker-note(body)
