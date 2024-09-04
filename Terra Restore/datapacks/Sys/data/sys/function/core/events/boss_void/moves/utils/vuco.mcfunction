execute as @a[tag=in_boss_void,gamemode=!spectator] at @s run tp @s ~ ~1 ~
function sys:core/events/boss_void/moves/utils/repair
tellraw @a[tag=in_boss_void] {"translate":"boss.void.line.2","color":"white"}
scoreboard players set boss_void_mode data 1