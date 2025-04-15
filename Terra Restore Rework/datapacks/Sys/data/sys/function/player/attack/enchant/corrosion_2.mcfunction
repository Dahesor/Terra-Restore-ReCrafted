execute unless entity @s[type=#sys:mobs] run return fail
execute if score @s enchant.corrosion matches 16.. run return fail
scoreboard players set @s enchant.corrosion 16
tag @s add quater_ticking

attribute @s armor modifier remove enchantment.corrosion
attribute @s armor_toughness modifier remove enchantment.corrosion
attribute @s armor modifier add enchantment.corrosion -0.38 add_multiplied_base
attribute @s armor_toughness modifier add enchantment.corrosion -0.38 add_multiplied_base