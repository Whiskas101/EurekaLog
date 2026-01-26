



= Deriving the quadratic equation
\
\
$
	a x^2 + b x + c = 0
$

From the general definition of a polynomial of $n$ degree

$
	(x - r_1)(x - r_2)(x - r_3)...(x - r_n) = 0
$

The quadratic is a special case of $n = 2$ as follows:
$
	(x - alpha)(x - beta) = 0
$

Where the roots of the quadratic polynomial are given by $alpha$ and $beta$ respectively. The relation between the different forms of representation can be obtained by simple multiplication

$
	x^2 - alpha x - beta x + alpha beta = 0
$
$
	x^2 - (alpha + beta) x + alpha beta = 0
$

When compared with the initial equation, we see the following relations emerge between the coefficients and the roots:

$
	alpha + beta = -b/a
$

$
	alpha  beta = c/a
$

Then, it's simply a matter of finding a way to represent $alpha$ and $beta$ in terms of the coefficients without relying on each other.

Taking the square of $alpha + beta$
$
	(alpha + beta)^2 = alpha^2 + beta^2 + 2 alpha beta
$
Rearranging some stuff
$
	alpha^2 + beta^2  = (alpha + beta)^2 - 2 alpha beta
$

Next up, the difference of the two, squared:
$
	(alpha - beta)^2 =  alpha^2 + beta^2 - 2 alpha beta
$

Using the values of $(alpha^2 + beta^2)$ obtained previously:
$
	(alpha - beta)^2 =  (alpha + beta)^2 - 2 alpha beta - 2 alpha beta
$

$
	(alpha - beta)^2 = (alpha + beta)^2 - 4 alpha beta
$

$
	alpha - beta = sqrt((alpha + beta)^2 - 4 alpha beta)
$


Putting the values of $alpha + beta = -b/a$ and $alpha beta = -c/a $ in the following eqn

$
	alpha - beta = sqrt((-b/a)^2 - 4(c/a))
$

Adding $(alpha + beta)$ to the above equation

$
	alpha - beta  + (alpha + beta)= sqrt((-b/a)^2 - 4(c/a)) + (alpha + beta)
$


$
	2alpha = sqrt((-b/a)^2 - 4(c/a)) + (alpha + beta)
$

Since we already know the value of $alpha + beta$, plug that in

$
	2alpha =  sqrt((-b/a)^2 - 4(c/a)) + (-b/a)
$

some rearrangement of terms:

$
	2alpha =  sqrt((b^2/a^2) - ((4 a c)/a^2)) + (-b/a)
$

$
	2alpha =  sqrt(frac((b^2 - 4a c), a^2)) + (-b/a)
$

$
	2alpha =  1 / a sqrt((b^2 - 4a c)) + (-b/a)
$ 
$
	alpha =  frac(-b + sqrt((b^2 - 4a c)), 2a )
$


That's it for the first root $alpha$, to get the second root $beta$ the trick is to subtract $(alpha + beta)$ instead of adding it!

Subtracting $(alpha + beta)$ from the above equation

$
	alpha - beta  - (alpha + beta)= sqrt((-b/a)^2 - 4(c/a)) - (alpha + beta)
$

$
	-2 beta = sqrt((-b/a)^2 - 4(c/a)) - (-b/a)
$

$
	-2 beta = sqrt((-b/a)^2 - 4(c/a)) + (b/a)
$

$
	-2 beta = sqrt(frac(b^2 - 4a c, a^2)) + (b/a)
$

$
	-2 beta = 1/a sqrt(b^2 - 4a c) + (b/a)
$

$
	-2 beta = frac(b +  sqrt(b^2 - 4a c), a)
$
$
	beta = frac(b +  sqrt(b^2 - 4a c), -2a)
$
