scoreboard players reset @s dfh.item_fix

execute unless score virtual_health dfh.settings matches 1 run return fail

tag @s add dfh.died

clear @s barrier[custom_data~{dfh:{temp:1b}}]
execute as @e[type=item] if items entity @s contents barrier[custom_data~{dfh:{temp:1b}}] run kill
attribute @s max_absorption base set 1024
attribute @s max_health base set 1024