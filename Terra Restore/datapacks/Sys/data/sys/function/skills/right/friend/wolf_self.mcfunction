data modify entity @s Owner set from storage temp run
tag @s add player_wolf
tag @s add second_ticking
execute store result score @s genericCD run time query gametime
scoreboard players add @s genericCD 1200