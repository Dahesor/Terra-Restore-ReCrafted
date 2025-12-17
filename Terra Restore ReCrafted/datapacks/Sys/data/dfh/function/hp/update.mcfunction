function dah.actbar_mixer:remove/this {id:"dfh:hp"}
function dah.actbar_mixer:remove/this {id:"dfh:hp_container"}
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail

scoreboard players remove %this_hp dfh.HP 1
scoreboard players remove %this_hp dfh.saved_blink 1
scoreboard players operation %this_hp dfh.HP /= #100 dfh.calculator
scoreboard players operation %this_hp dfh.saved_blink /= #100 dfh.calculator
scoreboard players add %this_hp dfh.HP 1
scoreboard players add %this_hp dfh.saved_blink 1

function dfh:hp/cases/mod
function dah.actbar_mixer:append/before

function dfh:hp/draws/container
function dah.actbar_mixer:append/before