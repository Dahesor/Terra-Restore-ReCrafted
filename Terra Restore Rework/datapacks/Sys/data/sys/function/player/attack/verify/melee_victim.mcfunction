execute on attacker unless entity @s[type=player] run return fail
data modify storage sys:data mobData set from entity @s
scoreboard players set $die_on_base dmg 0

function sys:player/attack/verify/get_damage

execute if data storage sys:data mobData{Health:0.0f} unless entity @s[tag=no_dmg_number] run scoreboard players set $die_on_base dmg 1
execute if score $die_on_base dmg matches 1.. run function sys:player/attack/verify/save_location



#Check if sweep
execute if score $is_sweep dmg matches 1

#add tag
tag @s add attack_target



#Exclude multi checking
#execute store result score $time dmg run time query gametime
#execute if score @s dmg_TimeStamp = $time dmg if score @s mentionCD = $attacker dmg run return fail
#scoreboard players operation @s dmg_TimeStamp = $time dmg
#scoreboard players operation @s mentionCD = $attacker dmg