data modify storage sys:data test set value {by:-110,at:[2577,115,-979],till:-1,valid_spots:[],region:11,display:"[System] "}
scoreboard players set #x calculator 2577
scoreboard players set #y calculator 115
scoreboard players set #z calculator -979
execute positioned 2577 115 -979 run function sys:player/utils/tp/reciver/check_valid
execute store result score #temp calculator run time query gametime
scoreboard players add #temp calculator 1800
execute store result storage sys:data test.till int 1 run scoreboard players get #temp calculator
forceload add 2577 -979 2574 -978
execute positioned 2577 115 -979 run function sys:core/tp/new