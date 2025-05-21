data modify storage data selected_type set value {id:"chestplate"}
data modify storage data selected_type.name set value {translate:"armor.chest"}
# 强制规定武器类型为胸甲

function sys:att/apply/types/general_armor

#
execute if data storage data modifiers[0] run data modify storage data modifiers[].id set value "registry:weapon_type/chestplate"
execute if data storage data additional_atts[0] run data modify storage data additional_atts[].id set value "registry:prefix/chestplate"
data modify storage data modifiers append from storage data additional_atts[]
execute if data storage data modifiers[0] run data modify storage data modifiers[].slot set value "chest"
data modify storage sys:data item.components."minecraft:attribute_modifiers" append from storage data modifiers[]
data modify storage sys:data item.components."minecraft:lore" append value ""
data modify storage sys:data item.components."minecraft:lore" append from storage data selected_type.lore[]
data modify storage sys:data item.components."minecraft:lore" append from storage data lore[]
data modify storage sys:data item.components."minecraft:custom_data".record_att set from storage data stats_record