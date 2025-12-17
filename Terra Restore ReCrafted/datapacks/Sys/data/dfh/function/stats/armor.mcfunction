tag @s remove dfh.hud.absorb
execute unless score @s dfh.Absorb matches ..0 run tag @s add dfh.hud.absorb

function dah.actbar_mixer:remove/this {id:"dfh:ench.DEF"}
function dah.actbar_mixer:remove/this {id:"dfh:armor_tough"}
function dah.actbar_mixer:remove/this {id:"dfh:armor_20"}
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail

execute if score ench_defence dfh.settings matches 1 run function dfh:stats/calcs/magic_def

scoreboard players operation #temp dfh.calculator = @s dfh.toughness
execute if score #temp dfh.calculator matches 1.. run function dfh:stats/calcs/armor_toughness
execute if score #temp dfh.calculator matches 1.. run function dah.actbar_mixer:append/before

scoreboard players operation #temp dfh.calculator = @s dfh.armor
execute if score #temp dfh.calculator matches 1.. run function dfh:stats/calcs/armor
execute if score #temp dfh.calculator matches 1.. run function dah.actbar_mixer:append/before