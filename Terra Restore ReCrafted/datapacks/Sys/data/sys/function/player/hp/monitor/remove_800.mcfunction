attribute @s max_absorption modifier add sys:remove_absorption -3000 add_value
damage @s 1 sys:silent
damage @s 800 sys:silent
scoreboard players remove @s monitor.HP 80000
attribute @s max_absorption modifier remove sys:remove_absorption
function sys:player/hp/monitor/reset_shield