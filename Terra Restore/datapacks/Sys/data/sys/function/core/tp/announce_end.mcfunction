data modify storage sys:data test set from storage sys:data tp[0]
execute store result score #temp calculator run data get storage sys:data test.by

$tellraw @a {"translate":"tp.end.player","color": "yellow","with": [{"translate":"function.Sys.data.sys.function.core.tp.announce_end.line3","color": "aqua"}]}

execute if score #temp calculator matches 1.. as @a[tag=tpee] if score @s UID = #temp calculator run tag @s remove tpee
execute as @e[type=marker,tag=tp_center] if score @s tp = #temp calculator run kill
execute as @e[type=marker,tag=tp_sender] if score @s tp = #temp calculator run kill
execute as @a[tag=tper] if score @s tp = #temp calculator run function sys:player/utils/tp/sender/package/interruptted

data remove storage sys:data tp[0]
execute if data storage sys:data tp[0] run function sys:core/tp/check_end
