execute if score boss_wither data matches 1.. run return fail

execute positioned 763 88 -973 run tag @e[distance=..50,type=player] add in_boss_wither
execute unless entity @a[tag=in_boss_wither] run return fail
tag @a[tag=in_boss_wither] add in_boss
tag @a[tag=in_boss_wither] remove boss_wither_tpback
tag @a[tag=in_boss_wither] remove boss_wither_spectate
tag @a[tag=in_boss_wither] remove boss_spectate
tag @a[tag=in_boss_wither] remove domain_tpback
tp @a[tag=in_boss_wither] 344.79 87.00 -788.85
execute as @a[tag=in_boss_wither] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 0.5 1

function #dah.sch:set {time:2,run:"function sys:core/events/boss_wither/setup/main"}
gamemode adventure @a[tag=in_boss_wither]
schedule function sys:core/events/boss_wither/launch 1s
execute positioned 347.34 61.51 -782.18 run kill @e[type=experience_orb,distance=..100]