execute if score @s death matches 1 at @s run function sys:player/utils/drop/specialize

spawnpoint @s 50 1 -54
execute if entity @s[tag=in_boss] run tag @s add boss_spectate
execute if entity @s[tag=in_boss_wither] run tag @s add boss_wither_spectate
execute if entity @s[tag=in_boss_army] run tag @s add boss_army_spectate
execute if entity @s[tag=in_boss_void] run tag @s add boss_void_spectate