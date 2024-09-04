execute unless data storage temp item[0].id run return fail

summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["return_item"],PickupDelay:0s}
execute as @e[type=item,tag=return_item,limit=1,distance=..2] run function sys:player/ui/foolproof/return_item_self
data remove storage temp item[0]
function sys:player/ui/foolproof/return_from_temp