= My solutions to the Real Analysis Exercises
=== From the book: _Real Analysis by Stephen Abbott_


#let subeq = math.subset.eq
#let supeq = math.supset.eq

== 1.2.1
(a) Prove that $sqrt(3)$ is irrational. Does a similar argument work
to show $sqrt(6)$ is irrational? \
(b) Where does the proof of Theorem 1.1.1 break down if we try to use it to prove $sqrt(4)$ is irrational?


Context:
Theorem 1.1.1 in the book is the one that states:

=== _There is no rational number whose square is 2_

Solution: 

Similar to how Theorem 1.1.1 shows by example, a proof by contradiction is in order. \
Assume a rational number $p/q$ such that the following holds true:
$
	(p/q)^2 = 3
$
Rearranging the terms
$
	p^2 = 3q^2
$

This implies that the number $p^2$ is divisible by 3. If $p times p$ is divisible by 3, then that implies, $p$ must also be divisible by 3. Because if something is a multiple of 3, it's square must also be a multiple of 3, for the simple fact that 3 is one of it's factors. So $p^2$ should be representable as a square of two numbers, for example it may be $(3 r)^2$.

To understand whether a number being divisible by 3, implies it's square root must also be divisble by three, I can apply modular arithmetic to spice things up.

When a number is divided by 3, there's _explicitly_ only 3 possible scenarios. _(This generalizes to $n$, not just 3 btw)_
- The number is perfectly divisible by 3 _(zero remainder)_
- The number after division leaves remainder 1
- The number after division leaves remainder 2

More formally, it can be shown that numbers of the format $3k, 3k + 1, 3k + 2$ leave behind the results of $0, 1, 2$ respectively upon division by 3. So, squaring these three types of numbers can explicitly tell us which formats are still divisible by 3, both in the square, and it's square root form.

The squares are: 
$
	(3k)^2 = 9 k ^ 2 \
	(3k + 1)^2 = 9 k ^ 2 + 6k + 1\
	(3k + 2)^2 = 9 k ^ 2 + 12k + 4\
$ 

For the square of $(3k)^2$ it is trivial to see how it is divisible by 3.
The other two cases of $(3k + 1)^2$ & $(3k + 2)^2$ we need to use the $mod$ operator, which results in the following results: 

$
	(3k + 1)^2 mod 3 equiv (9k^2 + 6k + 1) mod 3
	\ equiv (9k ^ 2 mod 3 + 6k mod 3 + 1 mod 3) mod 3
	\ equiv (0 + 0 + 1) mod 3 
	\ equiv 1
$
Similarly, it can be seen that:
$
	(3k + 2)^2 mod 3 equiv (9k ^ 2 + 12k + 4) mod 3
	\ equiv (9k ^ 2 mod 3 + 12k mod 3 + 4 mod 3) mod 3
	\ equiv ( 0 + 0 + 1 ) mod 3
	\ equiv 1
$
This shows us that if there's a number $m$ such that it is divisible by 3, i.e. $m = 3n$ then, the only way the divisibility condition holds, is for squaring, as seen above. In the original equation, $p^2 = 3q^2$, if we claim that $p$ the square root is also divisible the 3, the scenarios arise in the same manner as above.
$
	p = 3k\
	p = 3k + 1\
	p = 3k + 2
$
Out of these, only $p = 3k$ leads to the possibility of $p^2$ being divisible by 3, so $p = 3k$ remaing the only valid subtitution!

This is just a covoluted way of demonstrating _*Euclid's Lemma*_ which states that if $p$ is a prime number and $p | a b$ then $p$ must divide $a$ or $p$ must divide $b$. Written more formally as:
$
	p | a b => p | a or p | b \
	p in PP
$

Going forward, setting $p = 3k$ in the initial eqn:
$
	(3 k)^2 = 3 q^2
$\
Cancelling some terms:
$
	3k^2 = q^2\
	q^2 = 3k^2
$
This looks awfully close, identical infact, to $p^2 = 3q ^ 2$, and since we reasoned that $p$ must be divisible by 3, from the same logic we can reason that $q$ is _also_ divisible by 3. This leads to the contradiction about the rational number form that we assumed initially, that $p/q$ as a rational number, has no common factors.

*Therefore by contradiction, $sqrt(3)$ is irrational*

Moving on, from the second part of (a) \
=== Proving the irrationality(?) of $sqrt(6)$

This is different. We can express the same thing as a product of two:
$
	sqrt(6) = sqrt(2 times 3)
	\ = sqrt(2) times sqrt(3)
$

We know previously that $sqrt(2)$ & $sqrt(3)$ are both irrational, from proof by contradiction. This means the question lies in whether the product of two irrationals can be rational. A quick test shows, multiplying $sqrt(3)$ with itself, an irrational with an irrational, leads to $sqrt(3)^2 = 3$, which is a rational number.

So $sqrt(6)$ need not necessarily be an irrational number.

So beginning with the same setup and assumptions
$
	(p^2/q^2) = 6
$
We assume that $p/q = sqrt(6)$ where $p/q$ is rational. That means, they share *no common* factors and can't be reduced further. 

$
	p^2 = 6q^2
$

6 can be presented in terms of it's prime factors, $2 times 3$. The above equation claims that $p^2$ contains at the very least $2 times 3$. Naturally, when we square a number, we are multiplying the number with itself, that necessitates that there must be an *even* number of factors formed in the result. That's what's making it a perfect square.
$
	6^2 = (6 times 6) = (2 times 3)times(2 times 3)
$

