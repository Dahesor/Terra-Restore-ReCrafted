# $(UID)
$data modify storage temp events set from storage sys:data events[{UID:$(UID)}]
$data remove storage sys:data events[{UID:$(UID)}]
data modify storage sys:data events prepend from storage temp events