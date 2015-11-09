module ite

import bool

-- "If ___, then ___.  Else, ___"
ite: bool -> a -> a -> a
ite true tb fb = tb
ite false tb fb = fb
