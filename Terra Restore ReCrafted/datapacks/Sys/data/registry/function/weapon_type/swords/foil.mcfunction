data modify storage registry:weapon_type sword.temp append value \
{id:"foil",Lore:[{}],weight:7,adjusts:[{id:"sweeping_damage_ratio",operation:"set",amount:-0.32d},{id:"attack_speed",amount:2d,operation:set},{id:"entity_interaction_range",amount:0.8d,operation:"set"},{id:"attack_damage",operation:"scale",amount:-0.5d}],slot:"mainhand"}

function registry:weapon_type/swords/weight_saver