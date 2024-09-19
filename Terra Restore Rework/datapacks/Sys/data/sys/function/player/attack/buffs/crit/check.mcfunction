scoreboard players set $is_crit dmg 0
scoreboard players set $crit_damage dmg 0

execute store result score #crit_check dmg run random value 1..1000
execute unless function sys:player/attack/buffs/crit/crit_success_complex run return -1
scoreboard players set $is_crit dmg 1
execute at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.25 1
return run function sys:player/attack/buffs/crit/get_crit_damage