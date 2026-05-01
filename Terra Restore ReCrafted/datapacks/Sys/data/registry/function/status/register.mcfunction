data modify storage registry:status new set value []
data modify storage registry:status data set value []
data modify storage registry:status this set value {}
function #registry:status

execute if data storage registry:status new[0] run function registry:status/parse/each