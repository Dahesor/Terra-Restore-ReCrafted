playsound entity.arrow.shoot player @a ~ ~ ~ 0.3
data modify storage temp Owner set from entity @s UUID
data modify storage temp run set value {x:0.0f,y:0.0f}
execute store result storage temp run.x float -0.001 run data get entity @s Rotation[0] 1000
execute store result storage temp run.y float -0.001 run data get entity @s Rotation[1] 1000
#data modify storage temp run.y set from entity @s Rotation[1]

execute anchored eyes positioned ^ ^-0.2 ^0.5 run function registry:skills/attack/arrow_storm/spawn_arrow with storage temp run