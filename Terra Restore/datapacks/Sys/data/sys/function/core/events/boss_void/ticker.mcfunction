execute as @e[type=husk,tag=boss_void] at @s run function sys:core/events/boss_void/boss_tick/self
execute if score #loop_20 calculator matches 2 as @a[tag=in_boss_void,gamemode=!spectator] at @s run function sys:core/events/boss_void/boss_tick/player
execute if score #loop_20 calculator matches 12 as @e[tag=boss_void_kill,type=marker] at @s run function sys:core/events/boss_void/boss_tick/marker
execute as @e[type=armor_stand,tag=boss_void_kill] at @s run function sys:core/events/boss_void/moves/axe/exe

execute store result score boss_void_players data if entity @e[tag=in_boss_void,gamemode=adventure,type=player]
execute unless score boss_void_players data matches 1.. run function sys:core/events/boss_void/results/fail