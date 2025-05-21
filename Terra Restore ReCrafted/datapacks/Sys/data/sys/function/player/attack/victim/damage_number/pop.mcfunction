
scoreboard players operation $decimal dmg = $total_damage dmg
data modify storage temp run set value {int:0,decimal:0,icon:'""'}
execute store result storage temp run.int int 0.01 run scoreboard players get $decimal dmg
scoreboard players operation $decimal dmg %= #100 calculator
execute store result storage temp run.decimal int 0.1 run scoreboard players get $decimal dmg

execute anchored eyes facing entity @p[tag=player_atk_temp] eyes positioned ^ ^ ^0.01 run function sys:player/attack/victim/damage_number/item with storage temp run