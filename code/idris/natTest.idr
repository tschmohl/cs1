module natTest

import nat
import bool
import eq
import Serialize

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S t

-- four
f: nat
f = S r

-- five
v: nat
v = S f

-- seven
s: nat
s = S(S v)

x: bool
x = nat.isZero r
-- false

y: nat
y = nat.succ O
-- S O

a: bool
a = evenb O
--true

b: bool
b = evenb (S O)
--false

c: bool
c = evenb (S(S O))
--true

d: bool
d = evenb r
--false

e: bool
e = evenb (S r)
--true

-- addp (mkPair O O) ==> O
-- addp (mkPair O (S (S O))) ==> S (S O)
-- addp (mkPair (S O) O) ==> S O
-- addp (mkPair (S (S O)) (S (S (S O)))) ==> S (S (S (S (S O))))

||| a test, expecting O
h1: nat
h1 = add O O

||| a test, expecting S (S O)
h2: nat
h2 = add O (S (S O))

||| a test, expecting (S O)
h3: nat
h3 = add (S O) O

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = add (S (S O)) (S (S (S O)))

add2: nat -> nat
add2 = add (S(S O))

m1: nat
m1 = mult O (S(S O))

m2: nat
m2 = mult (S(S O)) (S(S(S O)))

mult2: nat -> nat
mult2 = mult (S(S O))

f1: nat
f1 = fact O

f2: nat
f2 = fact (S(S(S O)))

s1: nat
s1 = sub O (S O)

s2: nat
s2 = sub (S(S(S(S O)))) (S(S O))

sub2: nat -> nat
sub2 = sub (S (S O))

le1: bool
le1 = le (S(S O)) (S(S O))

le2: bool
le2 = le (S (S O)) (S O)

pl: nat -> bool
pl = le (S(S O))

ex1: nat
ex1 = exp (S(S O)) O

ex2: nat
ex2 = exp  (S(S O)) (S (S (S O)))

power2: nat -> nat
power2 = exp (S(S O))

eql1: bool
eql1 = eql (S O) (S O)

eql2: bool
eql2 = eql O (S O)

eql3: bool
eql3 = eql (S O) O

is1: nat -> bool
is1 = eql (S O)

gt1: bool
gt1 = gt (S O) (S O)

gt2: bool
gt2 = gt (S (S O)) (S O)

ge1: bool
ge1 = ge (S O) (S O)

ge2: bool
ge2 = ge (S O) (S(S O))

lt1: bool
lt1 = lt (S O) (S O)

lt2: bool
lt2 = lt (S (S O)) (S O)

fib1: nat
fib1 = fib O

fib2: nat
fib2 = fib (S O)

fib3: nat
fib3 = fib (S(S(S(S(S(S O))))))

Stringf: String
Stringf = toString f
