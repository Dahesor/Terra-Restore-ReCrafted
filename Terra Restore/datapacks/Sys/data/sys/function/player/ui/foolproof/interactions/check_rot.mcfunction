

execute store result score #temp zcache_rot_x run data get entity @s Rotation[0] 1000
execute unless score #temp zcache_rot_x = @s zcache_rot_x run return 1
execute store result score #temp zcache_rot_y run data get entity @s Rotation[1] 1000
execute unless score #temp zcache_rot_y = @s zcache_rot_y run return 1
return fail