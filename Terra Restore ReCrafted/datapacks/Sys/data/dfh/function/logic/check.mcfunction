execute if entity @s[tag=dfh.died] run return fail
execute if entity @s[tag=dfh.__reseting_health] run function dfh:logic/monitor/__reset_hp
execute if entity @s[tag=dfh.reset_hp] run function dfh:logic/monitor/reset_health

execute store result score $new dfh.monitor.Shield run data get entity @s AbsorptionAmount 100
execute unless score $new dfh.monitor.Shield = @s dfh.monitor.Shield run function dfh:logic/damage/process

execute store result score $new dfh.monitor.HP run data get entity @s Health 100
execute unless score $new dfh.monitor.HP = @s dfh.monitor.HP run function dfh:logic/heal/process


function dfh:logic/regen/ticker