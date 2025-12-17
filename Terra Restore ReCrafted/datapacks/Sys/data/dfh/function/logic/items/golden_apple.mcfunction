advancement revoke @s only sys:food_trigger/golden_apple
effect clear @s absorption
execute if score @s HP.absorb matches 800.. run return 1
scoreboard players add @s HP.absorb 400
execute if score @s HP.absorb matches 800.. run scoreboard players set @s HP.absorb 800