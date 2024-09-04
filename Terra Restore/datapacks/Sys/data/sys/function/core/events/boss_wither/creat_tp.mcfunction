execute if data storage sys:data tp[{by:-100}] run return fail
data modify storage sys:data test set value {by:-100,at:[763,88,-973],till:-1,valid_spots:[],region:4,display:"[System] "}
scoreboard players set #x calculator 763
scoreboard players set #y calculator 88
scoreboard players set #z calculator -973
execute positioned 763 88 -973 run function sys:player/utils/tp/reciver/check_valid
execute store result score #temp calculator run time query gametime
scoreboard players add #temp calculator 1800
execute store result storage sys:data test.till int 1 run scoreboard players get #temp calculator
forceload add 760 -970
execute positioned 763 88 -973 run function sys:core/tp/new
