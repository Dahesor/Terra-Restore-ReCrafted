# 重置攻击速度
data remove storage sys:data item.components."minecraft:attribute_modifiers"[{id:"minecraft:base_attack_speed"}]


data modify storage data modifiers set value []

#植入属性与说明
data modify storage sys:data item.components."minecraft:attribute_modifiers" append from storage data modifiers[]