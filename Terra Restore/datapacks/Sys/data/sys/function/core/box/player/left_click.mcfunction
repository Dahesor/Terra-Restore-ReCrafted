advancement revoke @s only sys:left_interaction
scoreboard players set #temp calculator -1
tag @s add interation_temp
execute as @e[type=interaction,distance=..10,tag=box] run function sys:core/box/player/check_attack
tag @s remove interation_temp
execute if score #temp calculator matches ..-1 run return fail
function sys:core/box/player/get_data