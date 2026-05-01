
#None or not Timed
execute unless data storage registry:status temp[0].until run return run data modify storage registry:status temp prepend from storage registry:status instance

#Timed
execute store result score #temp calculator run data get storage registry:status temp[0].until

execute if score #temp calculator >= #this_until calculator run return run data modify storage registry:status temp prepend from storage registry:status instance



#Next
data modify storage registry:status run append from storage registry:status temp[0]
data remove storage registry:status temp[0]

function registry:status/instance/add/_compare