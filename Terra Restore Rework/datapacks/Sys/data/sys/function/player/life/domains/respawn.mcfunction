tag @s remove in_boss
tag @s remove in_boss_wither
tag @s remove domain_tpback
tag @s remove boss_spectate
tag @s remove boss_wither_tpback
tag @s remove boss_wither_spectate
tag @s remove boss_army_spectate
tag @s remove boss_army_tpback
tag @s remove boss_void_spectate
tag @s remove boss_void_tpback
clear @s *[custom_data~{is_temp:1b}]
gamemode survival
data modify storage terra:spawn pos set value {x:0,y:0,z:0}
execute store result storage terra:spawn pos.x int 1 run scoreboard players get @s spawn_x
execute store result storage terra:spawn pos.y int 1 run scoreboard players get @s spawn_y
execute store result storage terra:spawn pos.z int 1 run scoreboard players get @s spawn_z
function sys:player/life/locate with storage terra:spawn pos