So we have a number ($p^2$) claiming that it contains 2 and 3 as it's factors. Now naturally, we question it, if you're  perfect square as that $ []^2$ square superscript implies, then why do you have an odd number of 2 and 3 factors? If you really were a perfect square, you would have atleast $2 times 2$ and $3 times 3$ riiiiiiight...? 

Well, $p^2$ can quip back, claiming that it _does_ have those factors hidden, just within the second term of the equation:
$
	p^2 = 6 q^2
$

It says the other $2 times 3$ that's missing is hiding within $q^2$, but this raises another question $q$ itself claims to be a perfect square, so it must also have an even number of $2$s and $3$s as it's factors, which when added to the odd number of factors that's given to us by 6, it puts p^2 in a peculiar position...

But *even* if we were to entertain the mere thought of $q^2$ somehow hiding the terms that would stand in as the alibi for $p^2$, the issue arises in the initial assumption that both $p$ and $q$ share no common factors! If $q^2$ can hide the terms, guess what, it means they cancel out. (and that $p/q$ wasn't in it's reduced form to begin with)

This leads to all but one conclusion. There's no number $p$ that could possibly exist that would, when squared lead to an odd number of factors.


Formalising this:
$
	p^2 = 2^1 times 3^1 times q^2
$

This contradicts with what the fundamental theorem of arithmetic tells us. A square of a number must have even exponents on it's prime factors.

$
	x^2 = n_1^(2 a_1) times n_2^(2 a_2) times n_3^(2 a_3) ... \
$
where $n_i$ represents the ith prime factor, and $a_i$ represents the no. of times the $i$th factor shows up within the prime factorization of the number $x$.


#pagebreak()

