scoreboard players set @s tp 0
tellraw @s {"translate":"tp.error.own","color":"red"}
execute at @s run playsound terra:ui.denied master @s ~ ~ ~ 1 1