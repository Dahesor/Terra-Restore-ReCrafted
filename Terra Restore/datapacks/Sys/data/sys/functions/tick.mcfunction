execute as @a run function sys:player/tick

scoreboard players add #loop_20 calculator 1
execute if score #loop_20 calculator matches 20.. run scoreboard players set #loop_20 calculator 0
execute if score #loop_20 calculator matches 13 run function sys:second