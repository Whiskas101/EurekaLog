
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


It's clear that the path depicted in red has a worst case of choosing the angle that's very, very close to $2pi$ to move in. In which case you basically travel $r + 2pi r$. While this provides a guarantee that you will reach the shoreline, there is a better way.
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


So, the obvious thing to do is find the optimal value of:
$
  g(r) = r(1 + (2pi - 2 theta))
$

Where $r$ is the radius of the circle, $theta$ is the angle in radians, that the triangle at the intersection of the shoreline makes with the circle. We basically want the arc length that that the boat would travel until it hits the shoreline, in the worst case scenario.

We can use some nice trigonometry to redefine $g$ purely in terms of the radius.
$
  g(r) = r(1 + (2pi - 2 arccos(1/r)))
$


Derivative of $arccos$ is nicely obtained, by using this substitution
$
  sin^2(theta) + cos^2(theta) = 1\
  sin^2(arccos(theta)) + cos^2(theta) = 1\
  sin(arccos(theta)) = sqrt(1 - cos^2(theta))\
  "Assuming a triangle of base length x",\
  x = cos(theta)\
  sin(arccos(theta)) = sqrt(1 - x^2)\
$

With that information out ahead,
$
  f(x) = cos(x) = y\
  p(x) = f^(-1)(x) = arccos(x)\
  p(f(x)) = I(x)\
  p'(f(x))f'(x) = 1\
  p'(f(x))= 1/(f'(x)) \
  p'(y) = 1/(f'(p(y))) "   since, " p(y) = x\
  p'(y) = 1/(-sin(arccos(y)))
$

With those two pieces, we can substitute $sqrt(1 - x^2)$ in as such:
$
  p'(y) = -1/sqrt(1-theta^2)\
  d(arccos(1/r))/(d r) = (-1)/(sqrt(1-(1/r)^2)) (-r^(-2))
$
After simplification:
$
  d(arccos(1/r))/(d r) = (r^(-2))/(sqrt((r^2-1)/r^2)))\
  d(arccos(1/r))/(d r) = (r^(-1))/(sqrt((r^2-1)))\
$

Finally the derivative of the original function $g(x)$

$
  g(x) = r(1 + (2pi - 2 arccos(1/r)))\
  g'(r) = 1 + (2pi - 2 arccos(1/r)) + r (0 - (2(r^(-1)))/(sqrt((r^2-1))))\
  = 1 + (2pi - 2 arccos(1/r)) - ((2)/(sqrt((r^2-1))))\
$

Setting the first order derivative to zero to find critical points:
$
  g'(x) = 0\
  1 + (2pi - 2 arccos(1/r)) - ((2)/(sqrt((r^2-1)))) = 0\
  arccos(1/r) = 1/2 + pi - ((1)/(sqrt((r^2-1))))\
$

Well, $cos theta = 1/r$ and $arccos (1/r) = theta$

$
  theta = 1/2 + pi - (1/tan(theta))\
  theta = 1/2 + pi - cot(theta)\
  cot(theta) + theta = 1/2 + pi \
$

Now it's outta my hands, the only way to get this value is to pull out a calculator.


$
  theta approx 0.28995 "(in radians ofc)"
$

Using that for $cos theta = 1/r$

$
  r = 1/cos(theta)\
  r = 1/cos(0.28995)\
  r = #(1 / calc.cos(0.28995rad))
$

With that outcome. The optimal path.

#let r = (1 / calc.cos(0.28995))
#draw_shore_path(2.1, radius: r, dist: 1)
#draw_shore_path(6.1, radius: r, dist: 1)

Even in the worst case, it will cover slightly less than $2pi$ units of distance.


While figuring this out, I came across John Isbell's solution which is (infuriatingly) better than the one I came up with. It involves abusing the lower cost of straight lines, in a really smart way.



