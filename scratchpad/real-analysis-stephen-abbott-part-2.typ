
== 1.3.5

#let subeq = math.subset.eq
#let supeq = math.supset.eq


Let $A subeq RR$ be bounded above, and let $c in RR$. Define the sets $c + A$ and $c A$ by $c + A = {c + A : a in A}$ and $c A = {c a: a in A}$.

(a) Show that $sup (c + A) = c + sup A$\
(b) If c >= 0, show that $sup (c A) = c times sup A$\
(c) Postulate a similar type of statement for $sup (c A)$ for the case $c < 0$

*Solutions*
\
(a) Adding $c$ to all elements of a set, should indeed output a set $B$ such that all elements within it are offset by $c$, and the supremum itself must account for this shift.

$
  sup A >= a "for all" a in A \
  sup (c + A) >= a + c "for all" a in A\
$
Given that supremum is defined as the least upper bound, we can imagine there to be an upper bound $c + sup A$. This is trivially proven to not be the supremum of $A$, and just as easily proven to be a upper bound on the same set.

Adding some value to all elements within the set, would make the supremum lose out on being the supremum, since there would be elements in $c + A$ that are now greater than $sup A$.

$
  exists a "such that" c + a >= sup (A)
$

$
  "let" s = sup A\
$
Then what is $s + c$? An upper bound on $c + A$? Yes.
$
  s >= a : forall a in A\
$
adding $c$ to both sides of the inequality
$
  s + c >= a + c: forall a in A\
  s + c >= a : forall a in (c + A)\
$
This proves that $s + c$ is an upper bound on $c + A$. Next up, the goal is to prove that $s + c$ is the least upper bound on $c + A$.

The goal is to show that for any $u$ upper bound on $c + A$:
$
  s + c <= u
$
Assume $u$ is some arbitrary upper bound on $c + A$.
$
  u >= a + c : forall a in A\
  "Given" s + c >= a + c : forall a in A\
  "Subtracting c from both ends"\
  u - c >= a : forall a in A\
  s >= a : forall a in A\
  u - c >= s\
  u >= s + c\
$
Therefore, $s + c$ is the least upper bound on $c + A$.

$
  c + sup A = sup (c + A)
$


\
\
(b) TO prove: If c >= 0, show that $sup (c A) = c times sup A$\

let $s = sup A$, which implies
$
  s >= a : forall a in A\
  "Multiplying both sides with c"\
  s c >= a c : forall a in A\
  s c >= a : forall a in c A\
$

