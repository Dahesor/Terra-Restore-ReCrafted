data modify storage sys:mod hold set value [\
{type:"AttModifier",id:"generic.jump_strength",amount:0.05,operation:"add_multiplied_base",point:10},\
{type:"AttModifier",id:"generic.jump_strength",amount:0.1,operation:"add_multiplied_base",point:20},\
{type:"AttModifier",id:"generic.jump_strength",amount:0.15,operation:"add_multiplied_base",point:30},\
{type:"AttModifier",id:"generic.jump_strength",amount:0.2,operation:"add_multiplied_base",point:40},\
{type:"AttModifier",id:"generic.jump_strength",amount:0.3,operation:"add_multiplied_base",point:60},\
{type:"AttModifier",id:"generic.jump_strength",amount:0.4,operation:"add_multiplied_base",point:80},\
{type:"AttModifier",id:"generic.jump_strength",amount:0.5,operation:"add_multiplied_base",point:100},\
{type:"AttModifier",id:"generic.jump_strength",amount:0.6,operation:"add_multiplied_base",point:120},\
{type:"AttModifier",id:"generic.jump_strength",amount:0.7,operation:"add_multiplied_base",point:130},\
{type:"AttModifier",id:"generic.jump_strength",amount:0.8,operation:"add_multiplied_base",point:140},\
{type:"AttModifier",id:"generic.jump_strength",amount:0.9,operation:"add_multiplied_base",point:150},\
{type:"AttModifier",id:"generic.jump_strength",amount:1.0,operation:"add_multiplied_base",point:160},\
{type:"AttModifier",id:"generic.jump_strength",amount:1.1,operation:"add_multiplied_base",point:170},\
{type:"AttModifier",id:"generic.jump_strength",amount:1.2,operation:"add_multiplied_base",point:180},\
{type:"AttModifier",id:"generic.jump_strength",amount:1.3,operation:"add_multiplied_base",point:200},\
{type:"AttModifier",id:"generic.jump_strength",amount:1.4,operation:"add_multiplied_base",point:250},\
{type:"AttModifier",id:"generic.jump_strength",amount:1.5,operation:"add_multiplied_base",point:340},\
]
data modify storage sys:mod data append from storage sys:mod hold[]