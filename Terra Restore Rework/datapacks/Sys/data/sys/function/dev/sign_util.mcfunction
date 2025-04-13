#execute if entity @e[type=marker,tag=sign_util,distance=..1.5] run return run kill @s
tag @s add sign_util
tag @s add post1.21.5
data modify entity @s data.sign set from block ~ ~ ~ front_text
execute if block ~ ~ ~ #wall_signs[facing=north] run data modify entity @s data.facing set value "north"
execute if block ~ ~ ~ #wall_signs[facing=south] run data modify entity @s data.facing set value "south"
execute if block ~ ~ ~ #wall_signs[facing=east] run data modify entity @s data.facing set value "east"
execute if block ~ ~ ~ #wall_signs[facing=west] run data modify entity @s data.facing set value "west"
execute if block ~ ~ ~ oak_wall_sign run setblock ~ ~ ~ air
execute if block ~ ~ ~ air run function sys:core/repair_sign with entity @s data
particle cloud ~ ~ ~ 0.1 0.1 0.1 0.1 20

