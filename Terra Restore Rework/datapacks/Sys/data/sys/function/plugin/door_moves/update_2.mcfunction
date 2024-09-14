execute as @e[type=block_display,tag=door_moves,tag=!stair_moves] at @s run tp @s ~ ~3 ~
schedule function sys:plugin/door_moves/kill_display 3s
kill @e[type=block_display,tag=door_moves,tag=stair_moves]
fill 765 63 120 765 63 123 smooth_quartz_stairs[facing=east,half=bottom,shape=straight]
