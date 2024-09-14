execute if score @s region_name matches ..0 run scoreboard players set @s region_name 0
scoreboard players add @s region_name 8
execute if score @s region_name matches 20.. run scoreboard players set @s region_name 20
tag @s add region_name

execute if score @s region matches 200 if score #new region matches 8..9 run return fail
execute if score @s region matches 8..9 if score #new region matches 200 run return fail
execute if score @s region matches 8..9 if score #new region matches 8..9 run return fail
scoreboard players set @s music 8

execute if entity @s[tag=!been_to_base] if score #new region matches 100 run function sys:player/region_name/base