scoreboard players operation @s opening = $temp calculator
scoreboard players add $temp calculator 1
execute unless score $temp calculator matches 1..4 run scoreboard players set $temp calculator 1
effect give @s invisibility 600 0 true
scoreboard players set @s opening 2