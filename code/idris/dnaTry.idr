module dna

import list
import pair
import bool
import nat

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand l = list.map complement_base l

strand1: list (pair base base) -> list base
strand1 l = map fst l

strand2: list (pair base base) -> list base
strand2 l = map snd l

complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = (mkPair h (complement_base h))::(complete t)

baseMatch: base -> base -> nat
baseMatch A A = (S O)
baseMatch T T = (S O)
baseMatch C C = (S O)
baseMatch G G = (S O)
baseMatch _ _ = O

countBase: list base -> base -> nat
countBase l b = list.foldr add O (map (baseMatch b) l)
