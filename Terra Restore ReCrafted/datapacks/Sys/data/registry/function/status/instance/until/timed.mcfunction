scoreboard players operation #this_until calculator = #time calculator
scoreboard players operation #this_until calculator += $gametime calculator
data modify storage registry:status instance.until set value 0
execute store result storage registry:status instance.until int 1 run scoreboard players get #this_until calculator