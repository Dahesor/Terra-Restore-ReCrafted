#execute unless entity @s[tag=dfh.died] unless score @s dfh.HP matches 1.. run function dfh:player/check_death
execute if entity @s[tag=dfh.died] run function dfh:player/revive_check
function dfh:logic/check