execute store result storage registry:weapon_type parser[0].chance int 1 run scoreboard players get %current_chance registry
execute store result score %this registry run data get storage registry:weapon_type raw[0].weight
scoreboard players operation %this registry *= #10000 calculator
scoreboard players operation %this registry /= %total_weight registry
scoreboard players operation %current_chance registry += %this registry