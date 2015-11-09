module relationTest

import Person
import relation
import bool
import list
import pair

years': Nat
years' = query plus 0 age gender people

totalHeight: Nat
totalHeight = query plus 0 height gender people

names: String
names = query (++) "" name gender people

years'': Nat
years'' = query2 people gender age plus 0

totalInches'': Nat
totalInches'' = query2 people gender height mult 1

names'': String
names'' = query2 people gender name (++) ""

number: Nat
number = query2 people gender countOne plus 0

aveAge: pair Nat Nat
aveAge = mkPair 
           (query2 people gender age plus 0) 
           (query2 people gender countOne plus 0)

aveAge': pair Nat Nat
aveAge' = ave_rel people gender age

years''': Nat
years''' = sum_rel people gender age

totalinches''': Nat
totalinches''' = sum_rel people gender height

aveHeight: pair Nat Nat
aveHeight = ave_rel people gender height
