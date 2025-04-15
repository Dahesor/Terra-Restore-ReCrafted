execute if data storage registry:weapon_type adjust{operation:"add"} run data modify storage registry:weapon_type temp_modifier.operation set value "add_value"
execute if data storage registry:weapon_type adjust{operation:"scale"} run data modify storage registry:weapon_type temp_modifier.operation set value "add_multiplied_base"

data modify storage registry:weapon_type temp_modifier.amount set from storage registry:weapon_type adjust.amount