execute unless data storage registry:skill temp[0].lore[0] run return fail

data modify storage temp run merge value {index:0}
execute store result storage temp run.index int 1 run scoreboard players get %count calculator
function registry:skills/parse/display/append_lore with storage temp run

execute if data storage registry:skill temp[0].lore[0].with run function registry:skills/parse/display/var_loop

#Loop
execute unless data storage registry:skill temp[0].lore[1] run return fail
data remove storage registry:skill temp[0].lore[0]
scoreboard players add %count calculator 1
function registry:skills/parse/display/lore_loop