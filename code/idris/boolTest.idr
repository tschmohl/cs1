module boolTest

import bool

||| Exam Problem #2: There are 16 possible ways to fill in the result column for a truth table for a binary Boolean function, and there are thus exactly 16 such functions, and no more.

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

uf: bool -> bool
uf = and true

b7: bool
b7 = and true true

b8: bool
b8 = and true false

b9: bool
b9 = or false true

b10: bool
b10 = or false false

b11: bool
b11 = nand true true

b12: bool
b12 = nand false true

px: bool -> bool
px = xor true

b13: bool
b13 = xor false false

b14: bool
b14 = xor true true

b15: bool
b15 = xor false true
