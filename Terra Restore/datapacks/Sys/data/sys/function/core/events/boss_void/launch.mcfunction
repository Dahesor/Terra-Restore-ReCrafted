execute as @a[tag=in_boss_void] at @s run function sys:core/events/boss_void/setup/player_self
schedule function sys:core/events/boss_void/setup/titles 1s
scoreboard players set boss_void_players data 0
execute store result score boss_void_players data if entity @a[tag=in_boss_void]
team add boss_void
function sys:core/events/boss_void/moves/utils/repair
