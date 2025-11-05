# $(UID)
$data modify storage temp player set from storage comms:unlocked player[{UID:$(UID)}]
$data remove storage comms:unlocked player[{UID:$(UID)}]
data modify storage comms:unlocked player prepend from storage temp player