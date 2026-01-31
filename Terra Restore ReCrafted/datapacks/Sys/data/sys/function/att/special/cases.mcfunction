#初始化
item replace entity 0-0-0-0-0 container.0 from entity @s player.cursor
data modify storage sys:data item set from entity 0-0-0-0-0 Items[{Slot:0b}]

execute if data storage sys:data item.components."minecraft:custom_data".skill_book_unkown run return run function sys:att/special/skill_book/ibk_main