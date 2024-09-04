data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"player.entity_interaction_range",amount:0.1,operation:"add_value",point:20},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:0.2,operation:"add_value",point:15},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:0.3,operation:"add_value",point:20},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:0.5,operation:"add_value",point:30},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:0.7,operation:"add_value",point:40},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:0.9,operation:"add_value",point:60},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:1,operation:"add_value",point:80},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:1.2,operation:"add_value",point:110},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:1.4,operation:"add_value",point:140},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:1.6,operation:"add_value",point:170},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:1.8,operation:"add_value",point:200},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:2,operation:"add_value",point:220},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:2.2,operation:"add_value",point:260},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:2.4,operation:"add_value",point:300},\
]
data modify storage sys:mod data append from storage sys:mod hold[]
data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"player.entity_interaction_range",amount:-0.1,operation:"add_value",point:-20},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:-0.2,operation:"add_value",point:-40},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:-0.3,operation:"add_value",point:-60},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:-0.4,operation:"add_value",point:-80},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:-0.5,operation:"add_value",point:-100},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:-0.6,operation:"add_value",point:-120},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:-0.7,operation:"add_value",point:-140},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:-0.8,operation:"add_value",point:-160},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:-0.9,operation:"add_value",point:-180},\
{type:"AttModifier",id:"player.entity_interaction_range",amount:-1,operation:"add_value",point:-200},\
]
data modify storage sys:mod data append from storage sys:mod hold[]