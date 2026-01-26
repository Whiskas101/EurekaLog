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

(b) If $A_1 supeq A_2 supeq A_3 supeq A_3...$ 




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

(b) If $A_1 supeq A_2 supeq A_3 supeq A_3...$


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







