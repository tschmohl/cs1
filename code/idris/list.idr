module list

import nat
import bool
import ite
import pair
import eq
import Serialize

infixr 7 ::

data list a = nil | (::) a (list a)

length: list a -> nat
length nil = O
length (n :: m) = S (length m)

--append as an infix operator ++
(++): list a -> list a -> list a
(++) nil m = m
(++) (x::n) m = x::(n++m)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

||| Give a lit and a predicate on elements
||| return the sublist of elements for which
||| the predicate is true.

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                          (filter f t)

foldr: (a -> a -> a) -> a -> (list a) -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

-- eql: a -> a -> bool
-- eql v1 v2 = ?big_hole

--different equality functions must used for different types
--we want a member function that knows what equality function we want based on the type of a

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h) true (member v t)

subset_element: (eq a) => list a -> list a -> bool
subset_element nil nil = true
subset_element nil (h::t) = true
subset_element (h::t) nil = false
subset_element (h::t) l2 = and (member h l2) (subset_element t l2)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++ ", " ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString nil = "[]"
  toString l = "["++ (toStringList l) ++ "]"
