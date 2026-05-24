
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






