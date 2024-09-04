data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"generic.attack_damage",amount:0.05,operation:"add_multiplied_base",point:30},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.08,operation:"add_multiplied_base",point:45},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.12,operation:"add_multiplied_base",point:60},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.15,operation:"add_multiplied_base",point:75},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.18,operation:"add_multiplied_base",point:90},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.24,operation:"add_multiplied_base",point:110},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.3,operation:"add_multiplied_base",point:125},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.35,operation:"add_multiplied_base",point:136},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.40,operation:"add_multiplied_base",point:147},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.45,operation:"add_multiplied_base",point:158},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.48,operation:"add_multiplied_base",point:162},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.5,operation:"add_multiplied_base",point:165},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.51,operation:"add_multiplied_base",point:178},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.54,operation:"add_multiplied_base",point:184},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.55,operation:"add_multiplied_base",point:190},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.58,operation:"add_multiplied_base",point:200},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.6,operation:"add_multiplied_base",point:210},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.65,operation:"add_multiplied_base",point:230},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.7,operation:"add_multiplied_base",point:250},\
{type:"AttModifier",id:"generic.attack_damage",amount:0.75,operation:"add_multiplied_base",point:270},\
]
data modify storage sys:mod data append from storage sys:mod hold[]
data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"generic.attack_damage",amount:-0.05,operation:"add_multiplied_base",point:-10},\
{type:"AttModifier",id:"generic.attack_damage",amount:-0.08,operation:"add_multiplied_base",point:-15},\
{type:"AttModifier",id:"generic.attack_damage",amount:-0.12,operation:"add_multiplied_base",point:-20},\
{type:"AttModifier",id:"generic.attack_damage",amount:-0.15,operation:"add_multiplied_base",point:-25},\
]
data modify storage sys:mod data append from storage sys:mod hold[]