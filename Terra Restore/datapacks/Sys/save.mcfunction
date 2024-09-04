scoreboard players set @s right_trigger 0
#首先重置分数

data modify storage trigger:right temp set value ""
#重置缓存用的存储

execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data"{trigger:{}} run data modify storage trigger:right temp set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data"{trigger:{}}.trigger.id
#如果玩家副手物品有自定义数据，就将其触发器id存储到缓存用的存储中

execute if data entity @s SelectedItem.components."minecraft:custom_data"{trigger:{}} run data modify storage trigger:right temp set from entity @s SelectedItem.components."minecraft:custom_data"{trigger:{}}.trigger.id
#如果玩家主手物品有自定义数据，就将其触发器id存储到缓存用的存储中
#这里的主手物品优先级高于副手物品

execute if data storage trigger:right {temp:"苹果"} run say 触发了苹果
execute if data storage trigger:right {temp:"香蕉"} run say 触发了香蕉
execute if data storage trigger:right {temp:"葡萄"} run say 触发了葡萄
#根据触发器id来判断触发了什么