$execute unless data storage sys:data tp[{by:$(UID)}] run return -1
$data modify storage sys:data test set from storage sys:data tp[{by:$(UID)}]
return 1