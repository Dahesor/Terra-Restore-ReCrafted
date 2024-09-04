kill @e[type=minecraft:armor_stand,tag=11_opening_spec]

gamemode survival @a[scores={region=11}]
execute as @a[scores={region=11}] run tp @s 2254.56 88.00 -1136.56 -77.86 4.28
scoreboard players set spectate great_wall 0
forceload remove 2443 -922
forceload remove 2456 -925
tag @a[scores={region=11}] remove in_event
tag @a[scores={region=11}] remove in_boss
function sys:core/events/great_wall_opening/system/completed