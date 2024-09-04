execute store result score #postemp calculator run data get entity @s Pos[0]
execute unless score @s pos_x = #postemp calculator run return 1
execute store result score #postemp calculator run data get entity @s Pos[1]
execute unless score @s pos_y = #postemp calculator run return 1
execute store result score #postemp calculator run data get entity @s Pos[2]
execute unless score @s pos_z = #postemp calculator run return 1
return fail