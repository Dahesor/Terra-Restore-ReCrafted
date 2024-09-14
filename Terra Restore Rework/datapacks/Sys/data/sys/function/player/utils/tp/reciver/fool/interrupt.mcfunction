data modify storage temp run set value {UID:0}
execute store result storage temp run.UID int 1 run scoreboard players get @s UID
execute store result score #output calculator run function sys:player/utils/tp/reciver/fool/check_for_sys with storage temp run
execute if score #output calculator matches 1.. run function sys:core/tp/announce_interrupt with storage sys:data test
tag @s remove tpee