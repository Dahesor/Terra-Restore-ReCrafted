execute as @e[type=block_display,tag=door_moves,tag=!stair_moves] at @s run tp @s ~ ~3 ~
execute as @e[type=block_display,tag=door_moves,tag=stair_moves] at @s run tp @s ~ ~0.8 ~
execute positioned 765.00 65.28 122.16 run playsound terra:event.move master @a ~ ~ ~ 0.75 0.68
schedule function sys:plugin/door_moves/update_2 3s
schedule function sys:plugin/door_moves/update_stais 2s
