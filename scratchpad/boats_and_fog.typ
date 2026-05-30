
#import "@preview/cetz:0.5.2"


== A fun problem I came across in a silly Zach Star video.

Imagine you're on a boat, and you end up 1 km away from the shoreline.
The dense fog makes it impossible to know which direction the shore lies in.
Assuming that you can perfectly drive the boat, to the utmost mathematical precision, what's the most efficient surefire way of getting to the shoreline?


== Solution
The most obvious (but ultimately not optimal) solution is to just pick ANY direction, and move exactly 1 unit. (which is 1km, but I dislike named units). After that, just move in a circle, with you initial point as the centre. Keeping yourself tangent to that line.

#let draw_shore_path(angle_raw, radius: 1.5, dist: 1.5) = {
  // code mode yessir

  let shore = 4
  let dist_from_shore = dist
  let side = 6
  let circle_centre = ((shore - dist_from_shore), side / 2)
  let (cx, cy) = circle_centre
  let theta = angle_raw * 1rad
  let target_point = (cx + radius * calc.cos(theta), cy + radius * calc.sin(theta))
  // let theta = calc.pi
  cetz.canvas({
    import cetz.draw: *

    grid(
      (0, 0),
      (side, side),
      help-lines: true,
    )
    //shore line
    line((shore, 0), (shore, side), stroke: blue + 2pt)


    line(circle_centre, (shore, side / 2), stroke: blue + 0.5pt)
    line(circle_centre, target_point, stroke: red + 2pt)

    circle(circle_centre, radius: radius, stroke: 0.5pt)
    arc(
      circle_centre,
      anchor: "origin",
      start: 0deg,
      stop: theta,
      radius: radius,
      stroke: red + 2pt,
    )
    arc(
      circle_centre,
      anchor: "origin",
      start: 0deg,
      stop: theta,
      radius: 0.25,
      stroke: green + 0.5pt,
      label: $theta$,
      // fill: green.lighten(80%),
    )
  })
}


#grid(
  columns: 2,
  gutter: 20pt,

  draw_shore_path(1), draw_shore_path((7 / 4) * calc.pi),
)


It's clear that the path depicted in red has a worst case of choosing the angle $2pi$ to move in. In which case you basically travel $r + 2pi r$. While this provides a guarantee that you will reach the shoreline, there is a better way.
#grid(
  columns: 2,
  gutter: 20pt,

  draw_shore_path(1, radius: 1.8), draw_shore_path(1, radius: 2.30),
)

Clearly, increasing the radius we travel in, before moving tangentially, results in a smaller distance travelled before hitting a shoreline, to a point.

#let ro = $r_("old")$
Let $ro$ be the singular unit distance, from the shore. Which was shown visually to have a worst case of $ro + 2pi ro$. Picking a value of $r > ro$ introduces another term $p$, that dictates how much of the circle's path actually lies on half of the boat position. The worst case, here, is the arc length which is strictly less than the full perimeter $2pi r$.
$
  2pi r p, "where" p = f(r)
$

It's easy to show that for a value of $r >> ro$, the initial starting point
just is very, very close to the centre, and the worst case reduces to
$r + pi r$, but that incredibly large $r$ just is not optimal, because it necessitates travelling first, in said large $r$ before pivoting to the circular arc path.

