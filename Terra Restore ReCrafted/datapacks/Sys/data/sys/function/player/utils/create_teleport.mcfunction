execute if entity @s[tag=tpee] run return -3
execute if entity @s[tag=tper] run return -4
execute unless score @s region matches 1..2000 run return -2
execute if entity @s[tag=in_upgrades] run return -2
data modify storage sys:data test set value {by:-1,at:[0,0,0],till:-1,valid_spots:[],region:-1,display:""}
execute store result score #x calculator run data get entity @s Pos[0]
execute store result score #y calculator run data get entity @s Pos[1]
execute store result score #z calculator run data get entity @s Pos[2]
execute store result score #final_success calculator run function sys:player/utils/tp/reciver/check_valid
execute unless score #final_success calculator matches 13.. run return -1
execute store result storage sys:data test.by int 1 run scoreboard players get @s UID
execute store result storage sys:data test.at[0] int 1 run scoreboard players get #x calculator
execute store result storage sys:data test.at[1] int 1 run scoreboard players get #y calculator
execute store result storage sys:data test.at[2] int 1 run scoreboard players get #z calculator
execute store result score #temp calculator run time query gametime
scoreboard players add #temp calculator 1800
execute store result storage sys:data test.till int 1 run scoreboard players get #temp calculator
execute store result storage sys:data test.region int 1 run scoreboard players get @s region
function sys:player/uid/get
data modify storage sys:data test.display set from storage sys:data player[0].name
tag @s add tpee
function sys:core/tp/new
return 1