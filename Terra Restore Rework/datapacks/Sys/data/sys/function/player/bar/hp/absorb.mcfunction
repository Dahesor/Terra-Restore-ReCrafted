scoreboard players operation %this_hp HP.absorb = %this HP.absorb
scoreboard players remove %this_hp HP.absorb 1
scoreboard players operation %this_hp HP.absorb /= #100 calculator
scoreboard players add %this_hp HP.absorb 1

function dah.actbar_mixer:remove/this {id:"absorb"}
function sys:player/bar/hp/absorb/mod
function dah.actbar_mixer:append/before

function dah.actbar_mixer:redraw