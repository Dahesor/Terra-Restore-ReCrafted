execute as @a[tag=in_boss_army] at @s run function sys:core/events/boss_army/setup/player_self

execute store result score boss_army_players data if entity @a[tag=in_boss_army]
scoreboard players set boss_army data 1