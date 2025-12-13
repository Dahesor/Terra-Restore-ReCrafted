execute if entity @s[tag=__reseting_health] run return fail
execute if entity @s[tag=reset_hp] run return fail


scoreboard players operation $heal monitor.HP = $new monitor.HP
scoreboard players operation $heal monitor.HP -= @s monitor.HP
scoreboard players operation @s monitor.HP = $new monitor.HP

execute if score $heal monitor.HP matches ..0 run return fail


scoreboard players operation @s HP.dry += $heal monitor.HP
execute if score @s HP.dry > @s MAX_HP run scoreboard players operation @s HP.dry = @s MAX_HP

execute if score @s monitor.HP matches 90000.. run function sys:player/hp/monitor/remove_800