module crossWalk

import pair

data lights = green | yellow | red
data button = press | noPress
data walkBool = walk | wait

cross: pair button lights -> walkBool
cross (mkPair press red) = walk
cross _ = wait
