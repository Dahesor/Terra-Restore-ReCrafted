execute if data storage sys:data item.components."minecraft:attribute_modifiers".modifiers[{id:"minecraft:armor.helmet",type:"minecraft:generic.armor_toughness"}] store result score #temp calculator run data get storage sys:data item.components."minecraft:attribute_modifiers".modifiers[{id:"minecraft:armor.helmet",type:"minecraft:generic.armor_toughness"}].amount 10
execute if data storage sys:data item.components."minecraft:attribute_modifiers".modifiers[{id:"minecraft:armor.chestplate",type:"minecraft:generic.armor_toughness"}] store result score #temp calculator run data get storage sys:data item.components."minecraft:attribute_modifiers".modifiers[{id:"minecraft:armor.chestplate",type:"minecraft:generic.armor_toughness"}].amount 10
execute if data storage sys:data item.components."minecraft:attribute_modifiers".modifiers[{id:"minecraft:armor.leggings",type:"minecraft:generic.armor_toughness"}] store result score #temp calculator run data get storage sys:data item.components."minecraft:attribute_modifiers".modifiers[{id:"minecraft:armor.leggings",type:"minecraft:generic.armor_toughness"}].amount 10
execute if data storage sys:data item.components."minecraft:attribute_modifiers".modifiers[{id:"minecraft:armor.boots",type:"minecraft:generic.armor_toughness"}] store result score #temp calculator run data get storage sys:data item.components."minecraft:attribute_modifiers".modifiers[{id:"minecraft:armor.boots",type:"minecraft:generic.armor_toughness"}].amount 10

scoreboard players set @s calculator 0

execute unless data storage sys:mod result[{id:"generic.armor_toughness"}] run function sys:att/apply/lore/armor/only_default_armor

execute store result score @s calculator run data get storage sys:mod result[{id:"generic.armor_toughness"}].amount 10

data modify storage temp run set value {trans:"attribute.name.generic.armor_toughness",value:0,vc:0,modify:0,mc:0}

scoreboard players operation #temp calculator += @s calculator

execute if score #temp calculator matches 0 if score @s calculator matches 0 run return fail

execute if score #temp calculator matches 1.. run return run function sys:att/apply/lore/armor/positive

scoreboard players operation #temp calculator *= #-1 calculator
scoreboard players operation #temp2 calculator = #temp calculator
scoreboard players operation #temp2 calculator %= #10 calculator
scoreboard players operation #temp calculator /= #10 calculator
execute store result storage temp run.value int 1 run scoreboard players get #temp calculator
execute store result storage temp run.vc int 1 run scoreboard players get #temp2 calculator

scoreboard players operation #temp calculator = @s calculator
execute if score @s calculator matches ..-1 run scoreboard players operation @s calculator *= #-1 calculator
execute store result storage temp run.modify int 0.1 run scoreboard players get @s calculator
scoreboard players operation @s calculator %= #10 calculator
execute store result storage temp run.mc int 1 run scoreboard players get @s calculator

function sys:att/apply/lore/armor/negative_run with storage temp run


