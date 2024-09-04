data modify storage sys:data Inv set from entity @s Inventory

function sys:player/utils/drop/dropped/get_curser

data remove storage sys:data Inv[{components:{"minecraft:custom_data":{ui:{}}}}]
data remove storage sys:data Inv[{components:{"minecraft:custom_data":{ui_check:1b}}}]


function sys:player/utils/drop/dropped/from_inv
clear @s
function sys:player/utils/drop/display/spawn_head