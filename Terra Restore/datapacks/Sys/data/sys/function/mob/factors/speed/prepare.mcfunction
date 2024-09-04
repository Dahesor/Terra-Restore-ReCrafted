scoreboard players remove factor options 100
execute if score factor options matches 0 run return fail
data modify storage temp factor set value {value:0.0d}
execute store result storage temp factor.value double 0.01 run scoreboard players get factor options
attribute @s generic.movement_speed modifier add sys:mob_speed_factor 0 add_multiplied_base
data modify entity @s attributes[{id:"minecraft:generic.movement_speed"}].modifiers[{id:"sys:mob_speed_factor"}].amount set from storage temp factor.value