module nat

import bool
import eq
import Serialize

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

||| given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

||| given a pair of natural numbers, return its sum
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

|||given a pair of natural numbers (a, b), return a-b.
|||if a<= b, the answer will be zero.
sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

||| given a pair of natural numbers, (a, b), return true if a <= b, otherwise return false
le: nat -> nat -> bool
le S b = true
le (S a) O = false
le (S a) (S b) = le a b

exp: nat -> nat -> nat
exp x O = S O
exp x (S n) = mult x (exp x n)

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S a) O = false
eql_nat O (S b) = false
eql_nat (S a) (S b) = eql_nat a b

gt: nat -> nat -> bool
gt O b = false
gt (S a) O = true
gt (S a) (S b) = gt a b

ge: nat -> nat -> bool
ge a O = true
ge O (S b) = false
ge (S a) (S b) = ge a b

lt: nat -> nat -> bool
lt a O = false
lt O (S b) = true
lt (S a) (S b) = lt a b

fib: nat -> nat
fib O = O
fib (S O) = S O
fib (S (S n)) = add (fib (S n)) (fib n)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
