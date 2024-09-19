scoreboard players operation $crit_damage dmg = $base_damage dmg
scoreboard players operation $crit_damage dmg *= @s CRIT.DAM
return run scoreboard players operation $crit_damage dmg /= #1000 calculator