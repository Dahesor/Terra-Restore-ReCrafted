#say 1

#初始化
scoreboard players set $region calculator 1
scoreboard players operation $region calculator = @s region
data modify storage sys:mod result set value []
item replace entity 0-0-0-0-0 container.0 from entity @s player.cursor
item modify entity 0-0-0-0-0 container.0 sys:att/fill_default
data modify storage sys:data item set from entity 0-0-0-0-0 Items[{Slot:0b}]
function sys:att/apply/lore/remove_hint


#获取武器类型
execute if items entity 0-0-0-0-0 container.0 #swords run function sys:att/apply/types/sword


#清理内存
data remove storage data class

#传回物品
data modify entity 0-0-0-0-0 Items[{Slot:0b}] set from storage sys:data item
item replace entity @s player.cursor from entity 0-0-0-0-0 container.0
data modify entity 0-0-0-0-0 Items set value []

return 0


#execute if items entity @s player.cursor #sys:pool/is_tools run return run function sys:att/apply/temp_tools
#execute if items entity @s player.cursor #sys:pool/is_melee run item modify entity 0-0-0-0-0 container.0 sys:att/fill_default
#execute unless items entity @s player.cursor #sys:pool/is_melee run item modify entity 0-0-0-0-0 container.0 sys:att/fill_default_non_weapon
#data modify storage sys:data item set from entity 0-0-0-0-0 Items[{Slot:0b}]
#data modify storage sys:data item.components."minecraft:tooltip_display".hidden_components append value "attribute_modifiers"
#function sys:att/apply/get_points
#tellraw @a {"score": {"name": "$p","objective": "calculator"},"color": "yellow"}
#function sys:att/formule/max_min_range
#function sys:att/apply/get_pool
#function sys:att/apply/loop_apply
#data modify storage temp result set from storage sys:mod result
#function sys:att/apply/parse/specialize
#execute if items entity @s player.cursor #sys:pool/is_melee run function sys:att/apply/lore/main
#execute unless items entity @s player.cursor #sys:pool/is_melee run function sys:att/apply/lore/armor_main

#data modify storage sys:data item.components."minecraft:custom_data".score set value 0
#execute if score $p calculator matches ..0 run scoreboard players operation #p_saved calculator -= $p calculator
#execute store result storage sys:data item.components."minecraft:custom_data".score int 1 run scoreboard players get #p_saved calculator