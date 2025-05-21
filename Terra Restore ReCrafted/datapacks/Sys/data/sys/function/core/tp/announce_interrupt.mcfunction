data modify storage sys:data test set from storage sys:data tp[0]
execute store result score #temp calculator run data get storage sys:data test.by

$tellraw @a {"translate":"tp.stopped.player","color": "yellow","with": [{"text":"$(display)","color": "aqua"}]}
execute as @e[type=marker,tag=tp_center] if score @s tp = #temp calculator run kill
execute as @e[type=marker,tag=tp_sender] if score @s tp = #temp calculator run kill
execute as @a[tag=tper] if score @s tp = #temp calculator run function sys:player/utils/tp/sender/package/interruptted

data remove storage sys:data tp[0]