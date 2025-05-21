execute anchored eyes run particle block{block_state:{Name:"purple_concrete"}} ~ ~ ~ 0.1 0.05 0.1 0.1 20 normal @a

scoreboard players remove @s enchant.corrosion 1

execute unless score @s enchant.corrosion matches ..0 run return fail
execute unless entity @s[tag=quater_ticking_permanent] run tag @s remove quater_ticking
attribute @s armor modifier remove enchantment.corrosion
attribute @s armor_toughness modifier remove enchantment.corrosion