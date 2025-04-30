execute store result score #temp2 calculator run data get storage data this_events[0].interval
scoreboard players operation #temp calculator = $gametime calculator
scoreboard players operation #temp calculator %= #temp2 calculator
execute unless score #temp calculator matches 0 run return 1

data modify storage temp player_event set value {run:""}
data modify storage temp player_event.run set from storage data this_events[0].run
function sys:core/run_any with storage temp player_event
return 1