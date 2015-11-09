module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

data gunrow = mkGunrow country Nat Nat Nat Nat

|||A record of this type represents a country and the death rate per 10,000,000 by gun per homocides, suicides, unintentional, and other

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

oz: gunrow
oz = mkGunrow Australia 11 62 5 8

aus: gunrow
aus = mkGunrow Austria 18 268 1 8

hond: gunrow
hond = mkGunrow Honduras 648 0 0 0

US: gunrow
US = mkGunrow USA 355 670 16 9

--projection functions: pull data out of records
countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

stat: list gunrow
stat = argen :: oz :: aus :: hond :: US :: nil
