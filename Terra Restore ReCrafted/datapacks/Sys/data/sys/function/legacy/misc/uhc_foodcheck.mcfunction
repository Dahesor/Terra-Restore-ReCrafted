execute store result score #temp calculator run data get entity @s foodLevel
execute if score #temp calculator matches ..11 if entity @s[tag=uhc_hunger] run effect clear @s hunger
execute if score #temp calculator matches ..11 if entity @s[tag=uhc_hunger] run tag @s remove uhc_hunger
execute if score #temp calculator matches 12.. run effect give @s hunger 1 250 true
execute if score #temp calculator matches 12.. run tag @s add uhc_hunger
execute if score #temp calculator matches ..7 run effect give @s saturation 1 1 true


