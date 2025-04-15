execute unless entity @s[type=player] run return fail

function sys:player/attack/reset_params

scoreboard players operation $attacker dmg = @s UID

execute if score $base_damage dmg matches ..9 run scoreboard players set $base_damage dmg 10
tag @s add player_atk_temp

function sys:player/attack/buffs/crit/check
execute as @e[type=#sys:mobs,tag=attack_target] at @s run function sys:player/attack/victim/self
execute if score $die_on_base dmg matches 1.. run function sys:player/attack/victim/damage_number/base_kill


tag @s remove player_atk_temp