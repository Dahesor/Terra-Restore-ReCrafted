$data modify storage temp run.key set value "$(key)^$(new)"
data remove storage temp cb[0]
execute unless data storage temp cb[0] run return fail
data modify storage temp run.new set from storage temp cb[0]
function sys:dev/loop_append with storage temp run