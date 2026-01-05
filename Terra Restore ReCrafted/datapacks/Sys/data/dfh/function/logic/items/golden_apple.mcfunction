advancement revoke @s only sys:food_trigger/golden_apple
effect clear @s absorption
execute if score @s dfh.Absorb matches 800.. run return 1
scoreboard players add @s dfh.Absorb 400
execute if score @s dfh.Absorb matches 800.. run scoreboard players set @s dfh.Absorb 800