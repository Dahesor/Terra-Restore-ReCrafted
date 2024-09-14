scoreboard players reset boss_army data
scoreboard players reset boss_army_start data
scoreboard players reset boss_army_speed
scoreboard players reset boss_army_swarm
scoreboard players reset boss_army_stack
scoreboard players reset boss_army_players
execute as @e[type=#sys:need_ticking,tag=boss_army_kill] at @s run function sys:core/despawn
schedule clear sys:core/events/boss_army/launch
schedule clear sys:core/events/boss_army/setup/effects
schedule clear sys:core/events/boss_army/setup/spawn_wave_2
schedule clear sys:core/events/boss_army/setup/spawn_wave_3
schedule clear sys:core/events/boss_army/setup/spawn_wave_4
bossbar remove sys:boss_army
bossbar remove sys:boss_army_skele
clear @a[tag=in_boss_army] *[custom_data~{is_temp:1b}]
forceload remove 2611 -1352 2485 -1450
forceload remove 2577 -979 2574 -978