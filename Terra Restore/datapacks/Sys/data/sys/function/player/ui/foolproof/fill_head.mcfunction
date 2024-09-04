clear @s player_head[custom_data~{ui:{}}]
data modify storage temp Owner set from entity @s UUID
execute if items entity @s inventory.0 * run data modify storage temp item append from entity @s Inventory[{Slot:9b}]
execute if items entity @s inventory.0 * at @s run function sys:player/ui/foolproof/return_from_temp
execute if entity @s[tag=reading_container] run loot replace entity @s inventory.0 loot sys:ui/head_locked
execute unless entity @s[tag=reading_container] run loot replace entity @s inventory.0 loot sys:ui/head