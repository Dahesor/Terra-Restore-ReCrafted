#必须返回1
execute unless data storage data player_event[0].Events[0] run return 1

data modify storage data this_events set from storage data player_event[0].Events
data remove storage data player_event[0].Events[]
function sys:core/player_event/proc_manager

#必须返回1
return 1