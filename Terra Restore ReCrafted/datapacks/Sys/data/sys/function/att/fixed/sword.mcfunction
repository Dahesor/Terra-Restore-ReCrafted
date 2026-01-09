#初始化
item replace entity 0-0-0-0-0 container.0 with diamond_sword 1
item modify entity 0-0-0-0-0 container.0 sys:att/fill_default
data modify storage sys:data item set from entity 0-0-0-0-0 Items[{Slot:0b}]
function sys:att/apply/lore/remove_hint
data remove storage data modifiers
data remove storage data additional_atts

$data modify storage temp run set value {weapon:"sword",type:"$(type)",prefix:"$(prefix)"}

#获取武器类型
function sys:att/fixed/sword_mod with storage temp run

#传回物品
data modify entity 0-0-0-0-0 Items[{Slot:0b}] set from storage sys:data item
item replace entity @s weapon from entity 0-0-0-0-0 container.0

#清理内存
data remove storage data class
data remove storage sys:data item
data modify entity 0-0-0-0-0 Items set value []

return 1
function sys:att/fixed/sword {type:"foil",prefix:"elegant"}