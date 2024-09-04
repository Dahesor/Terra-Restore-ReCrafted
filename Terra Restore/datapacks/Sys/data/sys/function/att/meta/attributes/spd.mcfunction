data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"generic.movement_speed",amount:0.05,operation:"add_multiplied_base",point:10},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.08,operation:"add_multiplied_base",point:20},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.12,operation:"add_multiplied_base",point:30},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.15,operation:"add_multiplied_base",point:50},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.18,operation:"add_multiplied_base",point:70},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.24,operation:"add_multiplied_base",point:90},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.3,operation:"add_multiplied_base",point:110},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.35,operation:"add_multiplied_base",point:130},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.40,operation:"add_multiplied_base",point:150},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.45,operation:"add_multiplied_base",point:170},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.5,operation:"add_multiplied_base",point:190},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.54,operation:"add_multiplied_base",point:210},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.55,operation:"add_multiplied_base",point:230},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.6,operation:"add_multiplied_base",point:250},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.65,operation:"add_multiplied_base",point:270},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.7,operation:"add_multiplied_base",point:290},\
{type:"AttModifier",id:"generic.movement_speed",amount:0.75,operation:"add_multiplied_base",point:310},\
]
data modify storage sys:mod data append from storage sys:mod hold[]
data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.05,operation:"add_multiplied_base",point:-10},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.08,operation:"add_multiplied_base",point:-20},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.12,operation:"add_multiplied_base",point:-30},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.15,operation:"add_multiplied_base",point:-50},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.20,operation:"add_multiplied_base",point:-70},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.24,operation:"add_multiplied_base",point:-90},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.28,operation:"add_multiplied_base",point:-110},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.32,operation:"add_multiplied_base",point:-130},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.36,operation:"add_multiplied_base",point:-140},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.40,operation:"add_multiplied_base",point:-160},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.44,operation:"add_multiplied_base",point:-180},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.48,operation:"add_multiplied_base",point:-190},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.52,operation:"add_multiplied_base",point:-220},\
{type:"AttModifier",id:"generic.movement_speed",amount:-0.58,operation:"add_multiplied_base",point:-240},\
]
data modify storage sys:mod data append from storage sys:mod hold[]