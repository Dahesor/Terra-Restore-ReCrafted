clear @s player_head[custom_data~{ui:{}}]
scoreboard players set @s ui 0
loot replace entity @s inventory.0 loot sys:ui/head_locked
execute at @s run playsound terra:ui.denied master @s ~ ~ ~ 1 1 1