data modify storage terra:spawn pos set value {x:0,y:0,z:0}
execute store result storage terra:spawn pos.x int 1 run data get entity @s Pos[0]
execute store result storage terra:spawn pos.y int 1 run data get entity @s Pos[1]
execute store result storage terra:spawn pos.z int 1 run data get entity @s Pos[2]
function sys:dev/give_sign with storage terra:spawn pos