advancement revoke @s only sys:consume/skill_book
function sys:player/uid/get

data modify storage data item set from entity @s SelectedItem
data modify storage data custom_data set from storage data item.components."minecraft:custom_data"

execute if function sys:player/utils/skill_book/check_exist run return run function sys:player/utils/skill_book/success

tellraw @s {translate:"action.already_learned",color:"red"}
playsound terra:ui.denied master @s ~ ~ ~ 1 1.3

scoreboard players set @s right.pause 6
item replace entity @s weapon with air
summon item ~ ~1 ~ {Item:{id:"barrier",components:{item_model:"knowledge_book"}},PickupDelay:32767s,Tags:["new_skill_book"]}
execute as @n[type=item,tag=new_skill_book] positioned as @s run function sys:player/utils/skill_book/return_book