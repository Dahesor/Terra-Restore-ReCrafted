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

#HUD
tag @s remove hud.roll_1
tag @s remove hud.roll_2
tag @s remove hud.roll_3

execute if score @s health matches ..20 run tag @s add hud.roll_1
execute if score @s health matches 21..40 run tag @s add hud.roll_2
execute if score @s health matches 41.. run tag @s add hud.roll_3

function dah.actbar_mixer:remove/this {id:"ench.DEF"}
function dah.actbar_mixer:remove/this {id:"armor_tough"}
function dah.actbar_mixer:remove/this {id:"armor_20"}
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail

function sys:player/stats/calcs/magic_def

execute store result score #temp calculator run attribute @s armor_toughness get
execute if score #temp calculator matches 1.. run function sys:player/stats/calcs/armor_toughness
execute if score #temp calculator matches 1.. run function dah.actbar_mixer:append/before

execute store result score #temp calculator run attribute @s armor get
execute if score #temp calculator matches 21.. run function sys:player/stats/calcs/armor_20
execute if score #temp calculator matches 21.. run function dah.actbar_mixer:append/before