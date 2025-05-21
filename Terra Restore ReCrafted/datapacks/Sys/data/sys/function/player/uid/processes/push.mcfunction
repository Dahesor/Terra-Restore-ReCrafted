# $(UID)
$data modify storage temp player set from storage sys:data player[{UID:$(UID)}]
$data remove storage sys:data player[{UID:$(UID)}]
data modify storage sys:data player prepend from storage temp player