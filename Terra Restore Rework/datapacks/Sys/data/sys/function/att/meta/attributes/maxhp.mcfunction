data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"generic.max_health",amount:0.3,operation:"add_value",point:8},\
{type:"AttModifier",id:"generic.max_health",amount:0.6,operation:"add_value",point:12},\
{type:"AttModifier",id:"generic.max_health",amount:1.0,operation:"add_value",point:16},\
{type:"AttModifier",id:"generic.max_health",amount:1.2,operation:"add_value",point:24},\
{type:"AttModifier",id:"generic.max_health",amount:1.4,operation:"add_value",point:36},\
{type:"AttModifier",id:"generic.max_health",amount:1.6,operation:"add_value",point:54},\
{type:"AttModifier",id:"generic.max_health",amount:1.8,operation:"add_value",point:68},\
{type:"AttModifier",id:"generic.max_health",amount:2.0,operation:"add_value",point:80},\
{type:"AttModifier",id:"generic.max_health",amount:2.2,operation:"add_value",point:96},\
{type:"AttModifier",id:"generic.max_health",amount:2.4,operation:"add_value",point:110},\
{type:"AttModifier",id:"generic.max_health",amount:2.6,operation:"add_value",point:120},\
{type:"AttModifier",id:"generic.max_health",amount:2.8,operation:"add_value",point:128},\
{type:"AttModifier",id:"generic.max_health",amount:3.0,operation:"add_value",point:136},\
{type:"AttModifier",id:"generic.max_health",amount:3.2,operation:"add_value",point:144},\
{type:"AttModifier",id:"generic.max_health",amount:3.4,operation:"add_value",point:152},\
{type:"AttModifier",id:"generic.max_health",amount:3.6,operation:"add_value",point:160},\
{type:"AttModifier",id:"generic.max_health",amount:3.8,operation:"add_value",point:168},\
{type:"AttModifier",id:"generic.max_health",amount:4.0,operation:"add_value",point:176},\
{type:"AttModifier",id:"generic.max_health",amount:4.2,operation:"add_value",point:184},\
{type:"AttModifier",id:"generic.max_health",amount:4.4,operation:"add_value",point:192},\
{type:"AttModifier",id:"generic.max_health",amount:4.6,operation:"add_value",point:200},\
{type:"AttModifier",id:"generic.max_health",amount:4.8,operation:"add_value",point:210},\
{type:"AttModifier",id:"generic.max_health",amount:5.0,operation:"add_value",point:220},\
{type:"AttModifier",id:"generic.max_health",amount:5.2,operation:"add_value",point:240},\
{type:"AttModifier",id:"generic.max_health",amount:5.4,operation:"add_value",point:260},\
{type:"AttModifier",id:"generic.max_health",amount:5.6,operation:"add_value",point:280},\
{type:"AttModifier",id:"generic.max_health",amount:5.8,operation:"add_value",point:310},\
{type:"AttModifier",id:"generic.max_health",amount:6,operation:"add_value",point:340},\
]
data modify storage sys:mod data append from storage sys:mod hold[]
data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"generic.max_health",amount:-0.5,operation:"add_value",point:-20},\
{type:"AttModifier",id:"generic.max_health",amount:-1.0,operation:"add_value",point:-40},\
{type:"AttModifier",id:"generic.max_health",amount:-1.5,operation:"add_value",point:-60},\
{type:"AttModifier",id:"generic.max_health",amount:-2,operation:"add_value",point:-80},\
{type:"AttModifier",id:"generic.max_health",amount:-2.5,operation:"add_value",point:-100},\
{type:"AttModifier",id:"generic.max_health",amount:-3,operation:"add_value",point:-120},\
{type:"AttModifier",id:"generic.max_health",amount:-3.5,operation:"add_value",point:-140},\
{type:"AttModifier",id:"generic.max_health",amount:-4,operation:"add_value",point:-160},\
{type:"AttModifier",id:"generic.max_health",amount:-4.5,operation:"add_value",point:-180},\
{type:"AttModifier",id:"generic.max_health",amount:5,operation:"add_value",point:-200},\
{type:"AttModifier",id:"generic.max_health",amount:-5.5,operation:"add_value",point:-220},\
{type:"AttModifier",id:"generic.max_health",amount:-6,operation:"add_value",point:-240},\
]
data modify storage sys:mod data append from storage sys:mod hold[]