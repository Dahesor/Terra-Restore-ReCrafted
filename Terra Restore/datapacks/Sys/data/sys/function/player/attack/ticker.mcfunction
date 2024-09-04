execute if score @s speedAttack matches 1..5 run attribute @s generic.attack_damage modifier remove sys:cd
execute if score @s speedAttack matches 1..5 run attribute @s player.entity_interaction_range modifier remove sys:cd
execute if score @s speedAttack matches 1.. run scoreboard players remove @s speedAttack 5