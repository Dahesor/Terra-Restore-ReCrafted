
scoreboard players set #temp calculator 0
scoreboard players set #temp2 calculator 0
data modify storage data equipment set from entity @s equipment

execute if data storage data equipment.head.components."minecraft:enchantments"."sys:core/magic_def" store result score #temp2 calculator run data get storage data equipment.head.components."minecraft:enchantments"."sys:core/magic_def"
scoreboard players operation #temp calculator += #temp2 calculator



scoreboard players set #temp2 calculator 0
execute if data storage data equipment.chest.components."minecraft:enchantments"."sys:core/magic_def" store result score #temp2 calculator run data get storage data equipment.chest.components."minecraft:enchantments"."sys:core/magic_def"
scoreboard players operation #temp calculator += #temp2 calculator



scoreboard players set #temp2 calculator 0
execute if data storage data equipment.legs.components."minecraft:enchantments"."sys:core/magic_def" store result score #temp2 calculator run data get storage data equipment.legs.components."minecraft:enchantments"."sys:core/magic_def"
scoreboard players operation #temp calculator += #temp2 calculator



scoreboard players set #temp2 calculator 0
execute if data storage data equipment.feet.components."minecraft:enchantments"."sys:core/magic_def" store result score #temp2 calculator run data get storage data equipment.feet.components."minecraft:enchantments"."sys:core/magic_def"
scoreboard players operation #temp calculator += #temp2 calculator



execute if score #temp calculator matches 1.. run function sys:player/stats/calcs/magic_def_parse
execute if score #temp calculator matches 1.. run function dah.actbar_mixer:append/before

