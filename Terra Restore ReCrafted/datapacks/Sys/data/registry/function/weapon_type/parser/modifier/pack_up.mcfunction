data modify storage registry:weapon_type parser[0].modifiers append from storage registry:weapon_type temp_modifier

return 1


#data modify storage registry:weapon_type parser[0].modifiers append from storage registry:weapon_type temp_modifier
#data modify storage registry:weapon_type parser[0].modifiers[0] merge value {slot:"head"}

#data modify storage registry:weapon_type temp_modifier.slot set from storage registry:weapon_type str

