execute if score $is_sweep dmg matches 1.. run return fail
execute if score #crit_check dmg <= @s CRIT.CHANCE run return 1
return fail