function sys:core/events/boss_wither/stop
tp @a[tag=in_boss_wither] 763 88 -973
gamemode survival @a[tag=in_boss_wither]
tellraw @a[tag=in_boss_wither] {"translate":"boss.wither.lose"}
stopsound @a[tag=in_boss_wither] record
tag @e[tag=in_boss_wither,type=player] add _alive
tag @a[tag=in_boss_wither] remove boss_spectate
tag @a[tag=in_boss_wither] remove boss_wither_spectate
tag @a[tag=in_boss_wither,tag=!_alive] add boss_wither_tpback
tag @a[tag=in_boss_wither,tag=!_alive] add domain_tpback
tag @a[tag=in_boss_wither] remove in_boss
tag @a[tag=in_boss_wither] remove in_boss_wither
tag @a remove _alive