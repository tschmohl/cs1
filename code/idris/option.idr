module option

import bool
import unit
import eq

data option t = some t | none

instance (eq a) => eq (option a) where
  eql none none = true
  eql (some o1) (some o2) = eql o1 o2
  eql _ _ = false
