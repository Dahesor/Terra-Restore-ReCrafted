#1

effect give @s levitation 1 38 true
attribute @s safe_fall_distance modifier add sys:skill/leap 10 add_value
function dah.sch:set {time:3,run:'effect clear @s levitation'}
function dah.sch:set {time:30,run:'attribute @s safe_fall_distance modifier remove sys:skill/leap'}

scoreboard players set @s CD.right 200