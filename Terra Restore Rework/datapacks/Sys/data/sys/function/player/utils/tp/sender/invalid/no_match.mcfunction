scoreboard players set @s tp 0
tellraw @s {"translate":"tp.error.no_match","color":"red"}
execute at @s run playsound terra:ui.denied master @s ~ ~ ~ 1 1
tag @s remove tper