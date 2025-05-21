#声效
tag @s remove __shulker
data modify storage temp item set value []
data modify storage temp Owner set from entity @s UUID
playsound terra:event.shulker_open player @s ~ ~ ~ 1 1.4 1

#数据
item replace entity 0-0-0-0-0 container.0 from entity @s player.crafting.2
data modify storage data container set value []
data modify storage data item_list set value []
data modify storage data container set from entity 0-0-0-0-0 Items[{Slot:0b}].components."minecraft:container"
execute if data storage data container[0] run function sys:player/utils/shulker/init/refactor
data modify entity 0-0-0-0-0 Items set from storage data item_list

#放置物品
item replace entity @s inventory.0 from entity 0-0-0-0-0 container.0
item replace entity @s inventory.9 from entity 0-0-0-0-0 container.9
item replace entity @s inventory.18 from entity 0-0-0-0-0 container.18
item replace entity @s inventory.26 from entity 0-0-0-0-0 container.26
function sys:player/ui/actions/change_skill/render/fill_items

#副手
item modify entity @s player.crafting.2 sys:util/stamp_time
tag @s add __shulker