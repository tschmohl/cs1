module hurricanes

import list

data stormName = Ana | Bill | Claudette | Danny | Erika | Fred | Grace | Henri | Ida | Joaquin

data category = storm | one | two | three | four

|||A record of this type represents a 2015 hurricane, its category, maximum wind speed in kilometers per hour, minimum pressure in millibars, damage in 100,000 US Dollars, and deaths.

data hurricane = hurricaneRow stormName category Nat Nat Nat Nat

A: hurricane
A = hurricaneRow Ana storm 95 998 0 0

B: hurricane
B = hurricaneRow Bill storm 95 997 179 8

C: hurricane
C = hurricaneRow Claudette storm 85 1003 0 0

D: hurricane
D = hurricaneRow Danny three 185 974 0 0

E: hurricane
E = hurricaneRow Erika storm 85 1003 5117 36

F: hurricane
F = hurricaneRow Fred one 140 986 11 9

G: hurricane
G = hurricaneRow Grace storm 85 1002 0 0

H: hurricane
H = hurricaneRow Henri storm 65 1008 0 3

I: hurricane
I = hurricaneRow Ida storm 85 1003 0 0

J: hurricane
J = hurricaneRow Joaquin four 250 931 0 34

hurri2015: list hurricane
hurri2015 = A :: B :: C :: D :: E :: F :: G :: H :: I :: J :: nil

hurriName : hurricane -> stormName
hurriName (hurricaneRow a b c d e f) = a

cat : hurricane -> category
cat (hurricaneRow a b c d e f) = b

maxWind : hurricane -> Nat
maxWind (hurricaneRow a b c d e f) = c

minPress : hurricane -> Nat
minPress (hurricaneRow a b c d e f) = d

damage : hurricane -> Nat
damage (hurricaneRow a b c d e f) = e

deaths : hurricane -> Nat
deaths (hurricaneRow a b c d e f) = f
