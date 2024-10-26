data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"attack_damage",amount:0.2,operation:"add_value",point:14},\
{type:"AttModifier",id:"attack_damage",amount:0.3,operation:"add_value",point:20},\
{type:"AttModifier",id:"attack_damage",amount:0.5,operation:"add_value",point:25},\
{type:"AttModifier",id:"attack_damage",amount:0.75,operation:"add_value",point:34},\
{type:"AttModifier",id:"attack_damage",amount:0.9,operation:"add_value",point:45},\
{type:"AttModifier",id:"attack_damage",amount:1,operation:"add_value",point:55},\
{type:"AttModifier",id:"attack_damage",amount:1.5,operation:"add_value",point:64},\
{type:"AttModifier",id:"attack_damage",amount:2,operation:"add_value",point:76},\
{type:"AttModifier",id:"attack_damage",amount:2.5,operation:"add_value",point:90},\
{type:"AttModifier",id:"attack_damage",amount:3,operation:"add_value",point:110},\
{type:"AttModifier",id:"attack_damage",amount:3.5,operation:"add_value",point:115},\
{type:"AttModifier",id:"attack_damage",amount:4,operation:"add_value",point:130},\
{type:"AttModifier",id:"attack_damage",amount:4.2,operation:"add_value",point:135},\
{type:"AttModifier",id:"attack_damage",amount:4.8,operation:"add_value",point:145},\
{type:"AttModifier",id:"attack_damage",amount:5,operation:"add_value",point:150},\
{type:"AttModifier",id:"attack_damage",amount:5.5,operation:"add_value",point:160},\
{type:"AttModifier",id:"attack_damage",amount:6,operation:"add_value",point:170},\
{type:"AttModifier",id:"attack_damage",amount:6.5,operation:"add_value",point:180},\
{type:"AttModifier",id:"attack_damage",amount:7,operation:"add_value",point:190},\
{type:"AttModifier",id:"attack_damage",amount:7.5,operation:"add_value",point:200},\
]
data modify storage sys:mod data append from storage sys:mod hold[]
data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"attack_damage",amount:-0.2,operation:"add_value",point:-10},\
{type:"AttModifier",id:"attack_damage",amount:-0.3,operation:"add_value",point:-15},\
{type:"AttModifier",id:"attack_damage",amount:-0.5,operation:"add_value",point:-20},\
{type:"AttModifier",id:"attack_damage",amount:-0.75,operation:"add_value",point:-30},\  
{type:"AttModifier",id:"attack_damage",amount:-1,operation:"add_value",point:-45},\
{type:"AttModifier",id:"attack_damage",amount:-1.2,operation:"add_value",point:-50},\
{type:"AttModifier",id:"attack_damage",amount:-1.5,operation:"add_value",point:-58},\
{type:"AttModifier",id:"attack_damage",amount:-2,operation:"add_value",point:-73},\
{type:"AttModifier",id:"attack_damage",amount:-3,operation:"add_value",point:-100},\
{type:"AttModifier",id:"attack_damage",amount:-3.5,operation:"add_value",point:-115},\
{type:"AttModifier",id:"attack_damage",amount:-4,operation:"add_value",point:-130},\
]
data modify storage sys:mod data append from storage sys:mod hold[]