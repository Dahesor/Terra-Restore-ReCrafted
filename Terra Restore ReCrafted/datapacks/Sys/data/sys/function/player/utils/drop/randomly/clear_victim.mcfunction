execute unless data storage sys:data Inv2[0] run return fail
data modify storage temp run set value {slot:0}
execute store result score #temp calculator run data get storage sys:data Inv2[0].Slot
execute if score #temp calculator matches 100 run item replace entity @s armor.feet with air
execute if score #temp calculator matches 101 run item replace entity @s armor.legs with air
execute if score #temp calculator matches 102 run item replace entity @s armor.chest with air
execute if score #temp calculator matches 103 run item replace entity @s armor.head with air
execute if score #temp calculator matches 0..35 store result storage temp run.slot int 1 run scoreboard players get #temp calculator
execute if score #temp calculator matches 0..35 run function sys:player/utils/drop/randomly/inv_macro with storage temp run
data remove storage sys:data Inv2[0]
function sys:player/utils/drop/randomly/clear_victim