let $s` = sup (c A)$ which is basically:
$
  s` >= c times a : forall a in A\
  s` >= a : forall a in c A\
$

Just have to prove that $s c$ is the least upper bound on $c A$.
There should be no upper bound $u$ such that $u < s c$

Consider an arbitrary upper bound $u$:
$
  u >= a c : forall a in A\
  u / c >= a : forall a in A\
$

That's similar to the above definition of $s$, so i invoke it.
$
  u/c >= s \
  u >= s c\
$
Simply because s is the supremum on A, it will be smaller than u/c which is merely an apper bound.
Therefore:
$
  sup (c A) = c times sup (A)
$

Also, the case for $c = 0$, that reduces the everything in the set to $0$.
$c A = {0}$.
Things get trivial after that. zero equals itself.



\
\
(c) Postulate a similar type of statement for $sup (c A)$ for the case $c < 0$
answer is simple, since we just gotta postulate, not prove it
$
  "If" c < 0, sup (c A) = c inf (A)
$

\

#pagebreak()

== 1.3.6

Compure without proofs, the suprema and infima of the following:

(a) ${ n in N: n^2 < 10}$\
(b) ${n/(m + n) : m, n in N}$\
(c) ${n/ (2n +1 ): n in N}$\
(d) ${n/m : m,n in N "with" m + n <= 10}$\

*Solution*

(a) Well it's simple. The smallest value of n that wont violate the constraint (in $NN$) would be 1. And the maximum would be 3. Those are the infimum and supremums respectively.

(b) Infimum is zero, supremum is 1.

(c) Assuming zero is not in $NN$. $1/2$ is the supremum. $1/3$ is the infimum.

(d) 9 is the supremum, $1/9$ the infimum.






#pagebreak()

=== 1.3.7

Prove that if $a$ is an upper bound for $A$, and if $a$ is also an element of $A$, then it must be that $a = sup A$.

*Solution*

Given that $a$ is an upper bound on $A$ and $a in A$:
$
  a >= x : forall x in A\
  a in A
$

Every element greater than $a$ must not belong in $A$. Because if it did,
it would contradict $a$ being an upper bound.

$
  x in.not A "if" x > a\
$
Since an element, say $y$ bigger than it lying within $A$ would not satisfy
the requirements of $a$ being an upper bound.
$
  "say" exists y : y > a\
  "such that:" y >= x : forall x in A\
  "but" a >= x : forall x in A\
$

Every non-supremum but upper bound of $A$ that is greater than $a$ must therefore, not belong in A. The supremum is:

$
  s >= x : forall x in A " st." s <= s' "where" s' "is any upper bound on "A\
$

If $s < a$, then $s$ is no longer an upper bound in $A$, because it would imply that it's smaller than an element $a$ already within the set, if the supremum $s$ > $a$, then it's no longer a supremum, given that there would exist $a$, an upper bound smaller than it.

This leaves with the only possibility that $s = a$, i.e.,
$
  sup (A) = a
$


#pagebreak()

== 1.3.8

If $sup A < sup B$, then show that there exists an element $b in B$ that is an upper bound for $A$.

*Solution*

Given $s$, $q$ such that
$
  s >= a : forall a in A\
  q >= b : forall b in B\
  q > s
$

We can deduce:
$
  s != q \
  sup (A) != sup (B)\
  exists p' in.not A "such that" p' > sup (A)
$

Pondering what a supremum being strictly different implies, we can see that
$
  |A| > 0\
  |B| > 0\
  A != B\
$

There is atleast one element in $B$, in the worst case, this element in $B$, must be big enough to satisfy the constraint of being an upper bound for $A$.

Let's assume that there are no elements in $B$ that can be an upper bound of $A$.

$
  forall b in B,\
  exists a in A: a > b\
  space => sup B <= sup A
$

In that case, $sup B$ cannot be greater than $sup A$, because all elements of $b$ are smaller than some element of $A$. This causes a contradiction. Therefore, there must be atleast one element in $B$ capable of being an upper bound on $A$.


#pagebreak()

== 1.3.9

Without worrying about formal proofs for the moement, decide if the following comments about suprema and infima are true or false. For any that are false, supply an example where the claim in question does not appear to hold.

(a) A finite, nonempty set always contains its supremum.\
(b) If $a < L$ for every element $a$ in the set $A$, then $sup A < L$.\
(c) If $A$ and $B$ are sets with the property that $a < b$ for every $a in A$ and every $b in B$, then it follows that $sup A < inf B$.\
(d) If $sup A = s$ and $sup B = t$, then $sup (A + B) = s + t$. The set $A + B$ is defined as $A + B = {a + b; a in A and b in B}$.\
(e) If $sup A <= sup B$, then there exists an element $b in B$ that is an upper bound for $A$.

*Solution*


(a) A finite, nonempty set always contains its supremum.\

If there is a defined order, yes. A finite nonempty set will contain it's supremum.\ \

(b) If $a < L$ for every element $a$ in the set $A$, then $sup A < L$.

Not necessarily, the supremum may *equal* said variable. That is, $sup A <= L$ .\ \

(c) If $A$ and $B$ are sets with the property that $a < b$ for every $a in A$ and every $b in B$, then it follows that $sup A < inf B$.\

False.
$
  A = (0, 1), B = (1,2)\
  sup (A) = 1 = inf (B)
$

It's an equality, instead of the strict inequality, hence, false.
\ \

(d) If $sup A = s$ and $sup B = t$, then $sup (A + B) = s + t$. The set $A + B$ is defined as $A + B = {a + b; a in A and b in B}$.\

True
\ \
(e) If $sup A <= sup B$, then there exists an element $b in B$ that is an upper bound for $A$.

This one is different from the last one where the constraint was $sup A < sup B$. It's got that equality constraint added on. WHICH leaves the possibility for the suprema to overlap. The two sets $A$ and $B$ could be equal.

IF $A = B$ and both are non finite, and do not contain their suprema, then $sup A = sup B$ but there exists no $b in B$ that can be an upper bound for $B$, and by extension for $A$.


#pagebreak()

Theorem proofs.
Proving that $NN$ is not bounded over.

Assuming for contradiction, that $NN$ is indeed bounded over.
Therefore, there must be a supremum of $NN$.

$
  alpha = sup NN
$

Then $alpha - 1$ implies that there must be some value of $n in ZZ$ such that
$
  alpha - 1 < n
$

This is from Lemma 1.3.7. Which basically says for any $epsilon > 0$, $s$ is the supremum of set $A$
$
  "iff" s - epsilon < n "where" n in A
$

Then, it's easy to show that
$
  alpha < n + 1
$

But $n + 1 in ZZ$ because it's closed over addition, therefore our assumption that $alpha$ is a supremum, and that $NN$ is bounded over, must be incorrect.



#pagebreak()

Theorem 1.4.3: The density of $QQ$ in $RR$


given a number line, we need to first think in terms of a resolution.
Consider two numbers $a, b in RR$  on the number line. The goal is to show that there exists a rational number between any two arbitrary intervals created by $a, b$ on the real line.
$
  "To Prove: "\
  a < frac(m, n) < b " " a, b in RR, m,n in ZZ, n != 0
$

First we figure out a resolution 1/n that lets us step INTO this arbitrarily small interval defined by $a, b$.
$
  frac(1, n) < b - a\
  n b - n a > 1\
  n b > 1 + n a
$

Consider then the initial to prove requirements multiplied by $n$.

$
  n a < m < n b\
$

Thinking carefully, we can again call upon the archimedes principle to find the *smallest integer* greater than $n a$, and let that be $m$.

$
  m - 1 <= n a < m
$
It naturally stands to reason that $m - 1$ would be smaller than $n a$, or atleast equal to it. I like to use an example to explain why:
$
  "Let" n a = 3\
  "Smallest integer greater than it? : " 4\
  4 - 1 = 3, 3 < 3 "would not be acceptable."
$

That's why the relation between $m-1$ and $n a$ involves equality. The reason why this equality is not shifted upwards like: $n a <= m$, is that our constraints $a < m / n < b$, that enforces that $n a < m$ be a strict inequality.

Now, using
$
  m-1 <= n a\
  m <= 1 + n a\
  n b > 1+ n a "or" 1+n a < n b\
  m <= 1+n a < n b\
  m < n b
$

We already have $n a < m$ from the archimedes thing, putting it all together
$
  n a < m < n b\
$
Dividing by $n$
$
  a < m/n< b\
$

Hence proved.


#pagebreak()

== 1.4.1
WIthout doing too much work, show that Theorem 1.4.3 can be proven for the case $alpha$ < 0, by converting this case into the one already proven.

*Solution*

Simply put, Theorem 1.4.3 proves the existence of square roots.
Particularly it states that there exists a Real Number such that $alpha$ such that $alpha^2 < 2$. It's goal is proving $sqrt(2) in RR$.
$
  alpha = sup T = sqrt(2)\
  T = { x in RR: x^2 < 2 }
$

It was proven for $alpha > 0$. But taking note of $f(x) = x^2$\
It is an even function!
$
  f(-x) = x^2 = f(x)
$

Therefore the existing proof also works for the cases of $alpha < 0$.


#pagebreak()

== 1.4.2
Recall that $II$ stands for the set of Irrationals.\
(a) Show that $a, b in QQ$ then $a b$ and $a + b in QQ$ as well.\
(b) Show that $a in QQ$ and $t in II$, then $a + t in II$ and $a t in II$ for $a != 0$.\
(c) Part (a) can be summarized by saying $QQ$ is closed under addition and multiplication. Is $II$ closed under addition and multiplication? Given two irrationals $s, t$ what can we say about $s + t$ and $s t$?\

_(I got very lazy and accidentally used x, y != 0 in Z to mean
x in Z AND y != 0 in Z. Laziness in me is also why I am writing this message instead of refactoring each instance. (maybe one day)
)_

*Solution*

(a) Show that $a, b in QQ$ then $a b$ and $a + b in QQ$ as well.\

The question kind of gives it away. But yes, $QQ$ being closed under addition is the solution. I will prove it regardless just to be extra.

$
  x in Q => exists m, n != 0 in ZZ: m / n in QQ
$

Hence we can represent two rationals $a, b$ using $m, n != 0, p, q != 0 in ZZ$

$
  a + b = m / n + p / q\
  a + b = (m p + n q) / (n q)\
$

Since both $n, q != 0$, division is safe. And since I chicken out and invoke the closure of $ZZ$ over addition and multiplication. I can say the following:
$
  x y in ZZ "if" x in ZZ and y in ZZ\
  x+ y in ZZ "if" x in ZZ and y in ZZ\
$

Therefore the expression holds true:
$
  a + b in QQ : forall a, b in ZZ\
  a b in QQ : forall a,b in ZZ
$

Both are proven, because it's simply natural numbers being operated on, with the explicit guarantee that no divisor is zero.

#pagebreak()
(b) Show that $a in QQ$ and $t in II$, then $a + t in II$ and $a t in II$ for $a != 0$.\

This is a bit more interesting.
We can represent $a = p/q$ where $p, q != 0 in ZZ$, but not $t in II$, because duh, that's it's entire definition, it cannot be of the form of two natural numbers' division.

Let's assume that $a + t in QQ$

$
  a + t = p/q + t in QQ\
  (p+ q t)/q in QQ\
$

To get any further now, we must first figure out what a product of a rational and irrational yields. So we take a detour to solve $a t$ first.

Let us again assume $a t in QQ$.

$
  a t = p/q times t in QQ\
  p/q times t in QQ\
$

If $(p t )/ q$ is a rational, we can represent it as $x/y$ with $x, y!= 0 in ZZ$.

$
  (p t)/ q = x / y\
  "Rearranging:" t = (x q)/(y p) " where" x, q, y, p in ZZ and y p != 0
$

Which turns out to imply $t$ must be a rational number. But we know for a fact it is not. Therefore, the assumption $a t in QQ$ must be incorrect.

$
  therefore a t in II
$

With the above proof we can go back to revisit $a + t in QQ$ assumption.

$
  a + t = p/q + t in QQ\
  (p+ q t)/q in QQ\
$

We now know that $q t in II$. Let's say $k = q t$. $k in II$, of course.
Since we made the assumption that $a + t in QQ$, let's pick valid $x, y!= 0 in ZZ$ such that:

$
  (p + k)/q = x / y \
  k = (x q)/(y) - p
$

We proved above that $QQ$ is closed under addition and multiplication.
So this above expression claims that $k in QQ$. But clearly, it's defined as an irrational. This means out assumption that $a + t in QQ$ was incorrect.

$
  therefore a + t in II
$

#pagebreak()

(c) Part (a) can be summarized by saying $QQ$ is closed under addition and multiplication. Is $II$ closed under addition and multiplication? Given two irrationals $s, t$ what can we say about $s + t$ and $s t$?\

Given $s, t in II$

The sum of two irrationals, let's assume them to be irrational. That is, we make the assumption that the Irrational numbers are closed under addtion.

$
  s, t in II => s + t in II
$

But, we see $s= pi, t = -pi$,
$
  s + t = pi - pi = 0\
  0 in QQ
$

So, by contradiction, Irrationals are not closed under addition.

Let's assume $s t in II$, for $s = pi$, $t = 1/pi$
$
  s t = pi times 1/pi = 1 in.not II
$

Again by contradiction, $II$  is not closed over multiplication.

BUT, before I rush things, does $s in II$ possess a multiplicative inverse?
That is, given $s in II$, is it true that $1/s in II$?

Well, let's again call upon proof by contradiction. Let's assume $s in II$

$
  1/s in.not II => 1/s in QQ\
  1/s = p/q "where" p in ZZ, q > 0 in ZZ\
  s = q / p
$

For $p = 0$, that number shoots up to infinity, and for the rest, it implies that $s in QQ$, which contradicts the given $s in II$. So $1/s$ must be irrational.



#pagebreak()

== 1.4.3
Using exercise 1.4.2, supply a proof for corollary 1.4.4 by applying theorem 1.4.3 to the real numbers $a-sqrt(2)$ and $b-sqrt(2)$.


*Solution*

Well, for context:

*Corollary 1.4.4:
Given two real numbers $a < b$, there exists an irrational number $t$ such that $a < t < b$.
*

*Theorem 1.4.3 is the theorem about the density of $QQ$ in $RR$.*

Well, it's not explicitly asked here, but i shall begin by proving that
$
  a < m/n < b\
  "for" a, b in RR, m, n in ZZ, n > 0
$

Well, firstly it's important to pick an $n$ big enough to have $1/n$ small enough to provide a number line of sorts. Imagined as a series:
$
  1/n, 2/n, 3/n, dots
$

Effectively, if we pick a large enough $n$, we should be able to find a $k/n, k in ZZ$ such that it lies somewhere along $a, b$ on the number line. For this to be a guarantee, we must ensure our step size $(1/n)$ is smaller than the interval size $b - a$, which would guarantee that at the very least, one such $k/n$ falls into the interval.


for a non-zero interval ($a != b$)

$
  b - a > 0\
$

But from the Archimedean property, we have:
$
  forall epsilon > 0, exists n in NN: e > 1/n
$

Here, we just swap in $b-a = epsilon$
$
  b - a > 1/n\
  n b - n a > 1\
  n b > 1 + n a \
$

Now, we have a large enough $n$, the question remains: what about $m$?
Well, the same archimedean principle guarantees that for every real number, we can find an integer that's larger than it.

$
  forall x in RR, exists n in ZZ: n > x
$

That also means, you can always find, an $n$ such that it's just barely larger than $x$. That's precisely what we define $m$ to be. Except, $x = n a$ here.

$
  n a < m\
  "naturally, " m - 1 < n a < m
$

A bit of inequality magic:
$
  m - 1 < n a\
  n a + 1 > m\
  "But, we know: " n b > n a + 1
$

So, it's easy to put them together to show:
$
  m < n a + 1 < n b\
  m < n b
  "previously: " n a < m
$
Finally:
$
  n a < m < n b\
  a < m/n < b\
$

And lo and behold, between any two reals, there exists a rational!

Now, this is not what the question asked, but it was needed for the next magic trick. Let's imagine an irrational number we know to be irrational $sqrt(2)$ (I did go through this proof in part one so i will not extend this already too long of a proof.)

We know from the archimedean principle that given any real $epsilon$:
$
  forall epsilon in RR, exists n in ZZ : 1/n < epsilon
$

We have to prove that just how we can find a real (rational, really) number $1/n$ smaller than any given $epsilon > 0$, we can find an irrational smaller than $epsilon$.

$
  sqrt(2)/n' < 1/n => n' > sqrt(2)n
$
So we can reframe the archimedean principle for irrationals now as :

$
  forall epsilon > 0 in RR, exists n in ZZ : sqrt(2)/(n) < epsilon
$

This proves, that no matter the number, we can find a irrational just smaller than it.


Since irrationals are closed under addition:
$
  m/n + j in II
$
So, if we just slot this in to the previous statement about rationals always existing in between two reals:
$
  a < m/n + j < b
$

Now ofcourse, the argument could be made that $j$ being added might push the result over the boundary of $b$. But fear not, we can simply "find" a more "accomodating" rational between $a$ and $b$. To do that, we must prove that there exists a rational small enough that when $j$ is added to it, it doesn't shoot past $b$ or fall under $a$.

Consider the gap between $m/n$ and $b$, and pick a suitable $j > 0$ that guarantees we do not overshoot $b$.

$
  j < b - m/n\
  n j < n b - m\
  m + n j < n b
$

$
  "As proven earlier, we can always find a" j in II "given",\
  0 < j < b - m/n
$

$$

We know from the proof about density of $QQ$ in $RR$:
$
  a < m/n < b\
  n a < m < n b\
  "We know" m < m + n j\
  n a < m < m + n j < n b\
  n a < m + n j < n b\
  a < m/n + j < b
$


Thus, we have shown, there are irrationals to be found within any arbitrary real interval.
