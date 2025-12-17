scoreboard players set #temp dfh.calculator 0
scoreboard players set #temp2 dfh.calculator 0
data modify storage data equipment set from entity @s equipment

execute if data storage data equipment.head.components."minecraft:enchantments"."minecraft:protection" store result score #temp2 dfh.calculator run data get storage data equipment.head.components."minecraft:enchantments"."minecraft:protection"
scoreboard players operation #temp dfh.calculator += #temp2 dfh.calculator

scoreboard players set #temp2 dfh.calculator 0
execute if data storage data equipment.chest.components."minecraft:enchantments"."minecraft:protection" store result score #temp2 dfh.calculator run data get storage data equipment.chest.components."minecraft:enchantments"."minecraft:protection"
scoreboard players operation #temp dfh.calculator += #temp2 dfh.calculator



scoreboard players set #temp2 dfh.calculator 0
execute if data storage data equipment.legs.components."minecraft:enchantments"."minecraft:protection" store result score #temp2 dfh.calculator run data get storage data equipment.legs.components."minecraft:enchantments"."minecraft:protection"
scoreboard players operation #temp dfh.calculator += #temp2 dfh.calculator



scoreboard players set #temp2 dfh.calculator 0
execute if data storage data equipment.feet.components."minecraft:enchantments"."minecraft:protection" store result score #temp2 dfh.calculator run data get storage data equipment.feet.components."minecraft:enchantments"."minecraft:protection"
scoreboard players operation #temp dfh.calculator += #temp2 dfh.calculator

scoreboard players operation @s dfh.ench_defence = #temp dfh.calculator