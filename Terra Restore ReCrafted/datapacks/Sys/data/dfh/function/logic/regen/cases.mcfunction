execute store result score $hunger dfh.calculator run data get entity @s foodLevel 10
execute store result score $saturation dfh.calculator run data get entity @s foodSaturationLevel 10
tag @s remove dfh.hunger.hungry
tag @s remove dfh.hunger.saturated
tag @s remove dfh.__food_case

execute if score $hunger dfh.calculator matches ..170 run tag @s add dfh.hunger.hungry
execute if score $hunger dfh.calculator matches 200.. if score $saturation dfh.calculator matches 10.. run tag @s add dfh.hunger.saturated