scoreboard players operation $dmg calculator = @s monitor.Shield
scoreboard players operation $dmg calculator -= $new monitor.Shield
scoreboard players operation @s monitor.Shield = $new monitor.Shield
execute if score $dmg calculator matches ..0 run return fail

scoreboard players operation @s HP.absorb -= $dmg calculator
scoreboard players operation $dmg calculator = @s HP.absorb
scoreboard players operation $dmg calculator *= #-1 calculator
execute if score @s HP.absorb matches ..0 run scoreboard players set @s HP.absorb 0
execute if score $dmg calculator matches ..0 run scoreboard players set $dmg calculator 0

scoreboard players operation @s HP.dry -= $dmg calculator


execute if score @s monitor.HP matches 30000.. run return run function sys:player/hp/monitor/remove_200
function sys:player/hp/monitor/reset_shield