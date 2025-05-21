execute if score boss_army data matches 1.. run return fail

execute positioned 2577.00 115.22 -969.65 run tag @e[distance=..24,type=player] add in_boss_army
#tag @a add in_boss_army
execute unless entity @a[tag=in_boss_army] run return fail
forceload add 2611 -1352 2485 -1450
tag @a[tag=in_boss_army] add in_boss
tag @a[tag=in_boss_army] remove boss_army_spectate
tag @a[tag=in_boss_army] remove boss_army_tpback
tag @a[tag=in_boss_army] remove boss_spectate
tag @a[tag=in_boss_army] remove domain_tpback
tp @a[tag=in_boss_army] 2602.46 197.00 -1382.47
execute as @a[tag=in_boss_army] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 0.5 1
gamemode adventure @a[tag=in_boss_army]
schedule function sys:core/events/boss_army/launch 3t
execute positioned 2563 131 -1394 run kill @e[type=experience_orb,distance=..100]
execute positioned 2563 131 -1394 run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{is_temp:1b}}}},distance=..100]

schedule function sys:core/events/boss_army/setup/effects 10t

return 1
scoreboard players set boss_army_diff data 1
function sys:core/events/boss_army/start