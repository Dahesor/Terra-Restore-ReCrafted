scoreboard players set #_ic calculator 0
execute store result score #_ic calculator run data get storage data item_list[0].Slot
execute unless score #_ic calculator matches 9..35 run return fail


data modify storage data container append value {slot:0}
scoreboard players remove #_ic calculator 9
execute store result storage data container[-1].slot int 1 run scoreboard players get #_ic calculator
data remove storage data item_list[0].Slot
data modify storage data container[-1].item set from storage data item_list[0]