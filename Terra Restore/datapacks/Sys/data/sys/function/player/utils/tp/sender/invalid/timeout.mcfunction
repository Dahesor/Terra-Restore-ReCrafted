scoreboard players set @s tp 0
tellraw @s {"translate":"tp.error.time","color":"red"}
execute at @s run playsound terra:ui.denied master @s ~ ~ ~ 1 1
tag @s remove tper
scoreboard players set @s tp_cd 0