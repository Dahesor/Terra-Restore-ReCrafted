data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"knockback_resistance",amount:0.05,operation:"add_value",point:10},\
{type:"AttModifier",id:"knockback_resistance",amount:0.1,operation:"add_value",point:20},\
{type:"AttModifier",id:"knockback_resistance",amount:0.15,operation:"add_value",point:30},\
{type:"AttModifier",id:"knockback_resistance",amount:0.2,operation:"add_value",point:40},\
{type:"AttModifier",id:"knockback_resistance",amount:0.25,operation:"add_value",point:55},\
{type:"AttModifier",id:"knockback_resistance",amount:0.3,operation:"add_value",point:70},\
{type:"AttModifier",id:"knockback_resistance",amount:0.35,operation:"add_value",point:85},\
{type:"AttModifier",id:"knockback_resistance",amount:0.4,operation:"add_value",point:100},\
{type:"AttModifier",id:"knockback_resistance",amount:0.45,operation:"add_value",point:110},\
{type:"AttModifier",id:"knockback_resistance",amount:0.5,operation:"add_value",point:120},\
{type:"AttModifier",id:"knockback_resistance",amount:0.55,operation:"add_value",point:135},\
{type:"AttModifier",id:"knockback_resistance",amount:0.6,operation:"add_value",point:140},\
{type:"AttModifier",id:"knockback_resistance",amount:0.65,operation:"add_value",point:150},\
{type:"AttModifier",id:"knockback_resistance",amount:0.7,operation:"add_value",point:160},\
{type:"AttModifier",id:"knockback_resistance",amount:0.75,operation:"add_value",point:170},\
]
data modify storage sys:mod data append from storage sys:mod hold[]
data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"knockback_resistance",amount:-0.1,operation:"add_value",point:-5},\
{type:"AttModifier",id:"knockback_resistance",amount:-0.2,operation:"add_value",point:-10},\
{type:"AttModifier",id:"knockback_resistance",amount:-0.3,operation:"add_value",point:-15},\
{type:"AttModifier",id:"knockback_resistance",amount:-0.4,operation:"add_value",point:-20},\
{type:"AttModifier",id:"knockback_resistance",amount:-0.5,operation:"add_value",point:-25},\
]
data modify storage sys:mod data append from storage sys:mod hold[]

data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"explosion_knockback_resistance",amount:0.25,operation:"add_value",point:40},\
{type:"AttModifier",id:"explosion_knockback_resistance",amount:0.4,operation:"add_value",point:70},\
{type:"AttModifier",id:"explosion_knockback_resistance",amount:0.55,operation:"add_value",point:100},\
{type:"AttModifier",id:"explosion_knockback_resistance",amount:0.7,operation:"add_value",point:140},\
]
data modify storage sys:mod data append from storage sys:mod hold[]