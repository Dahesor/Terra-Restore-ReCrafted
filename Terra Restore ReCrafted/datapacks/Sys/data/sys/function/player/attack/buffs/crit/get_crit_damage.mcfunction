scoreboard players operation $crit_damage dmg = $base_damage dmg

scoreboard players operation $final_crit_dmg dmg = @s CRIT.DAM
execute store result score $weapon_crit_dmg dmg run function sys:player/attack/buffs/crit/weapon_crit_dmg

scoreboard players operation $final_crit_dmg dmg += $weapon_crit_dmg dmg

scoreboard players operation $crit_damage dmg *= $final_crit_dmg dmg
return run scoreboard players operation $crit_damage dmg /= #1000 calculator