#function dfh:logic/revive
scoreboard players set @s death 0
data modify storage terra:spawn pos set value {x:0,y:0,z:0}
execute store result storage terra:spawn pos.x int 1 run scoreboard players get @s spawn_x
execute store result storage terra:spawn pos.y int 1 run scoreboard players get @s spawn_y
execute store result storage terra:spawn pos.z int 1 run scoreboard players get @s spawn_z
function sys:player/life/locate with storage terra:spawn pos
execute if entity @s[tag=boss_spectate] run function sys:player/life/domains/go_spectate
execute if entity @s[tag=domain_tpback] run function sys:player/life/domains/tp_back