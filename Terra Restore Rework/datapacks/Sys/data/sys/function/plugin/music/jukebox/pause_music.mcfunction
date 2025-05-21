stopsound @s record
scoreboard players set @s music 320
advancement grant @s only comms:popup/playing_disc
data modify storage dah.sch:new new set value {run:"advancement revoke @s only comms:popup/playing_disc",time:2,offline:"pause"}
function dah.sch:new