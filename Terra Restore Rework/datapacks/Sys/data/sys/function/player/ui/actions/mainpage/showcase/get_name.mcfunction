data modify storage temp run set value ""
execute if data storage sys:data item.components."minecraft:custom_name" run return run data modify storage temp run set from storage sys:data item.components."minecraft:custom_name"
execute if data storage sys:data item.components."minecraft:item_name" run return run data modify storage temp run set from storage sys:data item.components."minecraft:item_name"
data modify storage temp run set value {id:""}
data modify storage temp run.id set string storage sys:data item.id 10
execute unless items entity @s weapon #sys:is_block run function sys:player/ui/actions/mainpage/showcase/get_translatation with storage temp run
execute if items entity @s weapon #sys:is_block run function sys:player/ui/actions/mainpage/showcase/get_translatation_block with storage temp run