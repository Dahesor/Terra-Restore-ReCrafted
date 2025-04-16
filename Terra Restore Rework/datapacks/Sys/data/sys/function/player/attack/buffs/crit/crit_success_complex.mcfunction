execute if score $is_sweep dmg matches 1.. run return fail
execute store result score $weapon_crit dmg run function sys:player/attack/buffs/crit/weapon_crit_rate
scoreboard players operation #crit_check dmg -= $weapon_crit dmg
execute if score #crit_check dmg <= @s CRIT.CHANCE run return 1
return fail