data modify storage temp run set value {value:0.0d,icon:'""'}
execute store result storage temp run.value double 0.01 run scoreboard players get $total_damage dmg
execute anchored eyes facing entity @p[tag=player_atk_temp] eyes positioned ^ ^ ^0.01 run function sys:player/attack/victim/damage_number/item with storage temp run