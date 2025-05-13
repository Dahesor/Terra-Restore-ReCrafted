#初始化
scoreboard players set $region calculator 1
scoreboard players operation $region calculator = @s region
data modify storage sys:mod result set value []
item replace entity 0-0-0-0-0 container.0 from entity @s player.cursor
item modify entity 0-0-0-0-0 container.0 sys:att/fill_default
data modify storage sys:data item set from entity 0-0-0-0-0 Items[{Slot:0b}]
function sys:att/apply/lore/remove_hint
data remove storage data modifiers
data remove storage data additional_atts

#获取武器类型
execute if items entity 0-0-0-0-0 container.0 #swords run function sys:att/apply/types/sword
execute if items entity 0-0-0-0-0 container.0 #head_armor run function sys:att/apply/types/helmet
execute if items entity 0-0-0-0-0 container.0 #chest_armor run function sys:att/apply/types/chestplate
execute if items entity 0-0-0-0-0 container.0 #leg_armor run function sys:att/apply/types/leggings
execute if items entity 0-0-0-0-0 container.0 #foot_armor run function sys:att/apply/types/boots

#传回物品
data modify entity 0-0-0-0-0 Items[{Slot:0b}] set from storage sys:data item
item replace entity @s player.cursor from entity 0-0-0-0-0 container.0

#清理内存
data remove storage data class
data remove storage sys:data item
data modify entity 0-0-0-0-0 Items set value []

#叮！
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~