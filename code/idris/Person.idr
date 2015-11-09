module Person

import bool
import list
import pair

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
    constructor MkPerson
    name : String
    age : Nat
    height : Nat 
    gender : bool
-- An example value of type Person
p: Person
p = MkPerson "Tommy" 3 15 false

-- And now here's the key idea: The 
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3
-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

j: Person
j = MkPerson "Jake" 8 50 false

k: Person
k = MkPerson "Kenny" 14 66 false

m : Person
m = MkPerson "Mary" 21 62 true

g: Person
g = MkPerson "Ge" 21 64 true

ja: Nat
ja = age j
-- expect 8

mn: String
mn = name m
-- expect "Mary"

--field override functions ("setters")

setName : Person -> String -> Person
setName p n = record {name = n } p

setAge : Person -> Nat -> Person
setAge p a = record {age = a } p

setHeight: Person -> Nat -> Person
setHeight p h = record {height = h } p

setGender: Person -> bool -> Person
setGender p g = record {gender = g} p

people: list Person
people = p::j::k::m::g::nil

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h)::(mapAge t)

women: list Person
women = filter gender people

wAges: list Nat
wAges = map age women

years: Nat
years = list.foldr plus 0 wAges

oneLine: Nat
oneLine = list.foldr plus 0 (map age (filter gender people))
