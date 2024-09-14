scoreboard players operation #temp calculator = @s loot_box
execute as @e[type=item,tag=box_item,distance=..10] if score @s loot_box = #temp calculator run kill
function sys:core/box/manage/get
execute positioned ~ ~0.2 ~ run summon item ~ ~ ~ {Tags:["new_item","box_item"],Item:{id:"barrier",count:1}}
execute as @e[type=item,distance=..3,tag=new_item] run function sys:core/box/load/item_self
