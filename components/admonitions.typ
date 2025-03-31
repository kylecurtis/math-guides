// CATPPUCCIN COLORS
// ======================================================
#let latte_lavender = rgb(114, 135, 253)
#let latte_blue = rgb(30, 102, 245)
#let latte_sapphire = rgb(32, 159, 181)
#let latte_sky = rgb(4, 165, 229)
#let latte_teal = rgb(23, 146, 153)
#let latte_green = rgb(64, 160, 43)
#let latte_yellow = rgb(223, 142, 29)
#let latte_peach = rgb(254, 100, 11)
#let latte_maroon = rgb(230, 69, 83)
#let latte_red = rgb(210, 15, 57)
#let latte_mauve = rgb(136, 57, 239)
#let latte_pink = rgb(234, 118, 203)
#let latte_flamingo = rgb(221, 120, 120)
#let latte_rosewater = rgb(220, 138, 120)
#let mocha_crust = rgb(17, 17, 27)

// ADMONITION COLORS
// ======================================================
#let admon-colors = (
  note: latte_blue,
  abstract: latte_sky,
  info: latte_sapphire,
  tip: latte_teal,
  success: latte_green,
  warning: latte_peach,
  failure: latte_red, 
  example: latte_lavender,
  quote: mocha_crust,
)

// ADMONITION TEMPLATE
// ======================================================
#let custom-admon(
  title: "Note",
  color: blue,
  width: 100%,
  radius: 4pt,
  body
) = {
  block(
    width: width,
    stroke: color + 4pt,
    radius: radius,
    inset: 0pt,
    spacing: 0pt,
    [
      #block(
        width: 100%,
        fill: color,
        inset: (x: 12pt, y: 8pt),
        radius: (top: radius),
        spacing: 0pt,
        text(fill: white, weight: "bold")[#title]
      )
      #block(
        width: 100%,
        fill: color.lighten(80%),
        inset: 12pt,
        radius: (bottom: radius),
        spacing: 0pt,
        body
      )
    ]
  )
}

// NOTE
// ======================================================
#let note(title: "Note", body) = custom-admon(
  title: title,
  color: admon-colors.note,
  body
)

// ABSTRACT
// ======================================================
#let abstract(title: "Abstract", body) = custom-admon(
  title: title,
  color: admon-colors.abstract,
  body
)

// INFO
// ======================================================
#let info(title: "Info", body) = custom-admon(
  title: title,
  color: admon-colors.info,
  body
)

// TIP
// ======================================================
#let tip(title: "Tip", body) = custom-admon(
  title: title,
  color: admon-colors.tip,
  body
)

// SUCCESS
// ======================================================
#let success(title: "Success", body) = custom-admon(
  title: title,
  color: admon-colors.success,
  body
)

// EXAMPLE
// ======================================================
#let example(title: "Example", body) = custom-admon(
  title: title,
  color: admon-colors.example,
  body
)

// WARNING
// ======================================================
#let warning(title: "Warning", body) = custom-admon(
  title: title,
  color: admon-colors.warning,
  body
)

// FAILURE
// ======================================================
#let failure(title: "Failure", body) = custom-admon(
  title: title,
  color: admon-colors.failure,
  body
)

// QUOTE
// ======================================================
#let quote(title: "Quote", body) = custom-admon(
  title: title,
  color: admon-colors.quote,
  body
)