execute if score $is_crit dmg matches 1 at @s run function sys:player/attack/victim/inflict_crit
scoreboard players operation $total_damage dmg = $base_damage dmg
scoreboard players operation $total_damage dmg += $crit_damage dmg

execute at @s[tag=!no_dmg_number] run function sys:player/attack/victim/damage_number/pop

function sys:mob/ticking/update_hp
tag @s remove attack_target