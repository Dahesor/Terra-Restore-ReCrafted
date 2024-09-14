item modify entity 0-0-0-0-0 container.0 sys:att/fill_default
data modify storage sys:data item set from entity 0-0-0-0-0 Items[{Slot:0b}]
data modify storage sys:data item.components."minecraft:attribute_modifiers".show_in_tooltip set value 0b
data modify storage temp test set from storage sys:data item.components."minecraft:lore"[0]
execute if data storage temp {test:'{"translate":"identification.click"}'} run data remove storage sys:data item.components."minecraft:lore"[0]
data modify entity 0-0-0-0-0 Items[{Slot:0b}] set from storage sys:data item
item replace entity @s player.cursor from entity 0-0-0-0-0 container.0
data modify entity 0-0-0-0-0 Items set value []