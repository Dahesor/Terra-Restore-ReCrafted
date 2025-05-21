summon marker ~ ~ ~ {Tags:["set_spawn"]}
execute store result score @s spawn_x run data get entity @e[type=marker,limit=1,tag=set_spawn,distance=..2] Pos[0]
execute store result score @s spawn_y run data get entity @e[type=marker,limit=1,tag=set_spawn,distance=..2] Pos[1]
execute store result score @s spawn_z run data get entity @e[type=marker,limit=1,tag=set_spawn,distance=..2] Pos[2]
kill @e[type=marker,limit=1,tag=set_spawn,distance=..2]

execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
tellraw @s {"translate":"action.set_spawn.success","color": "yellow"}