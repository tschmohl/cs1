module set_adt_tests

import set_adt_hw
import bool
import option
import pair
import list
import nat
import eq
import Serialize
import list
import ite

empTest: bool
empTest = isEmpty (mkSet (true::nil))

insert1: set nat
insert1 = set_insert (S O) (mkSet (O::nil))

insertDup: set bool
insertDup = set_insert true (mkSet (true::false::nil))

rmO: set nat
rmO = set_remove O (mkSet (S O::O::nil))

cantRm: set nat
cantRm = set_remove O (mkSet (S O::(S(S O))::nil))

lengthSet : nat
lengthSet = set_cardinality (mkSet (S O::O::nil))

memt: bool
memt = set_member O (mkSet (S O:: O::nil))

memf: bool
memf = set_member (S O) (mkSet (S O::(S(S O))::nil))

unite: set nat
unite = set_union (mkSet (S(S O)::(S O)::(S(S(S O)))::O::nil)) (mkSet (S O::O::(S(S(S(S O))))::nil))

intersect1: set nat
intersect1 = set_intersection (mkSet (S(S O)::(S O)::(S(S(S O)))::O::nil)) (mkSet (S O::O::(S(S(S(S O))))::nil))

diff: set nat
diff = set_difference (mkSet (S(S O)::S O::O::nil)) (mkSet (S(S O)::O::(S(S(S O)))::nil))

FA1: bool
FA1 = set_forall evenb (mkSet (O::(S(S O))::(S(S(S(S O))))::nil))

FA2: bool
FA2 = set_forall id (mkSet (true::false::nil))

exists: bool
exists = set_exists evenb (mkSet (O::S O::(S(S(S O)))::nil))

noExist: bool
noExist = set_exists isZero (mkSet (S O::S(S O)::nil))

witness: option nat
witness = set_witness evenb (mkSet (S O::(S(S(S O)))::O::(S(S O))::nil))

witness2: option nat
witness2 = set_witness evenb (mkSet (S O::(S(S(S O)))::(S(S O))::O::nil))

witness3: option nat
witness3 = set_witness evenb (mkSet (S O::(S(S(S O)))::nil))

prod: set (pair nat nat)
prod = set_product (mkSet (O::S O::S(S O)::nil)) (mkSet (S(S(S O))::S(S(S(S O)))::nil))

prod2: set (pair nat bool)
prod2 = set_product (mkSet (O::S O::S(S O)::nil)) (mkSet (true::false::nil))

eqSet: bool
eqSet = set_eql (mkSet (O::(S O)::S(S O)::nil)) (mkSet (S O:: O::S(S O)::nil))

eqSet2: bool
eqSet2 = set_eql (mkSet (O::nil)) (mkSet (S O::O::nil))

stringSet: String
stringSet = set_toString (mkSet (S O::S(S O)::S(S(S O))::nil))

pwrset: set (set nat)
pwrset = set_powerset (mkSet (O::S O::(S(S O))::nil))
