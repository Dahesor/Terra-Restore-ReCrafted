execute store result score $temp dfh.hp_cache run data get entity @s Health 100
execute store result score $temp2 dfh.hp_cache run data get entity @s AbsorptionAmount 100
scoreboard players operation $temp dfh.hp_cache += $temp2 dfh.hp_cache
execute unless score @s dfh.hp_cache = $temp dfh.hp_cache run scoreboard players operation @s dfh.hp_cache = $temp dfh.hp_cache

