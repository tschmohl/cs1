module set

import list
import ite
import bool
import eq
import Serialize

|||mkSet is meant to be private
data set a = mkSet (list a)

|||A starting point for building any set
new_set: set a
new_set = mkSet nil

||| return {given value} union given set
set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l) (mkSet l) (mkSet (v::l))

--set_insert v (mkSet l) = mkSet (v::l)

eql_set: (eq a) => set a -> set a -> bool
eql_set (mkSet nil) (mkSet nil) = true
eql_set (mkSet nil) s2 = false
eql_set s1 (mkSet nil) = false
eql_set (mkSet s1) (mkSet s2) = and (subset_element s1 s2) (subset_element s2 s1)

instance (eq a) => eq (set a) where
  eql s1 s2 = eql_set s1 s2

instance (Serialize a) => Serialize (set a) where
  toString (mkSet l) = "{"++ (toStringList l) ++ "}"
