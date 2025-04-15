execute if data storage registry:weapon_type adjust{id:"attack_damage"} run return run function registry:weapon_type/parser/modifier/cases/attack_damage



data modify storage registry:weapon_type temp_modifier.amount set from storage registry:weapon_type adjust.amount
data modify storage registry:weapon_type temp_modifier.operation set value "add_value"