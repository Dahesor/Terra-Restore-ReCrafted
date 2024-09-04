execute as @a if score @s UID = #temp calculator run tag @s remove tpee
execute as @e[type=marker,tag=tp_sender] if score @s tp = #temp calculator run kill
execute as @a[tag=tper] if score @s tp = #temp calculator run function sys:player/utils/tp/sender/package/interruptted
data modify storage temp run set value {UID:0}
execute store result storage temp run.UID int 1 run scoreboard players get #temp calculator
function sys:player/utils/tp/reciver/fool/check_for_sys with storage temp run
function sys:core/tp/announce_terminate with storage sys:data test
kill