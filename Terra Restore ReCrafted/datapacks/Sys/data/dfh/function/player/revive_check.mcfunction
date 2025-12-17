execute store result score $new dfh.calculator run data get entity @s Health 1000
execute unless score $new dfh.calculator matches 1.. run return fail
tag @s remove dfh.died
function dfh:logic/revive