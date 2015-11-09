module hurricane

import bool
import relation

|||A record type that is equivalent to: (data hurricane = mkHurricane String String Nat Nat Nat bool) but where we give names to fields.  A hurricane has a name, category, maximum wind speed in kilometers per hour, minimum pressure in millibars, and damage in 100,000 US Dollars. Death represents whether or not a storm directly caused any deaths.

record hurricane where
    constructor mkHurricane
    name : String
    category : String
    wind : Nat
    press: Nat
    damage: Nat
    death: bool

A: hurricane
A = mkHurricane "Ana" "Storm" 95 998 0 false

B: hurricane
B = mkHurricane "Bill" "Storm" 95 997 179 true

C: hurricane
C = mkHurricane "Claudette" "Storm" 85 1003 0 false

D: hurricane
D = mkHurricane "Danny" "Three" 185 974 0 false

E: hurricane
E = mkHurricane "Erika" "Storm" 85 1003 5117 true

F: hurricane
F = mkHurricane "Fred" "One" 140 986 11 true

G: hurricane
G = mkHurricane "Grace" "Storm" 85 1002 0 false

H: hurricane
H = mkHurricane "Henri" "Storm" 65 1008 0 true

I: hurricane
I = mkHurricane "Ida" "Storm" 85 1003 0 false

J: hurricane
J = mkHurricane "Joaquin" "Four" 250 931 0 true
