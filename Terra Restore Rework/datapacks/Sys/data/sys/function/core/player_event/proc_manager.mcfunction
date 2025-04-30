execute store result score #temp calculator run data get storage data this_events[0].until
execute if score #temp calculator < $gametime calculator run return run function sys:core/player_event/expired

function sys:core/player_event/event_proc

data modify storage data player_event[0].Events append from storage data this_events[0]
data remove storage data this_events[0]
execute if data storage data this_events[0] run function sys:core/player_event/proc_manager