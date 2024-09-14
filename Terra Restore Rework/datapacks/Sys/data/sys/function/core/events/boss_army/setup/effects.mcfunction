tellraw @a[tag=in_boss_army] [{"translate":"front.head"}," ",{"translate":"boss.army.line.2"}]
effect give @a[tag=in_boss_army] speed 30 0
effect give @a[tag=in_boss_army] strength 95 0
effect give @a[tag=in_boss_army] fire_resistance 120 0
effect give @a[tag=in_boss_army] absorption 30 0
effect give @a[tag=in_boss_army] regeneration 75 0
effect give @a[tag=in_boss_army] resistance 250 1
execute as @e[type=#sys:need_ticking,tag=boss_army_kill] at @s run function sys:core/despawn


schedule function sys:core/events/boss_army/setup/spawn_wave_2 2t
schedule function sys:core/events/boss_army/setup/spawn_wave_3 4t
schedule function sys:core/events/boss_army/setup/spawn_wave_4 6t
summon ghast 2572.93 38.66 -1399.08 {Tags:["resolved_mob","boss_army_kill"]}
execute positioned 2546 23 -1412 run function sys:core/events/boss_army/mobs/stone_sword_zombie
execute positioned 2546 23 -1412 run function sys:core/events/boss_army/mobs/stone_sword_zombie
execute positioned 2546 23 -1412 run function sys:core/events/boss_army/mobs/stone_sword_zombie
execute positioned 2546 23 -1389 run function sys:core/events/boss_army/mobs/stone_sword_zombie
execute positioned 2546 23 -1389 run function sys:core/events/boss_army/mobs/stone_sword_zombie
execute positioned 2546 23 -1389 run function sys:core/events/boss_army/mobs/stone_sword_zombie
execute positioned 2565 23 -1400 run function sys:core/events/boss_army/mobs/stone_sword_zombie
execute positioned 2565 23 -1400 run function sys:core/events/boss_army/mobs/stone_sword_zombie
execute positioned 2565 23 -1400 run function sys:core/events/boss_army/mobs/stone_sword_zombie