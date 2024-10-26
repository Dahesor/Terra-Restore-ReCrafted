data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"attack_knockback",amount:0.2,operation:"add_value",point:10},\
{type:"AttModifier",id:"attack_knockback",amount:0.4,operation:"add_value",point:15},\
{type:"AttModifier",id:"attack_knockback",amount:0.6,operation:"add_value",point:20},\
{type:"AttModifier",id:"attack_knockback",amount:0.8,operation:"add_value",point:25},\
{type:"AttModifier",id:"attack_knockback",amount:1.0,operation:"add_value",point:35},\
{type:"AttModifier",id:"attack_knockback",amount:1.2,operation:"add_value",point:45},\
{type:"AttModifier",id:"attack_knockback",amount:1.4,operation:"add_value",point:55},\
{type:"AttModifier",id:"attack_knockback",amount:1.6,operation:"add_value",point:65},\
{type:"AttModifier",id:"attack_knockback",amount:1.8,operation:"add_value",point:75},\
{type:"AttModifier",id:"attack_knockback",amount:2.0,operation:"add_value",point:85},\
{type:"AttModifier",id:"attack_knockback",amount:2.2,operation:"add_value",point:100},\
{type:"AttModifier",id:"attack_knockback",amount:2.4,operation:"add_value",point:115},\
{type:"AttModifier",id:"attack_knockback",amount:2.6,operation:"add_value",point:125},\
{type:"AttModifier",id:"attack_knockback",amount:2.8,operation:"add_value",point:140},\
{type:"AttModifier",id:"attack_knockback",amount:3.0,operation:"add_value",point:150},\
]
data modify storage sys:mod data append from storage sys:mod hold[]
data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"attack_knockback",amount:-0.1,operation:"add_value",point:-8},\
{type:"AttModifier",id:"attack_knockback",amount:-0.2,operation:"add_value",point:-16},\
{type:"AttModifier",id:"attack_knockback",amount:-0.3,operation:"add_value",point:-24},\
{type:"AttModifier",id:"attack_knockback",amount:-0.4,operation:"add_value",point:-32},\
{type:"AttModifier",id:"attack_knockback",amount:-0.5,operation:"add_value",point:-40},\
{type:"AttModifier",id:"attack_knockback",amount:-0.6,operation:"add_value",point:-50},\
{type:"AttModifier",id:"attack_knockback",amount:-0.7,operation:"add_value",point:-60},\
{type:"AttModifier",id:"attack_knockback",amount:-0.8,operation:"add_value",point:-70},\
{type:"AttModifier",id:"attack_knockback",amount:-0.9,operation:"add_value",point:-80},\
{type:"AttModifier",id:"attack_knockback",amount:-1,operation:"add_value",point:-90},\
]
data modify storage sys:mod data append from storage sys:mod hold[]