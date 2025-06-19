function sys:mob/ticking/update_hp
scoreboard players set @s hit_chance 0

tag @s add fully_resolved
data modify entity @s drop_chances.body set value 0.0
execute if items entity @s armor.body * run return run item modify entity @s armor.body {function:"set_enchantments",add:true,enchantments:{"sys:mech/identifier":1}}

item replace entity @s armor.body with barrier[enchantments={"sys:mech/identifier":1},item_model=air,equippable={slot:"body"}]