function sys:core/tp/tick
function sys:core/events/runner
scoreboard players set $player data 0
execute as @a at @s run function sys:player/tick
scoreboard players add #loop_5 calculator 1
execute if score #loop_5 calculator matches 5.. run scoreboard players set #loop_5 calculator 0
scoreboard players add #loop_20 calculator 1
execute if score #loop_5 calculator matches 3 if loaded 2793 151 -1003 run particle enchant 2973 151.5 -1003 0 0 0 5 750 normal @a
execute if score #loop_20 calculator matches 20.. run scoreboard players set #loop_20 calculator 0
execute if score #loop_20 calculator matches 13 run function sys:second
execute as @e[type=player,scores={death=1..}] run function sys:player/life/normal_revive
execute as @e[type=#sys:mobs,distance=0..,tag=!fully_resolved] at @s run function sys:mob/new
execute as @e[type=#sys:need_ticking,distance=0..,tag=ticking] run function sys:mob/ticking/specialize
execute as @e[type=#sys:mobs,distance=0..,nbt={HurtTime:9s}] run function sys:mob/ticking/update_hp
execute if score #loop_5 calculator matches 3 as @e[type=#sys:need_ticking,distance=0..,tag=quater_ticking] at @s run function sys:mob/ticking/quater