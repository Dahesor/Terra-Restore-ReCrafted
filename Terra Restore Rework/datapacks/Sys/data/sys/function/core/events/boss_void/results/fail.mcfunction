function sys:core/events/boss_void/stop
tp @a[tag=in_boss_void] 2952.53 153.00 -1002.54
gamemode survival @a[tag=in_boss_void]
tellraw @a[tag=in_boss_void] ["[",{"translate":"boss.void.name","color":"red"},"] ",{"translate":"boss.void.lose"}]
stopsound @a[tag=in_boss_void] record
tag @e[tag=in_boss_void,type=player] add _alive
tag @a[tag=in_boss_void] remove boss_spectate
tag @a[tag=in_boss_void] remove boss_void_spectate
tag @a[tag=in_boss_void,tag=!_alive] add boss_void_tpback
tag @a[tag=in_boss_void,tag=!_alive] add domain_tpback
tag @a[tag=in_boss_void] remove in_boss
tag @a[tag=in_boss_void] remove in_boss_void
tag @a remove _alive