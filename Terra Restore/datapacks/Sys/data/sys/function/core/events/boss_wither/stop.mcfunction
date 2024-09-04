execute as @e[type=wither,tag=boss_wither] run function sys:core/despawn
kill @e[type=area_effect_cloud,tag=boss_wither_cloud]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{is_temp:1b}}}}]
kill @e[type=skeleton,tag=boss_wither_kill]
execute positioned 347.84 49.00 -783.05 run kill @e[type=experience_orb,distance=..100]
clear @a[tag=in_boss_wither] *[custom_data~{is_temp:1b}]
scoreboard players reset boss_wither data
scoreboard players reset boss_1_bow data
scoreboard players reset boss_1_skeleton data
scoreboard players reset boss_1_players data
scoreboard players reset boss_1_cake data
forceload remove 381 -761 312 -808
forceload remove 760 -970