Since we know due to the initial assumption of rationality, the set of prime factors of $p$ and $q$ are disjoint. (because they're supposed to share no common factors.)
$
	F(p) inter F(q) = emptyset
	\ "where" F(x) "refers to the set of prime factors of the number" x.
$

$
	F(p^2) inter F(q^2) = emptyset
$

Squaring a number does not introduce any new factors, just doubles the exponent of each of the factors. 

Finally this creates a contradiction, in that $p^2$ cannot exist as a number that has factors with an odd exponent.

*Therefore, the initial assumption that $sqrt(6)$ is rational is incorrect.*

\ \ \

(b) The analysis of the "proof breakdown" when proceeding as in Theorem 1.1.1 _(There exists no number whose square is 2)_ for checking the rationality of $sqrt(4)$.

Proceeding as in the theorem:

Define a irreducible rational fraction that is equal to $sqrt(4)$

$
	p/q = sqrt(4)\
	(p/q)^2 = 4\
	p^2 = 4 q^2
$

Going by the theorem's methods, we can clearly see that the right hand side of the equation is of the form $2^2$ and that implies $p^2$ is an even number. And as we know, all even numbers can be represented in the form of $2k$ where $k$ is some integer.

Putting $p = 2k$ within the previous equation:
$
	(2k)^2 = 4 q^2 \
	4k^2 = 4 q^2 \
	k^2 = q^2
$

The previous proof, relies on introducing a contradiction by showing that $q^2$ was a multiple of the same number as $p^2$, but that line of reasoning has simply brought us to the fact that $k^2 = q^2$

What does $k^2 = q^2$ tell us about $q$?

Nothing about this forces $q$ to be an even number, so there's no way to establish an existence of some common factor that appears that contradicts the original assumption.

$k = q$ If we ignore negative numbers. Pluggin this back in we get:

$
	(p/q)^2 = 4\
	(2k/k)^2 = 4\
	2^2 = 4
$

* Therefore, $sqrt(4) = 2$.*


#pagebreak()



== 1.2.2
Decide which of the following represent true statements about the nature of sets.\
For any that are false, provide a specific example where the
statement in question does not hold.

(a) If $A_1 supeq A_2 supeq A_3 supeq A_4 ...$ are all sets containing an infinite number of elements, then the intersection $inter_(n=1)^oo A_n$ is infinite as well.


*Solution: *

Here, $A_n$ is defined as $A_n = {n, n+1, n+2, ...}$ $n in NN$

$
	A_1 = {1, 2, 3, 4, ..}
\	A_1 = NN
$

Since there's no limit to the number of items within the any of the $A_n$, no matter how big $n$ becomes, $A_n$ will have some elements.

BUT, in the case of intersection, the principle idea is that there has to be something common to both sets in order for it to be present in the intersection of the two sets. We can see that:
$
	A_n inter A_(n+1) = A_(n+1)
$

$A_n$ is the set of natural numbers starting from $n$, $A_(n+1)$ starts from $n+1$, which means the intersection set keeps growing smaller the higher $n$ grows. There will always be $A_n$ with a value of $n$ such that it shrinks the set further. This leads to the conclusion that:

$
	inter_(n=1)^oo A_n = emptyset
$

Now the above proof is from my personal intution, but since I can't sit here and imagine an example of some set that will disprove the initial assertion, I will go ahead and just assume the opposite. That the intersection of these must be a non-empty set.

The assumption:

$
	inter_(n=1)^oo A_n = S\
	S != emptyset
$

Given this magical $S$ set, let's pick apart an element from it, $p in S$ and $p$. Since it exists in $S$ and that set is the intersection of all sets of that form.

$p$ is some natural number, so there must be a $A_p$ that contains $p$. But this leads to a contradiction!
$
	p in.not A_(p+1)\
	p in.not A_(p) inter A_(p+1)
$

*Thus our initial assumption that the resulting set of the infinite intersection of the series of $A_n$ is non-empty must be incorrect.*

#pagebreak()
Onto the next question \ \
(b) If $A_1 supeq A_2 supeq A_3 supeq A_3 dots.c$ are all finite, nonempty sets of real numbers, then the intersection $inter_(n=1)^oo A_n$ is finite and nonempty.
\ \
=== Solution

Now, here's the given information. Each and every set of is non empty, but not infinite.
$
	A_n != emptyset \
$
and by extension it's cardinality is non-zero, always.\ 
And, each one of these, is a super set of the next $n$ in line. I'll do what I do when I can't think of a specific case, assume the opposite. I say:

$
	inter_(n=1)^oo A_n = emptyset
$

With this, I claim that the final result of this infinite intersection operation is an empty set.
Carefully analyzing what happens these sets we see that there's only two possible cases for an intersection.

One, $A_n = A_m$ where of course, $m != n$, in this case, the operation 
$
	A_n supeq A_m = A_m\
	A_n supeq A_m = A_n\
$ 
They're both equal, the intersection results in no change. So, in a sense, we can safely ignore what happens when equal sets are intersected. This is again, trivial as I realize typing it out in neovim.

Two, the more interesting of the given possibilities, the case where the cardinality of $A_n$ and $A_m$ is not the same. 
$
	n(A_m) != n(A_n)\
	|A_m| != |A_n|
$
In this case, the intersection operation is going to cut down on the size of the set itself, since we assume that the cardinality _(fancy way to say the number of elements within the set)_ is inequal, one of them is going to be smaller than the other one. And by the nature of intersection as a operation on sets, the resulting set's cardinality is always going to be:
$
	|A_m inter A_n| = min(|A_m|, |A_n|)
$

But, we already have the information that $forall n |A_n| > 0$ i.e, all sets are non empty, all sets have their cardinality greater than 1.
 $min(a, b) != 0$ as long as $a > 0$ and $b >0$

This generalizes to an infinite series as well, where:
$
	|inter_(n=1)^oo A_n| = min(|A_1|, |A_2|, |A_3|, dots.c) != 0
$

This only works because cardinality of a set is a natural number $|A_n| in NN$ and set of cardinality of the given sets is a subset of the Natural numbers. From this, we can conclude, for any finite subset of a natural number, there must exist a minimum.
$
	{|A_1|, |A_2|, dots.c} subset NN
$

This means the final resulting set, is non empty, and minimum of all the cardinalities of the sets is greater than zero.

*Thus the initial assumption of the final set being an empty set is incorrect. The resulting set is non empty*

Another conclusion to be made is that, if the relation between sets did not allow for inequality
$
A_1 supset A_2 supset A_3 supset A_3 dots.c
$

This would force the cardinality to strictly decrease, which would eventually have us with an empty set, when done enough times.
Given the information that all sets are finite, and that eventually they result in a non empty set, this also implies, at some point, somewhere, the repeated operation of infinite intersection ends up operating on the same set forever.

Since the intersection happens over the same set, and all given sets are finite, it stands to reason the intersection output must also be *finite*.


_*Note to self:* Rewrite this proof sometime in the future, need a more rigorous demonstration the set actually stops changing for repeated intersection to infinity. Currently its only an appeal to intuition. 
_

#pagebreak()
(c) $A inter (B union C) = (A inter B) union C$

I am not quite sure how to approach this. I guess the way to start is to put down what I know, and can use as-is.

$
	x in A inter B => x in A and x in B
$

Put simply if $x$ is included within the intersection of $A$ and $B$, it must have been present in both the sets.

$
	x in A union B => x in A or x in B
$

The above statement just states that if $x$ is found within the union of $A$ and $B$ it must have been present in atleast *one* of the two sets.

With that basic understand of the two operations, I understand that order of operations matter significantly when applying intersections. For a pure union operation, since the cardinality of the sets is only monotonically increasing, the order of operations doesn't matter, it will never take away an element from either sets.

$
	|A_1 union A_2 union A_3 union A_4 dots.c | = |A_1| + |A_2| + |A_3| + |A_4| + dots.c
$

The above statement was me thinking in terms of *disjoint finite sets*. The above equation is obviously false for sets that have elements in common. I have absolutely no clue what is the cardinality of an infinite set, if that as a concept even is useful to know. _(Future me: The answer involves something called transfinite numbers and that puts fear in me.)_

I only need to prove that the final set formed by the two different order of application of intersection and union operation is not equal.

Let $x in C$, and $x in.not A union B$, this leads to only $C$ having this number out of $A$, $B$ and $C$. On the left hand side of the equation:
$
	A inter (B union C)
	\ x in C => x in B union C
	\ x in.not A => x in.not A inter P \ "where" P "is any set, with or without" x
$

Basically, for $x$ to "survive" the intersection between two sets, it must be part of both, otherwise it's culled. In the left hand side of the given equation, $x in.not A$ forces it to be culled. On the other hand, the union operation is kinder, and will include anything it can get it's hands on!

$
	x in C => x in C union P \ "where" P "is any set, with or without" x
$
So this leads to the situation where the RHS:
$
	x in C => x in (A inter B) union C
$
But the LHS states
$
	x in.not => A inter (B union C)
$

Since $x$ belongs to only ONE of the two sets formed by the two different order of operations, the LHS set is not equal to the RHS set.
*LHS $!=$ RHS, the given statement is false.*

#pagebreak()

(d) $A inter (B inter C) = (A inter B) inter C$.
\ \ 
*Solution* \
This one if the first to be absolutely straight forward to me. A simple case of proving that order of intersection doesn't matter.

I'll proceed with assuming that $A inter (B inter C) = (A inter B) inter C$ is not true. I assume that 
$
	A inter (B inter C) = (A inter B) inter C
$
Which means, the resulting sets are different. To begin, consider a set $M = A union B union C$, this set contains, *all* relevant elements, no matter where they come from. It stands to reason that $ A inter M  = A$, since the intersection will only return items common to $A$ and $M$.

#strike[I am currently thinking of a cardinality argument, the general idea is that cardinality of the resulting set of an intersection must monotonically decrease, it can never increase, because it can never introduce new items to a set. But it does nothing to show two sets are equal even if their cardinality matches.]

I think i'll go by exhausting possibilities instead.

Assume some element $x$ exists. There's the following possible scenarios:
 - $x$ belongs to all three sets
 - $x$ belongs to two of the three sets
 - $x$ belongs to one of the three sets

Consider the first case of $x$ belonging to $A, B, C$ respectively.

$
	x in A and x in B <=> x in A inter B
	\ x in A and x in C <=> x in A inter C
	\ x in C and x in B <=> x in C inter B

	\ "Basically," x "survives all culling scenarios in this case"
$

There's no combination of application of intersection that would get rid of $x$ for this case. Therefore, the condition hold equal on both sides.

The next case, $x$ belongs to two of the three sets, I'll assume $x in A$ and $x in B$
$
	x in A and x in B <=> x in A inter B\

	x in A arrow.r.not.double x in A inter C\
	x in B arrow.r.not.double x in B inter C\
$

This means, $C$ effectively culls out $x$. Because $x$ being in some set $P$ does not imply that it will be in $P inter Y$ where $Y$ is any other set not containing $x$.


Wait, I just thought of a better argument.

If there's any set that doesn't contain $x$ then the intersection of this specific set with of any and all sets with or without $x$ will not contain $x$

$
	exists S_p x in.not S_p => x in.not S_p inter S\
	"where " S " is any set"
$

Using the above deduction, we can quickly exhaust the outcomes of the three scenarios (two really actually):
 - All sets have $x$, no culling occurs, LHS $=$ RHS
 - One of the sets does not have $x$, therefore the final outcome remains identical, $x$ belongs to neither of the two sets formed by LHS or RHS
 - $x$ gets culled out, LHS = RHS, this is trivial because only one set needs to lack $x$ to eradicate it from the result of any repeated intersection operation regardless of order.


_I guess I could try and prove the order doesn't matter rigorously, but I think this is enough?_

*The given statement is true. Intersection of sets is associative*
#pagebreak()

(e) $A inter (B union C)  =  (A inter B) union (A inter C)$
\ \ 
*Solution* \
Looking at the shape of it, it's obvious this talks about distributivity of the $inter$ operation on sets.

Intuitively, the statement is true. Intersection culls values, as long as it's applied after all unions, or it's applied to every other set.

We know this about intersection:
$
	x in.not A => x in.not A inter P
$
where $P$ is any set. 

Therefore, $x$ is not present on the left hand side. (if we assume $x in.not A$ for _now_)

Moving on, using the same rules, we can conclude these about the right hand side:
$
	x in.not A => x in.not A inter B \
	x in.not A => x in.not A inter C
$

Therefore, $x in.not A inter B and x in.not A inter C => x in.not (A inter B) union (A inter C) $

Up until now, this shows as that the LHS and RHS behave identically as long as $x in.not A$, $A$ culls elements.

In the case that $x in A$, it becomes a matter of whether $B$ or $C$ contains $x$ or not. Which leads to two scenarios:
 - Both of them have $x$
 - One or none of them have $x$

In the first case, $x in A and x in B union C => x in A inter (B union C)$

for the RHS: $x in A inter B and x in A inter C => x in (A inter B) union (A inter C)$

LHS = RHS

In the second case, $x in A and x in B union C =>  x in A inter (B union C)$

for the RHS, things are a bit different
$
	x in A and x in B => x in (A inter B)\
	x in A and x in.not C => x in.not (A inter C)\

	(x in A and x in B) and (x in A and x in.not C) => x in (A inter B) union (A inter C)\

	x in A and x in B and x in.not C => x in (A inter B) union (A inter C)
$

LHS = RHS


*The condition holds true. _Though, this is probably the lowest quality of proof, where i'm just exhausting the possible states and checking each one._*






#pagebreak()


=== 1.2.3
*(De Morgan's Laws). Let A and B be subset sof $RR$*

(a) If $x in (A inter B)^c$, explain why $x in  A^c union B^c$. This shows that $(A inter B)^c supeq A^c union B^c$

(b) Prove the reverse inclusion $(A inter B)^c supeq A^c union B^c$, and conclude that $(A inter B )^c = A^c inter B^c$.

(c) Show $(A union B)^c = A^c inter B^c$ by demonstrating inclusion both ways.

\
*Solution:*

(a) 

$
	x in.not A => x in A^c\
	x in.not B => x in B^c\
	
	x in.not A union B => x in (A^c inter B^c)\
	x in.not A inter B => x in (A inter B)^c

$

The last equation is particularly important, it tells us that if $x$ is not within the bounds of $A$ and $B$, it might very well still exist in either of them, or neither of them. All it tells us, is that $x$ is not simultaneously a part of $A$ or $B$. Thus, $x$ is free to be either:
 - Part of $A$ but not $B$
 - Part of $B$ but not $A$
 - Part of neither (it goes somewhere else in the universal set)

$
	x in (A inter B)^c <=> x in.not (A inter B)\
	x in.not (A inter B) <=> x in.not A or x in.not B\
	x in.not A or x in.not B <=> x in A^c or x in B^c\
	x in.not A or x in.not B <=> x in (A^c union B^c)\
\ "Hence,"
	x in (A inter B)^c <=> x in (A^c union B^c)\
	
$ 

(b) ended up accidentally proving it in (a)

(c) The second De Morgan's Law.
\

To prove: 
 $(A union B)^c = A^c inter B^c$ by demonstrating inclusion both ways.

Given:

$
	x in.not A <=> x in A^c\
	x in.not A inter B <=> x in (A inter B)^c\
	x in.not A union B <=> x in (A union B)^c\
$
Proving:

$
	x in (A union B)^c => x in.not (A union B)\
	x in.not (A union B) => x in.not A and x in.not B\
	x in.not (A union B) => x in A^c and x in B^c\
	x in.not (A union B) => x in (A^c inter B^c)\

"Hence: " x in (A union B)^c => x in (A^c inter B^c)
	
$

This is just be doing it LHS to RHS, but doing it from RHS to LHS is easy as well, and can be done to prove LHS = RHS.


#pagebreak()

== 1.2.4 Verify the triangle inequality in the special cases where

*(a) $a$ and $b$ have the same sign*

*(b) $a >= 0$, $b < 0$, and $a + b >= 0$*

#pagebreak()

== 1.2.5 Use the triangle inequality to establish the inequalities

*(a) $|a -b| <= |a| + |b|$*

*(b) $| |a| -|b| | <= |a - b|$*

\ \
*Solution*

The triangle inequality simply claims that going through a third point will always be longer than or equal to the distance between two points directly. While I state this in terms of distances, the concept applies to 1 dimensional lines just as well, it's even more obvious here.

$
	| a - b | <= | a - c | + | c - b |
$

In the case of (a): $|a -b| <= |a| + |b|$, which claims the "distance" between two numbers $a$ and $b$ is less than or equal to the magnitude of the two numbers.

#strike[

	I can't think of any immediate way to prove this. So I'll assume the opposite and see what happens.

	Let $|a - b| > |a| + |b|$. But with a simple example of $a$ = 1 and $b= 1$, we see:

	$
	| 1- 1| > |1| + |1| 
	\ = 0 > 1
$

]



What is the absolute function saying? 
$
	|x| = -x " if "x < 0\
	|x| = x " if "x >= 0
$


$|a-b| <= |a| + |b|$ is a special case of $|a-b| <= |a-c| + |c -b|$ with $c = 0$, if the triangle inequality is just assumed to be true, then the proof is  a trivial case of setting a zero value for $c$.
$
	|a - b| <= |a - 0| + |0 - b|
$

(b) $| |a| - |b| | <= |a - b|$

The statement says, the straight distance between two numbers, is greater than the absolute of the difference in magnitudes of the two numbers or equal to it.

We know that:
$
	|x| = -x " if "x < 0\
	|x| = x " if "x >= 0
$
$
	forall x |x| > 0 
$


#strike[
	Here the LHS, takes the magnitude of $a$ and $b$ before subtracting them. Since the output of the absolute func is always $ > 0$ 


$
	| |a| - |b| | <= |a - b|\
	| |a| - |b| | <= |a| + |b| 
$

	Let $|a| = p, |b| = q $:
	$
	|p - q| <= |p| + |q|
$
	As proven in (a)

]


