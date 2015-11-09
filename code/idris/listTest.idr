module listTest

import nat
import bool
import days
import list
import eq
import Serialize

lO: list nat
lO = nil

l1: list nat
l1 = O :: nil

l2: list nat
l2 = S O :: S(S O) :: nil

l3: list nat
l3 = S O :: S(S O) :: S(S(S O)) :: nil

append123: list nat -> list nat
append123 = (++) (S O :: S(S O) :: S(S(S O)) :: nil)
--variable that appends the list of nat (S O:: S(S O) ::S(S O):: nil) to any list of type nat

lnil: nat
lnil = length lO
--expecting O

boollength: nat
boollength = length (false :: true :: nil)
--expecting 2

emptyAppend: list bool
emptyAppend = nil ++(false :: true :: nil)
--expect (false :: true :: nil)

eA2: list Days
eA2 = (monday :: friday :: nil) ++ nil
--expect (monday :: friday :: nil)

boolAppend: list bool
boolAppend = (true :: false :: nil)++ (not true :: false :: nil)
--expect (true :: false :: false :: false :: nil)

isThree: bool
isThree = member (S (S (S O))) l2

ls: String
ls = toString l3
