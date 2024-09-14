execute as @e[type=#sys:need_ticking,tag=boss_void_kill] at @s run function sys:core/despawn
kill @e[type=armor_stand,tag=boss_void_kill]
kill @e[type=item_display,tag=boss_void_kill]
kill @e[type=tnt,tag=boss_void_kill]
kill @e[type=marker,tag=boss_void_kill]
kill @e[type=arrow,tag=boss_void_kill]
stopsound @a[tag=in_boss_void] record
clear @a[tag=in_boss_void] *[custom_data~{is_temp:1b}]
bossbar remove sys:boss_void
team remove boss_void
scoreboard players reset boss_void data
scoreboard players reset boss_void_players
scoreboard players reset boss_void_mode
scoreboard players reset boss_void_anger
forceload remove 3007 -1806 3040 -1826