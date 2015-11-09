module unitTest

import unit
import Serialize

u: unit
u = mkUnit

v: unit
v = mkUnit

-- v is declared to be a value of type "unit", particular value it is
  --bound to is "mkUnit"
U: String
U = toString mkUnit
