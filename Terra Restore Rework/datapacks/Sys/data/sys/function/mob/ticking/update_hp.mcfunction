execute store result score $temp hp_cache run data get entity @s Health 100
execute store result score $temp2 hp_cache run data get entity @s AbsorptionAmount 100
scoreboard players operation $temp hp_cache += $temp2 hp_cache
execute unless score @s hp_cache = $temp hp_cache run scoreboard players operation @s hp_cache = $temp hp_cache