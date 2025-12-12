scoreboard objectives remove opening
gamerule max_entity_cramming 24
gamerule spawn_mobs true
gamerule mob_drops true
gamerule advance_time true
gamerule mob_griefing true
gamerule block_drops true
effect clear @a invisibility
effect clear @a weakness
time set day
gamemode survival @a
effect give @a blindness 3 10
effect give @a resistance 5 10 true
execute as @a positioned 100 63 100 run function sys:player/life/set_spawn
tp @a 100 70 100
scoreboard players set game_start data 1


difficulty normal