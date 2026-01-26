

#{
	set align(center)

	[= Various Derivations of Trigonometric Identities]
	[because i am bored]
}

\ 
\
My big enemy has always been the seemingly random esoteric trig identities that just _pop up_ in every tricky problem.
This is simply an attempt to rectify my past self's mistakes of memorisation. 

First on the chopping block!
$
sin ( A + B )
$

Geometrically, it's rather easy to reason about. Going by the typical unit circle, imagining two triangles with unit hypotenuse, the $sin$ merely represents the "perpendicular" of the triangle.
Adding something to it's input is going to increase (or decrease) the size of the perpendicular depending on which quadrant the sum $A + B$ leads us into over the interval of $[0, 2pi]$

The perpendicular of the final triangle can be expressed in terms of the actual identity. 

(Figure out how to use diagrams to add here, the geometric derivation makes no sense other wise)






\ \ \

Leaving the geometry aside, the other more touch type friendly way of proving it involves using the ever present *Eulers Formula*.
$
	e^(i x) = cos x + sin x
$

Putting $x = A + B $
$
	e^(i (A + B)) = cos(A + B) + sin(A+B)
$
But since the right hand term is an exponential, there's yet another way to represent the same piece of information, as a product of exponential functions!
$
	e^(i (A + B)) = e^(i A) e^(i B)
$

Where the right hand side can then be rewritten using the euler's formula as:
$
	e^(i (A + B)) = (cos A + i sin A ) (cos B + i sin B)
$
Expanding the RHS to get: 
$
	e^(i (A + B)) = cos A cos B  + i cos A sin B  + i sin A cos B  + i^2 sin A sin B 
$
Grouping the terms together ($i^2 = -1$ because imaginary numbers): 
$
	e^(i (A + B)) = cos A cos B  + i (cos A sin B  + sin A cos B ) + i^2 sin A sin B 
$

$
	e^(i (A + B)) = cos A cos B -sin A sin B 
			+ i (cos A sin B  + sin A cos B ) 
$

Looking at the above equation and comparing with the Euler's form:
$
	e^(i x) = cos x + i sin x
$
The real part is $cos x$ representing the horizontal component of the unitcircle in the complex plane for angle $x$ while the $sin x$ represents the perpendicular. There's an interpretation of it which relies on rotation.
Multiplication by $i$ leads to a 90 degree or $pi/2$ rotation within this complex plane (counter clockwise).

This leads to the interpretation that $cos(A + B)$ and $sin(A+B)$ are the real and imaginary components of $e^(i (A + B))$ respectively. With that interpretation, the formulas are:

$
	cos (A + B) =  cos A cos B -sin A sin B \
\
	sin (A + B) = cos A sin B  + sin A cos B \
$

Ended up discovering both of angle sum identities for sine and cosine.




#pagebreak()

Onto the next one!
\ THIS hurt my brain a lot when I first saw it. It's such a simple idea, just double the angle, how bad could it be?

$
	sin(2 theta) && \ cos(2theta)
$

These seem rather innocent, but require a "double" projection in geometric terms to actually get the well known formula. 

(draw things using CeTz lib plot later for geometric proofs)

One thing that could be noted, is that this specific identity can just be understood as a special case of $sin(A+B)$ where $A = B$, and that does work:

$
	sin(2 A) = sin(A + A)\
	sin(2 A) = sin A cos A  + cos A sin A \
	sin(2 A) = 2 sin A cos A

$
BUT that's not the only way to reach that conclusion.

\ \ 
Onto the world of complex numbers!
\
*Euler* comes to the rescue once again. But, there's actually *MANY* ways to reach the same conclusion, going from euler's to the very definition of exponential functions as taylor series, which I find _incredibly interesting_. And the generalization that's possible with this is incredibly useful. Which feeds my disdain towards the Indian Education System, which never once mentioned the relation between exponentials and trig and why all trig functions are just neatly disguised exponentials!
$
	e^(i x) = cos x + i sin x
$

If a simple substitution $x = 2A$ is applied:
$
	e^(i x) = e ^ (i (2 A))
$
That bring us to the right hand side of: 
$
	e ^ (i (2 A)) = cos 2 A + i sin 2 A
$
Well, that doesn't look too helpful. Maybe a bit of rearrangement might help? After all multiplication is a commutative operation, and exponents in $e^i(2A)$ are surely being multiplied.

After rearranging these terms I get: 
$
	e^((2i)*A)
$

The interpretation here is, multiplying by $i$ leads to a $pi/2$ counterclockwise rotation within the complex plane. If there's a scaling factor, what happens then? It's SCALED! Of course, what else could it be!

Let's forget about the $A$ variable, that's complicating things. What does $e^i$ mean, and how does $e^(2i)$ change that picture?

(future me, add a unit circle showing the difference)

Simply put, scaling will be travelling twice the distance along the unit circle.
We can rewrite $e^(2i)$ as $e^i dot e^i$.

Since the Euler's equation tells us:
$
	e^(i x) = cos x + i sin x
$

// calculating the value of the sin(1) and cos(1) in radians ofc
#let sin1r = calc.sin(1)
#let cos1r = calc.cos(1)
#let sin2r = calc.sin(2)
#let cos2r = calc.cos(2)
$e^i$ implies that $x = 1$, in which case this boils down to:
$
	e^(i dot 1) = cos(1) + i sin(1) 
$
In actual numbers, this corresponds to a complex number:
$
	e^(i dot 1) = #cos1r + i (#sin1r)
$

With $2i$, as expected, the numbers would change:
$
	e^(i dot 2) = cos(2) + i sin(2) 
$
In actual numbers, this corresponds to a complex number:
$
	e^(i dot 2) = #cos2r + i (#sin2r)
$

This was probably a pointless side-adventure, as the correct way to approach it is with simply squaring the terms on both side (or multiplying it with itself, since it results in the same exponent)

Doing that gets us:

$
	(e^(i x))^2 = e^(i x) e^(i x)= (cos x + i sin x)^2
$
Expanding it:
$
	
	(e^(i x))^2 = e^(i x) e^(i x)= 
	
	cos^2 x + i cos x sin x + i sin x cos x + i^2 sin^2 x
$

Rearranging the terms we get: 
$
	(e^(i x))^2 = 
	
	cos^2 x + 2 i cos x sin x + (-1) sin^2 x
$
$
	e^(2 i x) = 
	
	(cos^2 x - sin^2 x) + 2 i cos x sin x 
$

With the similar method of comparing it to the base form of the euler's formula, we can decompose it's real and imaginary components and interpret them as sine and cosine of the input, that is $2 x$

That leads these two equations:

$
	sin(2 x) = 2 cos x sin x
	\
	cos(2 x) = cos^2 x - sin^2 x
$

_BUT_ there's a more fundamental route that goes through power series. The taylor kind.

Taylor polynomials are simply a special kind of polynomial that's built using the derivatives of some arbitrary function. This is what makes it an excellent candidate for approximating a function, and for it's infinite version, exactly represent the function itself.

This is particularly useful if the there's a pattern to the $n$th derivative of some function $f(x)$ that's going to make life, analysis and manipulation easier.

Luckliy, the exponential $e$ function is defined in such a way that it's derivative is simply the function itself, with some coefficients that may accumulate.

For the simple case of $e^x$ it can be represented as :

$
	e^x = sum_(n=0)^oo 1 + x + x^2/2! + x^3/3! + x^4/4! . . .
$
or

$
	e^x = sum_(n=0)^oo frac(x^n,n!)
$


