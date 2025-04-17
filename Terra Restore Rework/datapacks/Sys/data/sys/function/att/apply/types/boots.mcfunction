data modify storage data selected_type set value {id:"boots"}
data modify storage data selected_type.name set value {translate:"armor.feet"}
# 强制规定武器类型为护腿

function sys:att/apply/types/general_armor

#植入属性与说明
data modify storage data modifiers[].id set value "registry:weapon_type/boots"
data modify storage data additional_atts[].id set value "registry:prefix/boots"
data modify storage data modifiers append from storage data additional_atts[]
data modify storage data modifiers[].slot set value "feet"
data modify storage sys:data item.components."minecraft:attribute_modifiers" append from storage data modifiers[]
data modify storage sys:data item.components."minecraft:lore" append value ""
data modify storage sys:data item.components."minecraft:lore" append from storage data selected_type.lore[]
data modify storage sys:data item.components."minecraft:lore" append from storage data lore[]
data modify storage sys:data item.components."minecraft:custom_data".record_att set from storage data stats_record