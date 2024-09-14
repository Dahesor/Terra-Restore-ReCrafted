forceload add ~ ~
tp @s ~ ~ ~
execute unless block ~ ~ ~ moving_piston run setblock ~ ~ ~ moving_piston destroy
execute unless block ~ ~1 ~ moving_piston run setblock ~ ~1 ~ moving_piston destroy
forceload remove ~ ~
execute store result score @s region run function sys:player/get_region
scoreboard players set @s region_name 1
tag @s add region_name
scoreboard players set @s music -9
