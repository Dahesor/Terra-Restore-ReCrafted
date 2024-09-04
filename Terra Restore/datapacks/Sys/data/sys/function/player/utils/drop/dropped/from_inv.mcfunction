execute unless data storage sys:data Inv[0] run return fail
data remove storage sys:data Inv[0].Slot
summon item ~ ~ ~ {Item:{id:"barrier",count:1b},Tags:["dropped_item","new_dropped_item"],Age:-12000s}
execute as @e[type=item,tag=dropped_item,tag=new_dropped_item,limit=1,distance=..2] run function sys:player/utils/drop/dropped/item_self
data remove storage sys:data Inv[0]
function sys:player/utils/drop/dropped/from_inv