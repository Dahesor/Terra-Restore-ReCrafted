data modify storage data offline_player_event append from storage data player_event[0]
data remove storage data player_event[0]
execute if data storage data player_event[0] run function sys:core/player_event/find_player