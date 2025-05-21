execute unless data storage registry:skill temp[0].lore[0].with[0] run return fail
data modify storage temp run2 set from storage registry:skill temp[0].lore[0].with[0].type

#types
execute if data storage temp {run2:"const"} run function registry:skills/parse/display/with/const
execute if data storage temp {run2:"stats"} run function registry:skills/parse/display/with/stats
execute if data storage temp {run2:"expression"} run function registry:skills/parse/display/with/expression

data remove storage registry:skill temp[0].lore[0].with[0]
execute if data storage registry:skill temp[0].lore[0].with[0] run function registry:skills/parse/display/var_loop