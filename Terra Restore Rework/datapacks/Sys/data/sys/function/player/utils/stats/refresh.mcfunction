scoreboard players operation @s STR = @s base_STR
scoreboard players operation @s CON = @s base_CON
scoreboard players operation @s DEX = @s base_DEX
scoreboard players operation @s INT = @s base_INT
scoreboard players operation @s POW = @s base_POW
scoreboard players operation @s EDU = @s base_EDU

execute if entity @s[tag=reading_container] run loot replace entity @s inventory.0 loot sys:ui/head_locked
execute unless entity @s[tag=reading_container] run loot replace entity @s inventory.0 loot sys:ui/head