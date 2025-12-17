execute if entity @s[tag=dfh.update_armor] run function dfh:stats/read_armor
execute if entity @s[tag=dfh.equipment_changed] run tag @s add dfh.update_armor
execute if entity @s[tag=dfh.equipment_changed] run tag @s remove dfh.equipment_changed