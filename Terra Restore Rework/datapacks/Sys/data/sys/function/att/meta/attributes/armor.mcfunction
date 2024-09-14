data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"generic.armor",amount:0.1,operation:"add_value",point:3},\
{type:"AttModifier",id:"generic.armor",amount:0.2,operation:"add_value",point:8},\
{type:"AttModifier",id:"generic.armor",amount:0.3,operation:"add_value",point:10},\
{type:"AttModifier",id:"generic.armor",amount:0.4,operation:"add_value",point:12},\
{type:"AttModifier",id:"generic.armor",amount:0.5,operation:"add_value",point:15},\
{type:"AttModifier",id:"generic.armor",amount:0.6,operation:"add_value",point:20},\
{type:"AttModifier",id:"generic.armor",amount:0.7,operation:"add_value",point:25},\
{type:"AttModifier",id:"generic.armor",amount:0.8,operation:"add_value",point:30},\
{type:"AttModifier",id:"generic.armor",amount:0.9,operation:"add_value",point:35},\
{type:"AttModifier",id:"generic.armor",amount:1.0,operation:"add_value",point:40},\
{type:"AttModifier",id:"generic.armor",amount:1.1,operation:"add_value",point:45},\
{type:"AttModifier",id:"generic.armor",amount:1.2,operation:"add_value",point:50},\
{type:"AttModifier",id:"generic.armor",amount:1.3,operation:"add_value",point:60},\
{type:"AttModifier",id:"generic.armor",amount:1.4,operation:"add_value",point:70},\
{type:"AttModifier",id:"generic.armor",amount:1.5,operation:"add_value",point:80},\
{type:"AttModifier",id:"generic.armor",amount:1.6,operation:"add_value",point:90},\
{type:"AttModifier",id:"generic.armor",amount:1.7,operation:"add_value",point:100},\
{type:"AttModifier",id:"generic.armor",amount:1.8,operation:"add_value",point:110},\
{type:"AttModifier",id:"generic.armor",amount:1.9,operation:"add_value",point:120},\
{type:"AttModifier",id:"generic.armor",amount:2,operation:"add_value",point:130},\
{type:"AttModifier",id:"generic.armor",amount:2.2,operation:"add_value",point:140},\
{type:"AttModifier",id:"generic.armor",amount:2.4,operation:"add_value",point:160},\
{type:"AttModifier",id:"generic.armor",amount:2.6,operation:"add_value",point:170},\
{type:"AttModifier",id:"generic.armor",amount:2.8,operation:"add_value",point:180},\
{type:"AttModifier",id:"generic.armor",amount:3,operation:"add_value",point:200},\
{type:"AttModifier",id:"generic.armor",amount:3.2,operation:"add_value",point:230},\
{type:"AttModifier",id:"generic.armor",amount:3.4,operation:"add_value",point:260},\
{type:"AttModifier",id:"generic.armor",amount:3.6,operation:"add_value",point:300},\
]
data modify storage sys:mod data append from storage sys:mod hold[]
data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"generic.armor",amount:-1.2,operation:"add_value",point:-20},\
{type:"AttModifier",id:"generic.armor",amount:-1.4,operation:"add_value",point:-30},\
{type:"AttModifier",id:"generic.armor",amount:-1.6,operation:"add_value",point:-40},\
{type:"AttModifier",id:"generic.armor",amount:-1.8,operation:"add_value",point:-50},\
{type:"AttModifier",id:"generic.armor",amount:-2,operation:"add_value",point:-60},\
{type:"AttModifier",id:"generic.armor",amount:-2.4,operation:"add_value",point:-100},\
{type:"AttModifier",id:"generic.armor",amount:-2.6,operation:"add_value",point:-120},\
{type:"AttModifier",id:"generic.armor",amount:-2.8,operation:"add_value",point:-140},\
{type:"AttModifier",id:"generic.armor",amount:-3,operation:"add_value",point:-160},\
{type:"AttModifier",id:"generic.armor",amount:-3.2,operation:"add_value",point:-180},\
{type:"AttModifier",id:"generic.armor",amount:-3.6,operation:"add_value",point:-200},\
{type:"AttModifier",id:"generic.armor",amount:-4,operation:"add_value",point:-220},\
]
data modify storage sys:mod data append from storage sys:mod hold[]