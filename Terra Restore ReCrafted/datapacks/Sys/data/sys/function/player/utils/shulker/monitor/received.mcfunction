data modify storage data item_list set from entity @s Inventory
execute if items entity @s inventory.* #shulker_boxes run function sys:player/utils/shulker/foolproofer/stacked
data modify storage data container set value []
execute if data storage data item_list[0] run function sys:player/utils/shulker/monitor/looper
item replace entity 0-0-0-0-0 container.0 from entity @s player.crafting.2
data modify entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:container" set from storage data container
item replace entity @s player.crafting.2 from entity 0-0-0-0-0 container.0
data modify entity 0-0-0-0-0 Items set value []