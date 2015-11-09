module dnaTest

import dna
import list
import pair
import nat

AtoT: base
AtoT = complement_base A
--expect T

GtoC: base
GtoC = complement_base G

CTAAT: list base
CTAAT = complement_strand (G::A::T::T::A::nil)
--expect C::T::A::A::T::nil

comp: list (pair base base)
comp = complete (G::A::T::C::A::T::nil)

countC: nat
countC = countBase (C::A::G::G::A::C::T::C::nil) C
--expect (S(S(S O)))
