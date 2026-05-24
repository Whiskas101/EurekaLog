
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

(a) $ { n in N: n^2 < 10}$\
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