A simpler proof I was too stupid to think of:
$
	|a| = |a + b - b|\
$
Regrouping terms:
$
	|a| = |(a - b) + b|\
$

Applying triangle inequality with $(a-b) = p$ 
$
	|p - b| <= |p-0| + |0-b|\
	|p - b| <= |p| - |b|\
	|(a-b) - b| <= |(a-b)| + |b|\
	|a| <= |(a-b)| + |b|\
	|a| - |b| <= |a-b| 
$

Swapping $a$ and $b$:
$
	|b| - |a| <= |b-a|\
	-(|a| - |b|) <= |a-b|\
$
Then:
$
	| |a| - |b| | <= |a - b|
$

_(Attempt this proof again, seems to be weird)_

#pagebreak()


== 1.2.6
Given a function $f$ and a subset $A$ of its domain, let $f(A)$ represent the range of $f$ over the set A; that is, $f(A) = {f(x): x in A}$.

(a) Let $f(x) = x^2$. If $A = [0, 2]$ ($x in RR$) and $B = [1, 4]$, find $f(A)$ and $f(B$). Does $f(A inter B) = f(A) inter f(B)$ in this case? 
Does $f(A union B) = f(A) union f(B)?$

(b) Find two sets $A$ and $B$ for which $f(A inter B) != f(A) inter f(B)$.

