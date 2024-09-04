execute unless predicate sys:valid_tp_loc run return fail

execute facing entity @s feet positioned ^ ^ ^0.3 unless function sys:player/utils/tp/reciver/trace_back run return fail

data modify storage sys:data test.valid_spots append value [0,0,0]

scoreboard players operation #temp calculator = #x calculator 
scoreboard players operation #temp calculator += #dx calculator
execute store result storage sys:data test.valid_spots[-1][0] int 1 run scoreboard players get #temp calculator
scoreboard players operation #temp calculator = #y calculator
scoreboard players operation #temp calculator += #dy calculator
execute store result storage sys:data test.valid_spots[-1][1] int 1 run scoreboard players get #temp calculator
scoreboard players operation #temp calculator = #z calculator
scoreboard players operation #temp calculator += #dz calculator
execute store result storage sys:data test.valid_spots[-1][2] int 1 run scoreboard players get #temp calculator
return 1