execute if score boss_void data matches 1.. run return fail
execute positioned 2954.72 153.00 -1002.55 run tag @e[distance=..36,type=player] add in_boss_void
execute unless entity @a[tag=in_boss_void] run return fail
forceload add 3007 -1806 3040 -1826
tag @a[tag=in_boss_void] add in_boss
tag @a[tag=in_boss_void] remove boss_void
tag @a[tag=in_boss_void] remove boss_void_tpback
tag @a[tag=in_boss_void] remove boss_spectate
tag @a[tag=in_boss_void] remove domain_tpback
tp @a[tag=in_boss_void] 3021.06 167.00 -1812.54 271.60 23.49
gamemode adventure @a[tag=in_boss_void]
schedule function sys:core/events/boss_void/launch 10t
execute positioned 3026.02 20.13 -1812.21 run kill @e[type=experience_orb,distance=..100]
execute positioned 3026.02 20.13 -1812.21 run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{is_temp:1b}}}},distance=..100]

return 1
scoreboard players set boss_void_diff data 1
function sys:core/events/boss_army/start