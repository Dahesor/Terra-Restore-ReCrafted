execute if entity @s[tag=__reseting_health] run function sys:player/hp/monitor/__reset_hp
execute if entity @s[tag=reset_hp] run function sys:player/hp/monitor/reset_health

execute store result score $new monitor.Shield run data get entity @s AbsorptionAmount 100
execute unless score $new monitor.Shield = @s monitor.Shield run function sys:player/hp/damage/process

execute store result score $new monitor.HP run data get entity @s Health 100
execute unless score $new monitor.HP = @s monitor.HP run function sys:player/hp/heal/process