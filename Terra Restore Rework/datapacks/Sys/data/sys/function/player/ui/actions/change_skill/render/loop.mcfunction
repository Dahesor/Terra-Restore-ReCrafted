function sys:player/ui/actions/change_skill/render/each


execute store result score %this calculator run data get storage data skill[0].id
function sys:player/ui/actions/change_skill/render/hints



data modify storage sys:data Inv append from storage data item
data modify storage sys:data Inv[-1].Slot set value 30b

scoreboard players add %count calculator 1
execute if score %count calculator matches 9 run scoreboard players add %count calculator 1
execute if score %count calculator matches 18 run scoreboard players add %count calculator 1
execute store result storage sys:data Inv[-1].Slot byte 1 run scoreboard players get %count calculator

data remove storage data skill[0]

execute if data storage data skill[0].id unless score %count calculator matches 25.. run function sys:player/ui/actions/change_skill/render/loop