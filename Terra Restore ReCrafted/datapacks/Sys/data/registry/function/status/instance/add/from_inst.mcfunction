function sys:player/uid/get
execute unless data storage registry:status instance.until run return run data modify storage sys:data player[0].status append from storage registry:status instance

execute store result score #this_until calculator run data get storage registry:status instance.until
data modify storage registry:status run set value []
data modify storage registry:status temp set from storage sys:data player[0].status

function registry:status/instance/add/_compare
data modify storage sys:data player[0].status set from storage registry:status run
data modify storage sys:data player[0].status append from storage registry:status temp[]