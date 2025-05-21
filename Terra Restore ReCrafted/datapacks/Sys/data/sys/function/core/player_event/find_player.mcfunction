execute store result score #temp calculator run data get storage data player_event[0].UID
scoreboard players set #$%success calculator 0
execute as @a if score @s UID = #temp calculator at @s store result score #$%success calculator run function sys:core/player_event/found
execute unless score #$%success calculator matches 1 run return run function sys:core/player_event/offline

data modify storage data online_player_event append from storage data player_event[0]
data remove storage data player_event[0]
scoreboard players remove #$%remian calculator 1
execute if score #$%remian calculator matches 1.. if data storage data player_event[0] run function sys:core/player_event/find_player