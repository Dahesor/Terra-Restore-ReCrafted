data modify storage temp run set value {id:1}
data modify storage temp run.id set from storage sys:data item.components."minecraft:custom_data".skill_book_unkown
function registry:skills/book_data with storage temp run

data modify entity 0-0-0-0-0 Items[{Slot:0b}] set value {id:"barrier"}
data modify entity 0-0-0-0-0 Items[{Slot:0b}] merge from storage data item

#传回物品
item replace entity @s player.cursor from entity 0-0-0-0-0 container.0

#清理内存
data remove storage sys:data item
data modify entity 0-0-0-0-0 Items set value []

#叮！
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~