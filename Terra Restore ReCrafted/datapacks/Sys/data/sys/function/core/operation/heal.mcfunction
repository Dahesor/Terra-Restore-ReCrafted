scoreboard players operation @s HP.dry += $heal dmg
execute if score @s HP.dry > @s MAX_HP run scoreboard players operation @s HP.dry = @s MAX_HP