function sys:core/events/boss_army/stop
tp @a[tag=in_boss_army] 2577.40 115.00 -978.98 2250.03 -5.59
gamemode survival @a[tag=in_boss_army]
tellraw @a[tag=in_boss_army] ["[",{"translate":"boss.army.name","color":"red"},"] ",{"translate":"boss.army.lose"}]
stopsound @a[tag=in_boss_army] record
tag @e[tag=in_boss_army,type=player] add _alive
tag @a[tag=in_boss_army] remove boss_spectate
tag @a[tag=in_boss_army] remove boss_army_spectate
tag @a[tag=in_boss_army,tag=!_alive] add boss_army_tpback
tag @a[tag=in_boss_army,tag=!_alive] add domain_tpback
tag @a[tag=in_boss_army] remove in_boss
tag @a[tag=in_boss_army] remove in_boss_army
tag @a remove _alive