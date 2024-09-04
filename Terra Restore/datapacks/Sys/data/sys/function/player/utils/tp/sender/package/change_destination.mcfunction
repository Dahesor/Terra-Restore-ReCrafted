tag @s add tp_sender
tag @s add quater_ticking
scoreboard players operation @s tp_cd = #temp2 calculator
scoreboard players operation @s tp = #temp calculator
data modify storage temp run set value {x:0,y:0,z:0}
data modify storage temp run.x set from storage sys:data spot[0]
data modify storage temp run.y set from storage sys:data spot[1]
data modify storage temp run.z set from storage sys:data spot[2]
function sys:player/utils/tp/sender/package/locate with storage temp run
execute at @s align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute at @s run function sys:player/utils/tp/display/initialize