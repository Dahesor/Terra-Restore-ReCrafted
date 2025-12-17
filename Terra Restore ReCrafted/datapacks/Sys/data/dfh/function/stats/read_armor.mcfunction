execute store result score @s dfh.toughness run attribute @s armor_toughness get
execute store result score @s dfh.armor run attribute @s armor get
execute if score read_ench_defence dfh.settings matches 1 run function dfh:stats/read_ench
function dfh:stats/armor
tag @s remove dfh.update_armor