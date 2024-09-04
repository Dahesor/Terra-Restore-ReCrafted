data modify storage sys:data test set from storage sys:data tp[0]
execute store result score #temp calculator run data get storage sys:data test.by

$tellraw @a {"translate":"tp.leave.player","color": "yellow","with": [{"text": "$(display)","color": "aqua"}]}

data remove storage sys:data tp[0]