data modify storage sys:data Inv set from entity @s Inventory
function sys:player/utils/drop/dropped/get_curser
data remove storage sys:data Inv[{components:{"minecraft:custom_data":{ui:{}}}}]
data remove storage sys:data Inv[{components:{"minecraft:custom_data":{ui_check:1b}}}]
data remove storage sys:data Inv[{Slot:100b}]
data remove storage sys:data Inv[{Slot:101b}]
data remove storage sys:data Inv[{Slot:102b}]
data remove storage sys:data Inv[{Slot:103b}]
data remove storage sys:data Inv[{Slot:0b}]
data remove storage sys:data Inv[{Slot:1b}]
data remove storage sys:data Inv[{Slot:2b}]
data remove storage sys:data Inv[{Slot:3b}]
data remove storage sys:data Inv[{Slot:4b}]
data remove storage sys:data Inv[{Slot:5b}]
data remove storage sys:data Inv[{Slot:6b}]
data remove storage sys:data Inv[{Slot:7b}]
data remove storage sys:data Inv[{Slot:8b}]

function sys:player/utils/drop/dropped/clear_backpack

function sys:player/utils/drop/dropped/from_inv
function sys:player/utils/drop/display/spawn_head