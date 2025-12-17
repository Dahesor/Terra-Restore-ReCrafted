scoreboard players set @s dfh.Regen 800
attribute @s max_absorption base set 1024
attribute @s max_health base set 1024

scoreboard players set @s dfh.MAX_HP 2000
scoreboard players set @s dfh.HP 2000
scoreboard players set @s dfh.Absorb 0
scoreboard players set @s dfh.monitor.HP 10000
tag @s add dfh.reset_hp
function dfh:logic/monitor/reset_shield

#Custom Init
function #dfh:player_init