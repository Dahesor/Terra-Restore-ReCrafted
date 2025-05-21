$execute unless data storage sys:data tp[{by:$(UID)}] run return -1
$data modify storage sys:data test set from storage sys:data tp[{by:$(UID)}]
$data remove storage sys:data tp[{by:$(UID)}]
data modify storage sys:data tp prepend from storage sys:data test
return 1