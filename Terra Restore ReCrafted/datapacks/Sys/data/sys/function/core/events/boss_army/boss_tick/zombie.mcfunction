execute if score #loop_20 calculator matches 18 run particle enchant ~ ~0.5 ~ 0.1 0.1 0.1 0.2 100
execute store result bossbar sys:boss_army value run data get entity @s Health
execute on passengers store result bossbar sys:boss_army_skele value run data get entity @s Health

execute if score boss_army_start data matches 1 run scoreboard players set #temp calculator 101
execute if score boss_army_start data matches 1 on passengers run function sys:core/events/boss_army/boss_tick/check_alive
execute if score boss_army_start data matches 1 unless score #temp calculator matches -114 run function sys:core/events/boss_army/boss_tick/switch_phase

scoreboard players add boss_army_swarm data 1
execute if score boss_army_diff data matches 3 if score boss_army_swarm data matches 250 run function sys:core/events/boss_army/moves/swarm/release
execute if score boss_army_diff data matches 3 if score boss_army_swarm data matches 320 run function sys:core/events/boss_army/moves/swarm/setblock
execute if score boss_army_diff data matches 3 if score boss_army_swarm data matches 462 run function sys:core/events/boss_army/moves/swarm/spawn_new

execute if score boss_army_diff data matches 2 if score boss_army_swarm data matches 280 run function sys:core/events/boss_army/moves/swarm/release
execute if score boss_army_diff data matches 2 if score boss_army_swarm data matches 360 run function sys:core/events/boss_army/moves/swarm/setblock
execute if score boss_army_diff data matches 2 if score boss_army_swarm data matches 590 run function sys:core/events/boss_army/moves/swarm/spawn_new

execute unless score boss_army_diff data matches 2..3 if score boss_army_swarm data matches 300 run function sys:core/events/boss_army/moves/swarm/release
execute unless score boss_army_diff data matches 2..3 if score boss_army_swarm data matches 500 run function sys:core/events/boss_army/moves/swarm/setblock
execute unless score boss_army_diff data matches 2..3 if score boss_army_swarm data matches 645 run function sys:core/events/boss_army/moves/swarm/spawn_new

execute unless score boss_army_start data matches 2 run return fail

scoreboard players add boss_army_speed data 1
execute unless score boss_army_diff data matches 2..3 if score boss_army_speed data matches 340.. run function sys:core/events/boss_army/moves/speed/one_more
execute if score boss_army_diff data matches 2 if score boss_army_speed data matches 420.. run function sys:core/events/boss_army/moves/speed/one_more
execute if score boss_army_diff data matches 3 if score boss_army_speed data matches 490.. run function sys:core/events/boss_army/moves/speed/one_more