execute unless data storage temp result[0] run return fail
data modify storage sys:mod test set from storage temp result[0]
data remove storage temp result[0]

data modify storage temp run set value {diff:1}
scoreboard players add $diff calculator 1
execute store result storage temp run.diff int 1 run scoreboard players get $diff calculator

execute if data storage sys:mod test{type:"AttModifier"} if items entity @s player.cursor #sys:pool/is_melee run function sys:att/apply/parse/attributes/apply_melee with storage temp run
execute if data storage sys:mod test{type:"AttModifier"} if items entity @s player.cursor #sys:pool/is_armor run function sys:att/apply/parse/attributes/apply_armor with storage temp run

function sys:att/apply/parse/specialize