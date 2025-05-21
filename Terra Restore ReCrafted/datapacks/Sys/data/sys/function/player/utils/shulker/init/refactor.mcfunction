data modify storage data item_list append from storage data container[0].item
data modify storage data item_list[-1].Slot set value 0b
execute store result storage data item_list[-1].Slot byte 1 run data get storage data container[0].slot
data remove storage data container[0]
execute if data storage data container[0] run function sys:player/utils/shulker/init/refactor