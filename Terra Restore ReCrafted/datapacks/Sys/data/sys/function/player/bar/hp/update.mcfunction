function dah.actbar_mixer:remove/this {id:"hp"}
function dah.actbar_mixer:remove/this {id:"hp_container"}
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail

scoreboard players remove %this_hp HP.dry 1
scoreboard players remove %this_hp saved_blink 1
scoreboard players operation %this_hp HP.dry /= #100 calculator
scoreboard players operation %this_hp saved_blink /= #100 calculator
scoreboard players add %this_hp HP.dry 1
scoreboard players add %this_hp saved_blink 1

function sys:player/bar/hp/cases/mod
function dah.actbar_mixer:append/before

function sys:player/bar/hp/draws/container
function dah.actbar_mixer:append/before