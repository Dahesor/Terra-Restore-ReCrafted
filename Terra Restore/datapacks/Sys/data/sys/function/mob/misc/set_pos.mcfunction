data modify entity @s Pos set from entity @s HandItems[0].components."minecraft:custom_data".setPos
execute if entity @s[tag=changed_pos_potion] run kill