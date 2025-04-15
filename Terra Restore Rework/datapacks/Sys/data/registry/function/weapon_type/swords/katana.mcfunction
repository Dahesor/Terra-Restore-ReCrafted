data modify storage registry:weapon_type sword.temp append value \
{id:"katana",Lore:[{}],weight:11,adjusts:[{id:"attack_speed",amount:-0.6d,operation:set},{id:"entity_interaction_range",amount:1d,operation:"set"},{id:"attack_damage",amount:0.1d,operation:"scale"}],slot:"mainhand"}

function registry:weapon_type/swords/weight_saver