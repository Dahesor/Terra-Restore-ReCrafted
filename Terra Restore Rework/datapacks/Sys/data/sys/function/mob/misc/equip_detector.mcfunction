tag @s add fully_resolved
data modify entity @s drop_chances.feet set value 0.0
execute if items entity @s armor.feet * run return run item modify entity @s armor.feet {function:"set_enchantments",add:true,enchantments:{"sys:mech/identifier":1}}

data modify entity @s equipment.feet set value {id:"barrier",count:1,components:{custom_model_data:{floats:[2.0f]},enchantments:{"sys:mech/identifier":1}}}
