module listExample

import list
import hurricane
import bool
import relation
import pair

hurri2015: list hurricane
hurri2015 = A::B::C::D::E::F::G::H::I::J::nil

tropStorms: list hurricane
tropStorms = A::B::C::E::G::H::I::nil

mapName: list String
mapName = map name hurri2015

mapCat: list String
mapCat = map category hurri2015

mapWind: list Nat
mapWind = map wind hurri2015

mapPress: list Nat
mapPress = map press hurri2015

mapDmg: list Nat
mapDmg = map damage hurri2015

mapDeath: list bool
mapDeath = map death hurri2015

tropDmg: list Nat
tropDmg = map damage tropStorms

emptyMap: list Nat
emptyMap = map wind nil

totalWind: Nat
totalWind = query2 hurri2015 death wind plus 0

hurriNames: String
hurriNames = query2 hurri2015 death name (++) ""

numberFatal: Nat
numberFatal = query2 hurri2015 death countOne plus 0

avePress: pair Nat Nat
avePress = ave_rel hurri2015 death press

totalPress: Nat
totalPress = sum_rel hurri2015 death press
