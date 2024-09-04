execute positioned 765.00 65.28 122.16 run playsound terra:event.slide_door master @a[distance=..15] ~ ~ ~ 1 1 1

forceload add 764 123
setblock 764 64 121 air destroy
execute positioned 764 64 121 run kill @n[type=marker,tag=sign_util]

fill 765 62 120 765 69 123 barrier

execute positioned 765 62 120 run function sys:plugin/door_moves/stair
execute positioned 765 62 121 run function sys:plugin/door_moves/stair
execute positioned 765 62 122 run function sys:plugin/door_moves/stair
execute positioned 765 62 123 run function sys:plugin/door_moves/stair


execute positioned 765 63 120 run function sys:plugin/door_moves/entity
execute positioned 765 63 121 run function sys:plugin/door_moves/entity
execute positioned 765 63 122 run function sys:plugin/door_moves/entity
execute positioned 765 63 123 run function sys:plugin/door_moves/entity
execute positioned 765 64 120 run function sys:plugin/door_moves/entity
execute positioned 765 64 121 run function sys:plugin/door_moves/entity
execute positioned 765 64 122 run function sys:plugin/door_moves/entity
execute positioned 765 64 123 run function sys:plugin/door_moves/entity
execute positioned 765 65 120 run function sys:plugin/door_moves/entity
execute positioned 765 65 121 run function sys:plugin/door_moves/entity
execute positioned 765 65 122 run function sys:plugin/door_moves/entity
execute positioned 765 65 123 run function sys:plugin/door_moves/entity
execute positioned 765 66 120 run function sys:plugin/door_moves/entity
execute positioned 765 66 121 run function sys:plugin/door_moves/entity
execute positioned 765 66 122 run function sys:plugin/door_moves/entity
execute positioned 765 66 123 run function sys:plugin/door_moves/entity
execute positioned 765 67 120 run function sys:plugin/door_moves/entity
execute positioned 765 67 121 run function sys:plugin/door_moves/entity
execute positioned 765 67 122 run function sys:plugin/door_moves/entity
execute positioned 765 67 123 run function sys:plugin/door_moves/entity
execute positioned 765 68 120 run function sys:plugin/door_moves/entity
execute positioned 765 68 121 run function sys:plugin/door_moves/entity
execute positioned 765 68 122 run function sys:plugin/door_moves/entity
execute positioned 765 68 123 run function sys:plugin/door_moves/entity
execute positioned 765 69 120 run function sys:plugin/door_moves/entity
execute positioned 765 69 121 run function sys:plugin/door_moves/entity
execute positioned 765 69 122 run function sys:plugin/door_moves/entity
execute positioned 765 69 123 run function sys:plugin/door_moves/entity
execute as @e[type=block_display,tag=door_moves,tag=!stair_moves] at @s run tp @s ~ ~3 ~
schedule function sys:plugin/door_moves/update_1 3s


function dah.sch:set {time:45,run:"fill 765 64 120 765 64 123 air"}
function dah.sch:set {time:55,run:"fill 765 65 120 765 65 123 air"}
function dah.sch:set {time:65,run:"fill 765 66 120 765 66 123 air"}
function dah.sch:set {time:75,run:"fill 765 67 120 765 67 123 air"}
function dah.sch:set {time:85,run:"fill 765 68 120 765 68 123 air"}
function dah.sch:set {time:95,run:"fill 765 69 120 765 69 123 air"}