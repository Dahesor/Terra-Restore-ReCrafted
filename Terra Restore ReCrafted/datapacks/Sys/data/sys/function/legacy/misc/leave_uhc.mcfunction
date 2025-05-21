forceload add 763 -1160
fill 764 62 -1160 763 61 -1159 air destroy
tp @s 764 61.00 -1159 0 0
forceload remove 763 -1160
scoreboard players set @s region 102
stopsound @a record
tag @s add region_name
scoreboard players set @s region_name 5
tag @s remove uhc_hunger