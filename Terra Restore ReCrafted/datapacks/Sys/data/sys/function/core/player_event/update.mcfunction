execute unless data storage sys:data events[0] run return fail
execute unless score $player data matches 1.. run return fail
data modify storage data player_event set from storage sys:data events
data modify storage data online_player_event set value []
data modify storage data offline_player_event set value []
scoreboard players operation #$%remian calculator = $player data

function sys:core/player_event/find_player

data modify storage sys:data events set from storage data player_event
data modify storage sys:data events append from storage data offline_player_event[]
data modify storage sys:data events prepend from storage data online_player_event[]