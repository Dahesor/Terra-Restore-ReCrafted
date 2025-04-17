scoreboard players set #temp STR 0
scoreboard players set #temp CON 0
scoreboard players set #temp DEX 0
scoreboard players set #temp INT 0
scoreboard players set #temp POW 0
scoreboard players set #temp EDU 0
data modify storage data equipment set from entity @s equipment

data modify storage data stats set value {}
data modify storage data stats set from storage data equipment.head.components."minecraft:custom_data".stats
function sys:player/stats/calcs/save_data
data modify storage data stats set value {}
data modify storage data stats set from storage data equipment.chest.components."minecraft:custom_data".stats
function sys:player/stats/calcs/save_data
data modify storage data stats set value {}
data modify storage data stats set from storage data equipment.legs.components."minecraft:custom_data".stats
function sys:player/stats/calcs/save_data
data modify storage data stats set value {}
data modify storage data stats set from storage data equipment.feet.components."minecraft:custom_data".stats
function sys:player/stats/calcs/save_data


function sys:player/stats/calcs/get_final
function sys:player/stats/display