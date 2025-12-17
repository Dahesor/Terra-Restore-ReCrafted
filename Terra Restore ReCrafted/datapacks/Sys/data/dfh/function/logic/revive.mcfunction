scoreboard players operation @s dfh.HP = @s dfh.MAX_HP
scoreboard players set @s dfh.Absorb 0
tag @s add dfh.reset_hp
scoreboard players set @s dfh.monitor.HP 10000
function dfh:logic/monitor/reset_shield