(c) Show that, for an arbitrary function $g: RR -> RR$, it is always true that $g(A inter B) subeq g(A) inter g(B)$ for all sets $A, B subeq RR$.

(d) Form and prove  a conjecture about the relationship between $g(A union B)$ and $g(A) union g(B)$ for an arbitrary function $g$.

\
*Solution: *\
\
(a)

$A inter B = [1, 2]$ since $1$ can be found within the range $[0, 1]$, and $2$ can be found within $[1, 4]$
$
	f(A inter B) = f([1,2]) = [1, 4] \

	f(A) = f([0, 2]) = [0, 4]\ 
	f(B) = f([1, 4]) = [1, 16]\ 
	f(A) inter f(B) = [1, 4]
$

For this example, $f(A inter B) = f(A) inter f(B)$.

$
	f(A union B) = f([0, 4]) = [0, 16]\
	f(A) union f(B) = [0, 4] union [1, 16]\
	f(A) union f(B) = [0, 16]\
$

The union conditions seems to hold for this problem as well.

(b) Just need to find two sets where $f(A inter B) != f(A) inter f(B)$.\

Let $A = [-1, 0]$ and $B = [1, 3]$.\

$
	A inter B = emptyset\
	f(A inter B) = f(emptyset) = emptyset\
	f(A) inter f(B) = [0, 1] inter [1, 9] = {1}\
	emptyset != {1}
