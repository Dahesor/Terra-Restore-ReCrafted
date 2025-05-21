data modify storage registry:weapon_type sword.temp append value \
{id:"bastard",Lore:[{}],weight:9,adjusts:[{id:"sweeping_damage_ratio",operation:"set",amount:0.07d},{id:"attack_speed",amount:-0.5d,operation:set},{id:"entity_interaction_range",amount:1.4d,operation:"set"},{id:"attack_damage",operation:"scale",amount:-0.1d}],slot:"mainhand"}

function registry:weapon_type/swords/weight_saver