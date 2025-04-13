clear @s *[custom_data~{ui:{}}]
function sys:player/ui/actions/backpack
execute if score @s showcaseCD matches 1.. run tellraw @s {"translate": "ui.showcase.cd","color": "red"}
execute if score @s showcaseCD matches 1.. at @s run return run playsound terra:ui.denied master @s ~ ~ ~ 1 1 1
execute unless data entity @s SelectedItem.id at @s run tellraw @s {"translate": "ui.showcase.empty","color": "red"}
execute unless data entity @s SelectedItem.id at @s run return run playsound terra:ui.denied master @s ~ ~ ~ 1 1 1
scoreboard players set @s showcaseCD 3
data modify storage sys:data item set value {id:"apple",count:1,components:{}}
data modify storage sys:data item merge from entity @s SelectedItem
function sys:player/ui/actions/mainpage/showcase/main with storage sys:data item
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1