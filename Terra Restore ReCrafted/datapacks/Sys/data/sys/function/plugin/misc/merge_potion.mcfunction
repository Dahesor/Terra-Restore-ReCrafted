execute unless data block 1580 106 -89 Items[{id:"minecraft:potion"}] run return fail
playsound block.enchantment_table.use master @s ~ ~ ~ 1 0.8 1
data modify block 1580 106 -89 Items[{id:"minecraft:potion"}].components."minecraft:max_stack_size" set value 16