$

Hence, for $A = [-1, 0]$ and $B = [1, 3]$, the given equation holds.

*This approach relies on the fact that $x^2$ as a function can map two values to one value. A one to one monotonic function would not uphold that inequality*

#pagebreak()

(c) This one seems a bit trickier. I need to show that:
$
	"Given a function " g: RR -> RR\
	g(A inter B) subeq g(A) inter g(B)\ forall A, B subeq RR
	
$

Since algebra won't help here, the next best thing is to go through and understand what the inputs and outputs are, I think?

The inputs space is straight forward, the domain, is simply $A$ and $B$.
The outputs are whatever the set of numbers that the function $g$ spits out, which are themselves going to belong to the sets $g(A)$ and $g(B)$ respectively.

$
	x in A => g(x) in g(A)\
	x in B => g(x) in g(B)\
	x in (A inter B) => x in A and x in B\
	x in A and x in B => g(x) in g(A) and g(x) in g(B)\
	g(x) in g(A) and g(x) in g(B) => g(x) in g(A) inter g(B)\
	
	x in (A inter B ) => g(x) in g(A) inter g(B)\
	

$
Therefore, 
$
	g(A inter B) subeq g(A) inter g(B)\
$


The above statements hold true for all $x$ in $A inter B$.
\ \ 
(d) _Form and prove a conjecture about the relationship between $g(A union B)$ and $g(A) union g(B)$ for an arbitrary function $g$._

A conjecture is just a seemingly true, but unproven statement. Proving it would graduate it to the status of a theorem. 

I say:
$
	g(A union B) = g(A) union g(B)
$

$
	x in A => g(x) in g(A)\
	x in B => g(x) in g(B)\
	x in A or x in B => g(x) in g(A) or g(x) in g(B)\
	x in (A union B) => g(x) in g(A) union g(B)\
	x in (A union B) => g(x) in g(A union B) "from the first implication, duh"

$


_(Gotta prove it for the other way around, to show both are subsets of each other, but it's so easy I'm skipping it.)_

#pagebreak()

== 1.2.7
*Given a function $f:DD->RR$ and a subset $B subeq R$, let $f^(-1)(B)$ be the set of all points from the domain $D$ that get mapped into $B$; that is,*
*$
	f^(-1)(B) = {x in D: f(x) in B}
$*
*This set is called the _preimage_ of $B$*

(a) Let $f(x) = x^2$. If $A$ is the closed interval $[0, 4]$ and $B$ is the closed interval $[-1,1]$, find $f^(-1)(A)$ and $f^(-1)(A inter B) = f^(-1)(A) inter f^(-1)(B)$ in this case? Does $f^(-1)(A union B) = f^(-1)(A) union f^(-1)(B)$?

=== Solution
The inverse operation would be the square root, but to think in terms of which inputs get mapped to the actual output set B, is the overarching goal here.

// Writing inverses manually is so much pain, typst being a programming language and a markup lang is such a W
#let finv(x) = $f^(-1)(#x)$

$
	A' = [-2, 2]
$
We only need to analyze the extreme ends of $A$ to nail down the preimage. _This is a simplification, I know._

Similarly.
$
	B' = [-1, 1]
	
$
Even though the domain is $[-1, 1]$, only the part from zero to one is really reachable by $f(x)$, since 
$
	x < 0 => x in.not f(x)
$

with the knowledge and weird notation of 
$
	A' = finv(A)\
	B' = finv(B)\

	finv(A) inter finv(B) = A' inter B' = [-2, 2] inter [-1, 1]\
	finv(A) inter finv(B) = [-1, 1]\

	finv(A inter B) = finv([0, 1]) = [-1, 1]\
	\
	finv(A inter B) = finv(A) inter finv(B)\

$
The union case:
$
	finv(A union B) = finv([-1, 4]) = [-2, 2]\
	finv(A) union finv(B) = [-2, 2] union [-1, 1]\
	\
	finv(A union B) = finv(A) union finv(B)	\
$

I forgot that the range of $[0, n] : n in RR$ can be achieved by any number from $[-n, n]$, atleast for $f(x) = x^2$. I ran with the positive assumption too often and broke the proof. It's a necessity to really ensure the function is injective or even bijective before I make such leaps.









#pagebreak()

(b) The good behaviour of preimages demonstrated in (a) is completely general. Show that for an arbitrary function $g: RR -> RR$, it is always true that $g^(-1)(A inter B) = g^(-1)(A) inter g^(-1)(B)$ and $g^(-1)(A union B) = g^(-1)(A) union g^(-1)(B)$ for all sets $A, B subeq RR$.

#let ginv(x)= $g^(-1)(#x)$;
#let Range(x)= $"Range"(#x)$;
#let Preimage(x)= $"Preimage"(#x)$;



From the way functions and their preimages are defined:
$
	g: DD -> RR = {x in DD : f(x) in BB}\
	"where" BB subeq RR
$

For any arbitary function $g: D -> O$ where $D,O subeq RR$
$
	Range(g) = {g(x) | x in D}
