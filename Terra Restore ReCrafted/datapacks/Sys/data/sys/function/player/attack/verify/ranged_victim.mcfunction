execute on attacker unless entity @s[type=player] run return fail
data modify storage sys:data mobData set from entity @s
scoreboard players set $die_on_base dmg 0

function sys:player/attack/verify/get_damage

execute if data storage sys:data mobData{Health:0.0f} unless entity @s[tag=no_dmg_number] run scoreboard players set $die_on_base dmg 1
execute if score $die_on_base dmg matches 1.. run function sys:player/attack/verify/save_location

#add tag
tag @s add attack_target