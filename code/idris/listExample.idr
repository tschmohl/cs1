module listExample

import list
import hurricane
import bool

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
