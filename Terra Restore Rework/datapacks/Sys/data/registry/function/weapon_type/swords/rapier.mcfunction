data modify storage registry:weapon_type sword.temp append value \
{id:"rapier",Lore:[{}],weight:9,adjusts:[{id:"attack_speed",operation:"set",amount:-0.4d},{id:"sweeping_damage_ratio",operation:"set",amount:-0.2d},{id:"entity_interaction_range",amount:1.4d,operation:"set"},{id:"attack_damage",operation:"scale",amount:0.05d}],slot:"mainhand"}

function registry:weapon_type/swords/weight_saver