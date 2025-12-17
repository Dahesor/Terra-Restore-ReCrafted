execute if entity @s[tag=dfh.__reseting_health] run return fail
execute if entity @s[tag=dfh.reset_hp] run return fail


scoreboard players operation $heal dfh.var = $new dfh.monitor.HP
scoreboard players operation $heal dfh.var -= @s dfh.monitor.HP
scoreboard players operation @s dfh.monitor.HP = $new dfh.monitor.HP

execute if score $heal dfh.var matches ..0 run return fail

function #dfh:on_heal

scoreboard players operation @s dfh.HP += $heal dfh.var
execute if score @s dfh.HP > @s dfh.MAX_HP run scoreboard players operation @s dfh.HP = @s dfh.MAX_HP

execute if score @s dfh.monitor.HP matches 90000.. run function dfh:logic/monitor/remove_800