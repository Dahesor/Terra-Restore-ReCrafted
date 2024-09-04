data modify storage sys:data test set value {by:-102,at:[2941,153,-1005],till:-1,valid_spots:[],region:12,display:"[System] "}
scoreboard players set #x calculator 2941
scoreboard players set #y calculator 153
scoreboard players set #z calculator -1005
execute positioned 2941 153 -1005 run function sys:player/utils/tp/reciver/check_valid
execute store result score #temp calculator run time query gametime
scoreboard players add #temp calculator 1800
execute store result storage sys:data test.till int 1 run scoreboard players get #temp calculator
forceload add 2941 -1005
execute positioned 2941 153 -1005 run function sys:core/tp/new