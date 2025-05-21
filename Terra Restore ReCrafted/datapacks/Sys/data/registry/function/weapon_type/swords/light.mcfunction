data modify storage registry:weapon_type sword.temp append value \
{id:"light",Lore:[{}],weight:11,adjusts:[{id:"attack_speed",amount:0.8d,operation:set},{id:"attack_damage",amount:-0.2d,operation:"scale"},{id:"entity_interaction_range",amount:1d,operation:"set"}],slot:"mainhand"}

function registry:weapon_type/swords/weight_saver