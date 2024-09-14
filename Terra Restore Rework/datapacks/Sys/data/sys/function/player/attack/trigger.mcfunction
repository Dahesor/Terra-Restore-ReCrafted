advancement revoke @s only sys:dealt_melee
execute store result score #temp speedAttack run attribute @s generic.attack_speed get 100
scoreboard players set @s speedAttack 10000
execute if score #temp speedAttack matches ..20 run scoreboard players set #temp speedAttack 20
scoreboard players operation @s speedAttack /= #temp speedAttack
scoreboard players operation @s speedAttack *= #60 calculator
scoreboard players operation @s speedAttack /= #100 calculator
execute unless score @s speedAttack matches ..0 run attribute @s generic.attack_damage modifier add sys:cd -1000 add_value
execute unless score @s speedAttack matches ..0 run attribute @s player.entity_interaction_range modifier add sys:cd -1000 add_value
