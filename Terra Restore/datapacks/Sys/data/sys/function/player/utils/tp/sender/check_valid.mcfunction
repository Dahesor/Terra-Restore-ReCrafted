execute if entity @s[tag=tpee] run return run function sys:player/utils/tp/sender/invalid/owner
execute if entity @s[tag=tper] run return run function sys:player/utils/tp/sender/invalid/tper
execute if entity @s[gamemode=!survival,gamemode=!creative] run return run function sys:player/utils/tp/sender/invalid/special

tag @s add tper
data modify storage temp run set value {UID:0}
execute store result storage temp run.UID int 1 run scoreboard players get @s tp
execute store result score #temp calculator run function sys:core/tp/get with storage temp run
execute unless score #temp calculator matches 1 run return run function sys:player/utils/tp/sender/invalid/no_match
execute store result score #temp calculator run data get storage sys:data test.region
execute if score #temp calculator = @s region run function sys:player/utils/tp/sender/cross_region/false
execute unless score #temp calculator = @s region run function sys:player/utils/tp/sender/cross_region/true

execute store result score #temp calculator run time query gametime
execute store result score #temp2 calculator run data get storage sys:data test.till
scoreboard players operation #temp calculator += @s tp_cd
scoreboard players add #temp calculator 5
execute if score #temp calculator >= #temp2 calculator run return run function sys:player/utils/tp/sender/invalid/timeout

execute store result score #temp calculator if data storage sys:data test.valid_spots[]
execute store result score #temp2 calculator run random value 1..2147483647
scoreboard players operation #temp2 calculator %= #temp calculator
data modify storage temp run set value {index:0}
execute store result storage temp run.index int 1 run scoreboard players get #temp2 calculator
function sys:player/utils/tp/sender/package/select_spot with storage temp run
function sys:player/utils/tp/sender/package/send_package

execute store result score @s pos_x run data get entity @s Pos[0]
execute store result score @s pos_y run data get entity @s Pos[1]
execute store result score @s pos_z run data get entity @s Pos[2]