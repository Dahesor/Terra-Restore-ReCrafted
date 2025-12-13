advancement revoke @s only sys:ate_food

execute store result score $hunger calculator run data get entity @s foodLevel 10
execute store result score $saturation calculator run data get entity @s foodSaturationLevel 10
tag @s remove hunger.hungry
tag @s remove hunger.saturated

execute if score $hunger calculator matches ..170 run tag @s add hunger.hungry
execute if score $hunger calculator matches 200.. if score $saturation calculator matches 10.. run tag @s add hunger.saturated