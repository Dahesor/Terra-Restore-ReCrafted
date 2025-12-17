execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail

function dah.actbar_mixer:z_private/uid/get
data modify storage dah:actbar new set from storage dah:actbar data[0].content[{id:"dfh:hp"}]
data remove storage dah:actbar data[0].content[{id:"dfh:hp"}]
function dfh:hp/wiggle/low
function dah.actbar_mixer:append/before

data modify storage dah:actbar new set from storage dah:actbar data[0].content[{id:"dfh:hp_container"}]
data remove storage dah:actbar data[0].content[{id:"dfh:hp_container"}]
function dfh:hp/wiggle/low
function dah.actbar_mixer:append/before