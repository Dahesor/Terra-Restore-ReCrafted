data modify storage registry:weapon_type temp_modifier set value {type:"luck",amount:0.0d,operation:"add_value"}


data modify storage registry:weapon_type adjust set from storage registry:weapon_type raw[0].adjusts[0]

data modify storage registry:weapon_type temp_modifier.type set from storage registry:weapon_type adjust.id
function registry:weapon_type/parser/modifier/classification






function registry:weapon_type/parser/modifier/pack_up