scoreboard players operation %this dfh.Absorb = @s dfh.Absorb
function dah.actbar_mixer:remove/this {id:"dfh:absorb"}
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail

scoreboard players operation %this_hp dfh.Absorb = %this dfh.Absorb
scoreboard players remove %this_hp dfh.Absorb 1
scoreboard players operation %this_hp dfh.Absorb /= #100 dfh.calculator
scoreboard players add %this_hp dfh.Absorb 1

function dfh:hp/absorb/mod
function dah.actbar_mixer:append/before

function dah.actbar_mixer:redraw