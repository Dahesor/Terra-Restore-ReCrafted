scoreboard objectives add opening dummy

scoreboard players set $temp calculator 1
execute as @a run function sys:legacy/opening/assign_slot
effect clear @r[scores={opening=2}] invisibility
effect clear @r[scores={opening=3}] invisibility
effect clear @r[scores={opening=4}] invisibility
execute as @a unless score @s opening matches 2.. run scoreboard players set @s opening 1
effect clear @r[scores={opening=1}] invisibility
difficulty peaceful
tp @a -522.30 34.00 21.30 360.07 26.50
gamerule max_entity_cramming 1000
gamemode adventure @a
gamerule spawn_mobs false
gamerule mob_drops false
gamerule advance_time false
gamerule mob_griefing false
effect give @a saturation 1 4 true
effect give @a weakness 600 5 true
time set 17000
schedule function sys:legacy/opening/acts/1 2s
stopsound @a