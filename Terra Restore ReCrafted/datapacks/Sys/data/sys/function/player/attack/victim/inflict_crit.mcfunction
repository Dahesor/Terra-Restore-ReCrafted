data modify storage temp run set value {value:0.0d,type:"sys:crit_dmg"}
execute store result storage temp run.value double 0.01 run scoreboard players get $crit_damage dmg
function sys:player/attack/victim/damage_victim with storage temp run