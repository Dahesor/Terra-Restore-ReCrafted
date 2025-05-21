execute store result score #temp calculator run data get storage temp save[0].Slot
execute unless score #temp calculator matches 10..35 run return run function sys:player/ui/actions/inventory/next
scoreboard players remove #temp calculator 9
data modify storage temp item append from storage temp save[0]
execute store result storage temp item[-1].Slot int 1 run scoreboard players get #temp calculator
function sys:player/ui/actions/inventory/next