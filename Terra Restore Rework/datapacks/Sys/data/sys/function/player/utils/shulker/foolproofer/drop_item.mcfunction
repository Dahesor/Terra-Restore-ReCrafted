
summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["shulker_illegal","shulker_illegal__"],PickupDelay:100s}
execute as @e[type=item,tag=shulker_illegal__,limit=1,distance=..2] run function sys:player/utils/shulker/foolproofer/drop_item_self
