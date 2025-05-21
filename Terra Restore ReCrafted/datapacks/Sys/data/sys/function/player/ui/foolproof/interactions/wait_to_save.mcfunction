scoreboard players remove @s zcache_timer 1
execute unless score @s zcache_timer matches 1.. run return fail
execute store result score @s zcache_rot_x run data get entity @s Rotation[0] 1000
execute store result score @s zcache_rot_y run data get entity @s Rotation[1] 1000