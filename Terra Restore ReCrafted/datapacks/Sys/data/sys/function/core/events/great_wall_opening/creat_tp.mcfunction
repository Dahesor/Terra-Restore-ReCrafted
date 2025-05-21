data modify storage sys:data test set value {by:-101,at:[2220,88,-1140],till:-1,valid_spots:[],region:11,display:"[System] "}
scoreboard players set #x calculator 2220
scoreboard players set #y calculator 88
scoreboard players set #z calculator -1140
execute positioned 2220 88 -1140 run function sys:player/utils/tp/reciver/check_valid
execute store result score #temp calculator run time query gametime
scoreboard players add #temp calculator 1800
execute store result storage sys:data test.till int 1 run scoreboard players get #temp calculator
forceload add 2218 -1144
execute positioned 2220 88 -1140 run function sys:core/tp/new