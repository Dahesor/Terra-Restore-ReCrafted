execute positioned 2546.17 110.00 -1392.29 run kill @e[type=experience_orb,distance=..110]
execute if score boss_army_start data matches 1.. unless entity @e[type=zombie,tag=boss_army] run return run function sys:core/events/boss_army/results/victory
execute unless score boss_army_start data matches 1.. positioned 2575.31 7.00 -1399.84 if entity @a[distance=..6] run function sys:core/events/boss_army/setup/boss_start
execute positioned 2575.31 7.00 -1399.84 run tp @a[distance=..6] 2577 248 -1427
execute if score boss_army_start data matches 1.. as @e[type=zombie,tag=boss_army] at @s run function sys:core/events/boss_army/boss_tick/zombie
execute positioned 2576.68 134.61 -1425.12 run kill @e[type=item,distance=..100,nbt={Item:{id:"minecraft:lead"}}]
execute store result score boss_army_players data if entity @e[type=player,tag=in_boss,gamemode=adventure]
execute unless score boss_army_players data matches 1.. run function sys:core/events/boss_army/results/fail