execute if score $is_crit dmg matches 1 at @s run function sys:player/attack/victim/inflict_crit

function sys:mob/ticking/update_hp
tag @s remove attack_target