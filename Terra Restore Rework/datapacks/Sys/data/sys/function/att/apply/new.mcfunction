scoreboard players set $region calculator 1
data modify storage sys:mod result set value []
item replace entity 0-0-0-0-0 container.0 from entity @s player.cursor
execute if items entity @s player.cursor #sys:pool/is_tools run return run function sys:att/apply/temp_tools
execute if items entity @s player.cursor #sys:pool/is_melee run item modify entity 0-0-0-0-0 container.0 sys:att/fill_default
execute unless items entity @s player.cursor #sys:pool/is_melee run item modify entity 0-0-0-0-0 container.0 sys:att/fill_default_non_weapon
data modify storage sys:data item set from entity 0-0-0-0-0 Items[{Slot:0b}]
data modify storage sys:data item.components."minecraft:tooltip_display".hidden_components append value "attribute_modifiers"
scoreboard players operation $region calculator = @s region
function sys:att/apply/get_points
#tellraw @a {"score": {"name": "$p","objective": "calculator"},"color": "yellow"}
function sys:att/formule/max_min_range
function sys:att/apply/get_pool
function sys:att/apply/loop_apply
data modify storage temp result set from storage sys:mod result
function sys:att/apply/parse/specialize
execute if items entity @s player.cursor #sys:pool/is_melee run function sys:att/apply/lore/main
execute unless items entity @s player.cursor #sys:pool/is_melee run function sys:att/apply/lore/armor_main

data modify storage sys:data item.components."minecraft:custom_data".score set value 0
execute if score $p calculator matches ..0 run scoreboard players operation #p_saved calculator -= $p calculator
execute store result storage sys:data item.components."minecraft:custom_data".score int 1 run scoreboard players get #p_saved calculator
data modify entity 0-0-0-0-0 Items[{Slot:0b}] set from storage sys:data item
item replace entity @s player.cursor from entity 0-0-0-0-0 container.0
data modify entity 0-0-0-0-0 Items set value []