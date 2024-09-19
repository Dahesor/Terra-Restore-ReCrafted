#verify if this is the target of the attack
execute on attacker if entity @s[tag=!player_atk_temp] run return fail

#Exclude multi checking
execute store result score $time dmg run time query gametime
execute if score @s dmg_TimeStamp = $time dmg if score @s mentionCD = $attacker dmg run return fail
scoreboard players operation @s dmg_TimeStamp = $time dmg
scoreboard players operation @s mentionCD = $attacker dmg

#Check if sweep
execute if score $is_sweep dmg matches 1 run say sweep

#Get original damage
execute store result score $temp hp_cache run data get entity @s Health 100
execute store result score $temp2 hp_cache run data get entity @s AbsorptionAmount 100
scoreboard players operation $temp hp_cache += $temp2 hp_cache
scoreboard players operation $base_damage dmg = @s hp_cache
scoreboard players operation $base_damage dmg -= $temp hp_cache

#add tag
tag @s add attack_target