data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"generic.attack_speed",amount:0.05,operation:"add_value",point:8},\
{type:"AttModifier",id:"generic.attack_speed",amount:0.1,operation:"add_value",point:12},\
{type:"AttModifier",id:"generic.attack_speed",amount:0.15,operation:"add_value",point:16},\
{type:"AttModifier",id:"generic.attack_speed",amount:0.2,operation:"add_value",point:24},\
{type:"AttModifier",id:"generic.attack_speed",amount:0.25,operation:"add_value",point:36},\
{type:"AttModifier",id:"generic.attack_speed",amount:0.3,operation:"add_value",point:54},\
{type:"AttModifier",id:"generic.attack_speed",amount:0.4,operation:"add_value",point:68},\
{type:"AttModifier",id:"generic.attack_speed",amount:0.5,operation:"add_value",point:80},\
{type:"AttModifier",id:"generic.attack_speed",amount:0.6,operation:"add_value",point:96},\
{type:"AttModifier",id:"generic.attack_speed",amount:0.7,operation:"add_value",point:110},\
{type:"AttModifier",id:"generic.attack_speed",amount:0.8,operation:"add_value",point:120},\
{type:"AttModifier",id:"generic.attack_speed",amount:0.9,operation:"add_value",point:128},\
{type:"AttModifier",id:"generic.attack_speed",amount:1.0,operation:"add_value",point:136},\
{type:"AttModifier",id:"generic.attack_speed",amount:1.1,operation:"add_value",point:144},\
{type:"AttModifier",id:"generic.attack_speed",amount:1.2,operation:"add_value",point:152},\
{type:"AttModifier",id:"generic.attack_speed",amount:1.3,operation:"add_value",point:160},\
{type:"AttModifier",id:"generic.attack_speed",amount:1.4,operation:"add_value",point:168},\
{type:"AttModifier",id:"generic.attack_speed",amount:1.5,operation:"add_value",point:176},\
{type:"AttModifier",id:"generic.attack_speed",amount:1.6,operation:"add_value",point:184},\
{type:"AttModifier",id:"generic.attack_speed",amount:1.7,operation:"add_value",point:192},\
{type:"AttModifier",id:"generic.attack_speed",amount:1.8,operation:"add_value",point:200},\
{type:"AttModifier",id:"generic.attack_speed",amount:1.9,operation:"add_value",point:210},\
{type:"AttModifier",id:"generic.attack_speed",amount:2,operation:"add_value",point:220},\
{type:"AttModifier",id:"generic.attack_speed",amount:2.2,operation:"add_value",point:240},\
{type:"AttModifier",id:"generic.attack_speed",amount:2.4,operation:"add_value",point:260},\
{type:"AttModifier",id:"generic.attack_speed",amount:2.6,operation:"add_value",point:280},\
{type:"AttModifier",id:"generic.attack_speed",amount:2.8,operation:"add_value",point:310},\
{type:"AttModifier",id:"generic.attack_speed",amount:3,operation:"add_value",point:340},\
]
data modify storage sys:mod data append from storage sys:mod hold[]
data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.05,operation:"add_value",point:-20},\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.10,operation:"add_value",point:-40},\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.15,operation:"add_value",point:-60},\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.20,operation:"add_value",point:-80},\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.25,operation:"add_value",point:-120},\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.30,operation:"add_value",point:-140},\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.35,operation:"add_value",point:-160},\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.40,operation:"add_value",point:-180},\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.45,operation:"add_value",point:-200},\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.50,operation:"add_value",point:-220},\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.55,operation:"add_value",point:-240},\
{type:"AttModifier",id:"generic.attack_speed",amount:-0.6,operation:"add_value",point:-260},\
]
data modify storage sys:mod data append from storage sys:mod hold[]