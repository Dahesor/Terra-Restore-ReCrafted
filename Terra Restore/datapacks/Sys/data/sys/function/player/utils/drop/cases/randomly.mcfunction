data modify storage sys:data Inv2 set from entity @s Inventory
data remove storage sys:data Inv2[{components:{"minecraft:custom_data":{ui:{}}}}]
data remove storage sys:data Inv2[{components:{"minecraft:custom_data":{ui_check:1b}}}]

data modify storage sys:data Inv set value []
function sys:player/utils/drop/randomly/looper
data modify storage sys:data Inv2 set from storage sys:data Inv
function sys:player/utils/drop/randomly/clear_victim

function sys:player/utils/drop/dropped/get_curser

data remove storage sys:data Inv[{components:{"minecraft:custom_data":{ui:{}}}}]
data remove storage sys:data Inv[{components:{"minecraft:custom_data":{ui_check:1b}}}]

function sys:player/utils/drop/dropped/from_inv
function sys:player/utils/drop/display/spawn_head