$
Range refers to the subset of $O$, the codomain, that actually gets mapped via $g(x)$, basically the valid set of outputs for all valid inputs ($D$).
$
	Range(g) subeq O
$
Preimage, is the set of all inputs that lead to a set of outputs.
$
	Preimage(Range(g)) = D
$
Naturally, if we try to find the preimage of the set of all valid outputs of some function $g$ we end up getting back the domain of $g$, which is $D$.


Moving on, an inverse of a function is a backwards mapping, from all possible outputs, to their respective inputs.
$
	g: D -> O\
	D, O subeq RR\
	
	ginv(A) = {x | g(x) in A and x in D}
$

Next the union of preimages gets us:
$
	x in D\
	ginv(A) union ginv(B) = {x | g(x) in A} union {x | g(x) in B}\
	ginv(A) union ginv(B) = {x | g(x) in A or g(x) in B}\

	ginv(A) union ginv(B) = {x | g(x) in A union B}

$
That's one side of the equation, onto the other one:
$
	x in D\
	ginv(A union B) = {x | g(x) in A union B} 
$
This simply follows from the definition of the preimage, we just passed in a set that happened to be $A union B$

Therefore $ginv(A union B) = ginv(A) union ginv(B)$

For the case of intersection:
$
	ginv(A) inter ginv(B) = {x | g(x) in A} inter {x | g(x) in B}\
	ginv(A) inter ginv(B) = {x | g(x) in A and g(x) in B}\
	ginv(A) inter ginv(B) = {x | g(x) in A inter B}
$

And trivially, we can show:
$
	ginv(A inter B) = {x | g(x) in A inter B}
$

And hence:
$
	ginv(A inter B) = ginv(A) inter ginv(B)
$



#pagebreak()

== 1.2.8
Form the logical negation of each claim. One way to do this is to simply add “It is not the case that...” in front of each assertion, but for each
statement, try to embed the word “not” as deeply into the resulting sentence
as possible (or avoid using it altogether).

*(a) For all real numbers satisfying $a < b$, there exists an $n ∈ NN$ such that $a + 1/n < b$.*
=== Solution

Written more formally:
$
	forall a < b," " exists n in N : a + 1/n < b
$
A negation of this would be:
$
	exists a < b, " " forall n in N : a + 1/n >= b
$
There exists $a < b$ such that for all $n in B$ : $ a + 1/n >= b$

*(b) Between every two distinct real numbers, there is a rational number.*
To formal notation:
$
	forall a, b in RR," " exists r in QQ : a < r < b\

	"Better written as: " forall a, b in RR," " exists r in QQ : (a < r) and (r < b)
$
After negation:
$
	"Reminder that via De Morgans': " not(a < r and r < b) = a >= r or r >= b\
	exists a,b in RR, " " forall r in QQ : a >= r or r >= b
$
There exists real numbers $a, b: a < b$ such that, for all $x$ : $a >= r$ or $r >= b$

*(c) For all natural numbers $n ∈ NN$, $√n$ is either a natural number or an irrational number.*

$RR - QQ$ is a trick to represent the set of irrational numbers.
$
	forall n in NN, " " sqrt(n) in NN or sqrt(n) in (RR - QQ) 
$
It's negation:
$
	exists n in NN, " " sqrt(n) in.not NN and sqrt(n) in.not (RR - QQ)
$
There exists a natural number $n$ such that $sqrt(n)$ is not a natural number, and neither is it an irrational number.

OR more interestingly: "There exists a natural number $n$ such that $sqrt(n)$ is rational number that is not a natural number"


*(d) Given any real number $x ∈ RR$, there exists $n ∈ NN$ satisfying $n > x$*

$
	forall x in RR, " " exists n in NN : n > x
$

Negation:

$
	exists x in RR, " " forall n in NN : n <= x
$

There exists a real number $x$ for which all natural number $n$ are smaller than or equal to $x$





#pagebreak()

== 1.2.9

*Show that the sequence $(x_1, x_2, x_3, ...)$ defined in _Example 1.2.7_ is bounded above by $2$; that is, prove that $x_n <= 2$ $forall n in NN$.*


*Solution*:

Example 1.2.7 states:
Let $x_1 = 1$, and $forall n in N$ define:

$
	x_(n+1) = (1/2)x_(n) + 1
$

// Defining a func here so I dont have to manually calculate it
#let recurse(n) = {
	let m = int(n)
	if m == 1{
		return 1
	}

	let val =  1 + (1/2)* recurse(m - 1)
	return val
}



