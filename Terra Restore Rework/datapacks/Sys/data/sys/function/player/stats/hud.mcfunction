tag @s remove hud.absorb
execute unless score @s HP.absorb matches ..0 run tag @s add hud.absorb

function dah.actbar_mixer:remove/this {id:"ench.DEF"}
function dah.actbar_mixer:remove/this {id:"armor_tough"}
function dah.actbar_mixer:remove/this {id:"armor_20"}
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail

function sys:player/stats/calcs/magic_def

execute store result score #temp calculator run attribute @s armor_toughness get
execute if score #temp calculator matches 1.. run function sys:player/stats/calcs/armor_toughness
execute if score #temp calculator matches 1.. run function dah.actbar_mixer:append/before

execute store result score #temp calculator run attribute @s armor get
execute if score #temp calculator matches 1.. run function sys:player/stats/calcs/armor
execute if score #temp calculator matches 1.. run function dah.actbar_mixer:append/before