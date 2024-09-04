execute if items entity @s player.crafting.0 *[!custom_data~{ui_check:1b}] run item replace entity @s inventory.18 from entity @s player.crafting.0
execute if items entity @s player.crafting.1 *[!custom_data~{ui_check:1b}] run item replace entity @s inventory.19 from entity @s player.crafting.1
execute if items entity @s player.crafting.2 *[!custom_data~{ui_check:1b}] run item replace entity @s inventory.20 from entity @s player.crafting.2
execute if items entity @s player.crafting.3 *[!custom_data~{ui_check:1b}] run item replace entity @s inventory.21 from entity @s player.crafting.3
data modify storage temp item set value []
data modify storage temp Owner set from entity @s UUID
data modify storage temp item append from entity @s Inventory[{Slot:27b}]
data modify storage temp item append from entity @s Inventory[{Slot:28b}]
data modify storage temp item append from entity @s Inventory[{Slot:29b}]
data modify storage temp item append from entity @s Inventory[{Slot:30b}]
data remove storage temp item[{components:{"minecraft:custom_data":{ui:{}}}}]
execute at @s run function sys:player/ui/foolproof/return_from_temp
loot replace entity @s inventory.18 loot sys:ui/background
loot replace entity @s inventory.19 loot sys:ui/background
loot replace entity @s inventory.20 loot sys:ui/background
loot replace entity @s inventory.21 loot sys:ui/background