Playing around
$
	x_(1) = 1\
	x_(2) = (1/2)x_1 + 1\ = 1/2 + 1 = 3/2\
	x_(3) = (1/2)x_2 + 1 = (1/2) times 3/2 + 1 =  7/4\
	x_(3) = (1/2)x_2 + 1 = (1/2) times 3/2 + 1 =  7/4\
	"Numerically, " x_(3) = recurse(#int(3))\
	x_(4) = recurse(#int(4))\
	x_(5) = recurse(#int(5))\
	x_(6) = recurse(#int(6))\
	x_(7) = recurse(#int(7))\
	x_(8) = recurse(#int(8))\
	x_(9) = recurse(#int(9))\
$

Numerically, I can see the vision. But how do I prove it? It's so unintuitive to do so without relying on just brute force computation. Which at the same time is not the right way to prove things.

Every step in the sequence, is $1$ plus half the last value in the sequence.

If $x_n$ is smaller than $2$ for all values of $n in NN$ then surely this must hold.
$
	"if " x_(k) <= 2\

	"then" x_(k + 1) <= 2\

	x_(k+1) = (1/2)x_(k) + 1
$

So, we can see that $x_k$ is less than 2, for some $k$, it's rather easy to find that there's some $n = k$ where $x_n <= 2$, the base case of $x_1 = 1$ being one example of such $n$.

By induction as stated in example 1.2.7, we know that 
$
	x_(k) <= x_(k+1)
$

How do i prove that $x_(k+1)$ is smaller than or equal to $2$.
$
	x_(k+1) = (1/2)x_(k) + 1
$

Consider the base case, $x_1 = 1$
$
	x_1 <= 2\
$
Apply certain transforms to this inequality:
 - multiply both sides by $1/2$
 - add one to both sides

$
	(1/2)x_1 + 1 <= (1/2)(2) + 1\
	x_(2) <= 2\
$

Similarly, generalizing this to some $n = k$ such taht $x_k <= 2$
$
	x_k <= 2\
	(1/2)x_k + 1 <= (1/2) (2) + 1\
	x_(k+1) <= 2\
$

By induction, we showed that $forall n in NN : x_n <= 2$



#pagebreak()



== 1.2.10
*Let $y_1$ = 1, and for each $n in NN$ define $y_(n+1) = (3y_n + 4)/4$.*
(a) Use induction to prove that the sequence satisfies $y_n < 4$ for all $n in NN$.

(b) Use another induction argument to show that the sequence $(y_1, y_2, y_3, dots)$ is increasing.

\

*Solution*
\
(a) Essentially a repeat of the previous question, I just need to show that the sequence defined is bounded by $4$.

First, find some $k$ such that $y_(n=k)$ is less than $4$, which is given to us by $k=1$, where $y_1 = 1$ as defined by the base case.

If $exists k : y_k < 4$
then $y_(k+1) < 4$

The above statement needs proving.

$
	y_(k) < 4 
$

Applying these transformations to the inequality above:
 - Multiply both sides by $3$
$
	3 y_k < 3 times 4\
	3 y_k < 12
$

 - Add $4$ to both sides
$
	
	3 y_k  + 4 < 12 + 4\
	3 y_k  + 4 < 16\
$

 - Divide both sides by $4$
$
	
	(3 y_k  + 4 )/4< (16)/4\
	(3 y_k  + 4 )/4< 4\
$

By definition of $y_(n+1)$:

$
	y_(n+1) = (3y_n + 4)/4
$

Therefore, 
$
	y_(k+1) < 4
$

*Proved.*

#pagebreak()
(b) To show that the sequence $(y_1, y_2, y_3, dots)$ is increasing, I need to establish an immediate neighbour inequality and just generalise that.

Consider the case of $n =1, 2$

$
	y_1 = 1\
	y_2 = (3y_1 + 4)/4 = 7/4 
$

Here, it's obvious that $y_2 >= y_1$

$
	y_(k+1) >= y_(k)\
	3y_(k+1) >= 3y_k\
	3y_(k+1) + 4>= 3y_k + 4\
	(3y_(k+1) + 4)/4 >= (3y_k + 4)/4\

	"Which is just, " y_(k+2) >= y_(k+1)
$

So, the inequality holds for all $k in NN$

#pagebreak()

== 1.2.11
*
If a set $A$ contains $n$ elements, prove that the number of different subsets of $A$ is equal to $2^n$. (Keep in mind that the empty set $emptyset$ is considered to be a subset of every set.)
*

\
*Solution*
\

My mind is set on an induction proof, even though I know from my discrete math courses that this can be easily proven by a combinatorial argument.

Consider the base case of $A = emptyset$, the number of all subsets of $A$ is simply $1$.

Rewriting this into a more suitable notation that lends itself easier to a recursive definition.

Let $A_n$ represent a set with $n$ items, $n in NN$.

$
	|P(A_0)| = 1 \
	|P(A_1)| = |{{1}, emptyset}| \
	|P(A_2)| = |{{1, 2}, {1}, {2}, emptyset}| \
	|P(A_3)| = |{{1, 2, 3}, {1, 2}, {2, 3}, {1, 3}, {1}, {2}, {3}, emptyset}| \
$

Here a recursive relation between the cardinality of the power set emerges:
$
	|P(A_n)| = 2 times |P(A_(n-1))|
$

Expanding this relation out until the base case:
$
	|P(A_n)| = 2 times 2 times 2 times ... 2 times |P(A_(1))|\
	|P(A_n)| = 2 ^ n
$

But how do I justify this claim?

$
	|P(A_(n+1))| = 2 times |P(A_(n))|
$

I can see that for every set $A_n$ its power set includes every possible combination of it's constituents. If a new item $x in.not A_n$ is added to this set, thereby making it $A_(n+1)$ how does the power set change?

The new element $x$ can either be put in, or excluded from each set in the power set of $A_n$. This effectively doubles the number of items.

Consider a simple example with $n=2$
$
	P(A_2) = {{1, 2}, {1}, {2}, emptyset} \
	"Adding "x" to " A_n, P(A_(n+1)) = {P(A_n) union {{x} union B : B in P(A_n)}}\

	P(A_3) = {P(A_2) union {{1, 2, 3}, {1, 3}, {2, 3}, {3}}\
	|P(A_3)| = |P(A_2)| + |{1, 2, 3}, {1, 3}, {2, 3}, {3}|\
	|P(A_3)| = |P(A_2)| + |P(A_2)|\
	
$

This is just a convoluted way of saying, every set in the power set is combined with the new element $x$, to give an additional $n$ unique sets that can now be considered the power set of $A_n$.








