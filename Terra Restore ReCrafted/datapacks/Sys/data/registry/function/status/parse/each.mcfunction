data modify storage registry:status data prepend from storage registry:status new[0]
data modify storage registry:status data[0].body set value {translate:""}
function registry:status/parse/__get_body with storage registry:status data[0]
data remove storage registry:status new[0]
execute if data storage registry:status new[0] run function registry:status/parse/each