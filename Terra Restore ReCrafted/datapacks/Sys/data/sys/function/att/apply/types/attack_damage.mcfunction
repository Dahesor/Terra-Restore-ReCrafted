execute store result score %this calculator run data get storage sys:data item.components."minecraft:attribute_modifiers"[{id:"minecraft:base_attack_damage"}].amount 100

#若不修改基础伤害，读取后退出
execute unless data storage data selected_type.modifiers[{type:"attack_damage"}] run return run scoreboard players get %this calculator

#读取修改数值
data modify storage data sm set from storage data selected_type.modifiers[{type:"attack_damage"}]
execute store result score %op calculator run data get storage data sm.amount 100

#若为增加
execute if data storage data sm{operation:"add_value"} run scoreboard players operation %this calculator += %op calculator
execute if data storage data sm{operation:"add_value"} store result storage sys:data item.components."minecraft:attribute_modifiers"[{id:"minecraft:base_attack_damage"}].amount double 0.01 run return run scoreboard players get %this calculator

#若为倍率
scoreboard players operation %op calculator *= %this calculator
scoreboard players operation %op calculator /= #100 calculator
scoreboard players operation %this calculator += %op calculator
execute store result storage sys:data item.components."minecraft:attribute_modifiers"[{id:"minecraft:base_attack_damage"}].amount double 0.01 run return run scoreboard players get %this calculator