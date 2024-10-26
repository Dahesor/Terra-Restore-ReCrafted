data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"safe_fall_distance",amount:0.5,operation:"add_value",point:10},\
{type:"AttModifier",id:"safe_fall_distance",amount:1.0,operation:"add_value",point:20},\
{type:"AttModifier",id:"safe_fall_distance",amount:1.3,operation:"add_value",point:40},\
{type:"AttModifier",id:"safe_fall_distance",amount:1.5,operation:"add_value",point:60},\
{type:"AttModifier",id:"safe_fall_distance",amount:1.8,operation:"add_value",point:80},\
{type:"AttModifier",id:"safe_fall_distance",amount:2,operation:"add_value",point:100},\
{type:"AttModifier",id:"safe_fall_distance",amount:2.5,operation:"add_value",point:120},\
{type:"AttModifier",id:"safe_fall_distance",amount:3,operation:"add_value",point:140},\
]
data modify storage sys:mod data append from storage sys:mod hold[]
data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"safe_fall_distance",amount:-0.4,operation:"add_value",point:-20},\
{type:"AttModifier",id:"safe_fall_distance",amount:-0.6,operation:"add_value",point:-30},\
{type:"AttModifier",id:"safe_fall_distance",amount:-1,operation:"add_value",point:-40},\
{type:"AttModifier",id:"safe_fall_distance",amount:-1.2,operation:"add_value",point:-50},\
{type:"AttModifier",id:"safe_fall_distance",amount:-1.4,operation:"add_value",point:-60},\
{type:"AttModifier",id:"safe_fall_distance",amount:-1.75,operation:"add_value",point:-70},\
]
data modify storage sys:mod data append from storage sys:mod hold[]