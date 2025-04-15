data modify storage registry:weapon_type sword.temp append value \
{id:"machete",Lore:[{}],weight:7,adjusts:[{id:"sweeping_damage_ratio",operation:"set",amount:-0.36d},{id:"attack_speed",amount:-0.6d,operation:set},{id:"entity_interaction_range",amount:0.1d,operation:"set"},{id:"attack_damage",operation:"scale",amount:0.7d},{id:"attack_knockback",amount:-0.4d,operation:"set"}],slot:"mainhand"}

function registry:weapon_type/swords/weight_saver