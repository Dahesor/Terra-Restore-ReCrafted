attribute @s max_absorption modifier add dfh:remove_absorption -3000 add_value
damage @s 1 dfh:silent
damage @s 200 dfh:silent
scoreboard players remove @s dfh.monitor.HP 20000
attribute @s max_absorption modifier remove dfh:remove_absorption
function dfh:logic/monitor/reset_shield