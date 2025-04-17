#execute as @e[type=marker,tag=sign_util] at @s unless block ~ ~ ~ cherry_sign run function sys:core/repair_sign with entity @s data
execute as @e[type=marker,tag=sign_util,tag=!post1.21.5] at @s run function sys:dev/sign_util

execute as @e[type=#sys:need_ticking,distance=0..,tag=second_ticking] at @s run function sys:mob/ticking/second

gamerule keepInventory true

execute if loaded 3096 115 -1144 run function sys:legacy/13_utils/ladder/blink

execute if entity @a[scores={region=12}] positioned 2792.47 153.00 -1031.34 if entity @a[gamemode=!spectator,distance=..12] positioned 2788 153 -1031 run function sys:legacy/12_utils/mad_witch

execute if score 14_has_player data matches 0 if entity @a[scores={region=14,region_name=..1}] run function sys:legacy/14_utils/player_in
execute if score 14_has_player data matches 1 unless entity @a[scores={region=14}] run function sys:legacy/14_utils/player_out
execute if score 14_has_player data matches 1 positioned 3630.63 193.00 -412.85 if entity @a[gamemode=!spectator,distance=..115] run function sys:legacy/14_utils/random_events

execute unless score 16_has_player data matches 1 if entity @a[scores={region=16..17,region_name=..1}] run function sys:legacy/16_utils/player_in
execute unless score 16_has_player data matches 0 unless entity @a[scores={region=16..17}] run function sys:legacy/16_utils/player_out
execute if score 16_has_player data matches 1 run function sys:legacy/16_utils/lines_check