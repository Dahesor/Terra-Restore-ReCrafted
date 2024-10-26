execute store result score #temp calculator run data get storage sys:data item.components."minecraft:attribute_modifiers".modifiers[{id:"minecraft:base_attack_speed"}].amount 100
execute store result score #temp2 calculator run attribute @s attack_speed base get 100
scoreboard players operation #temp calculator += #temp2 calculator
scoreboard players add #temp calculator 210
scoreboard players operation #temp calculator /= #10 calculator

execute unless data storage sys:mod result[{id:"attack_speed"}] run return run function sys:att/apply/lore/dmg/only_default

data modify storage temp run set value {trans:"attribute.name.attack_speed",value:0,modify:0,mc:0,vc:0}

execute store result score @s calculator run data get storage sys:mod result[{id:"attack_speed"}].amount 10

execute if score @s calculator matches 1.. run return run function sys:att/apply/lore/dmg/pos

scoreboard players operation #temp calculator += @s calculator
scoreboard players operation @s calculator *= #-1 calculator
scoreboard players operation #temp2 calculator = @s calculator
scoreboard players operation #temp2 calculator %= #10 calculator
execute store result storage temp run.mc int 1 run scoreboard players get #temp2 calculator
scoreboard players operation @s calculator /= #10 calculator
execute store result storage temp run.modify int 1 run scoreboard players get @s calculator
execute store result storage temp run.value int 0.1 run scoreboard players get #temp calculator
scoreboard players operation #temp calculator %= #10 calculator
execute store result storage temp run.vc int 1 run scoreboard players get #temp calculator

function sys:att/apply/lore/default_neg with storage temp run

