#execute if score @s health matches 41..60 run return run function sys:player/stats/calcs/magic_def_hide

data modify storage dah:actbar new set value {id:"ench.DEF",text:[{text:"qW",font:"terra:hud",shadow_color:0},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"Qq"}]}
execute if entity @s[tag=hud.absorb] run data modify storage dah:actbar new.text[0].font set value "terra:hud_above"


execute if score #temp calculator matches 1 run return run data modify storage dah:actbar new.text[1].text set value "x"
execute if score #temp calculator matches 2.. run data modify storage dah:actbar new.text[1].text set value "z"
execute if score #temp calculator matches 3 run return run data modify storage dah:actbar new.text[3].text set value "x"
execute if score #temp calculator matches 4.. run data modify storage dah:actbar new.text[3].text set value "z"
execute if score #temp calculator matches 5 run return run data modify storage dah:actbar new.text[5].text set value "x"
execute if score #temp calculator matches 6.. run data modify storage dah:actbar new.text[5].text set value "z"
execute if score #temp calculator matches 7 run return run data modify storage dah:actbar new.text[7].text set value "x"
execute if score #temp calculator matches 8.. run data modify storage dah:actbar new.text[7].text set value "z"
execute if score #temp calculator matches 9 run return run data modify storage dah:actbar new.text[9].text set value "x"
execute if score #temp calculator matches 10.. run data modify storage dah:actbar new.text[9].text set value "z"
execute if score #temp calculator matches 11 run return run data modify storage dah:actbar new.text[11].text set value "x"
execute if score #temp calculator matches 12.. run data modify storage dah:actbar new.text[11].text set value "z"
execute if score #temp calculator matches 13 run return run data modify storage dah:actbar new.text[13].text set value "x"
execute if score #temp calculator matches 14.. run data modify storage dah:actbar new.text[13].text set value "z"
execute if score #temp calculator matches 15 run return run data modify storage dah:actbar new.text[15].text set value "x"
execute if score #temp calculator matches 16.. run data modify storage dah:actbar new.text[15].text set value "z"
execute if score #temp calculator matches 17 run return run data modify storage dah:actbar new.text[17].text set value "x"
execute if score #temp calculator matches 18.. run data modify storage dah:actbar new.text[17].text set value "z"
execute if score #temp calculator matches 19 run return run data modify storage dah:actbar new.text[19].text set value "x"
execute if score #temp calculator matches 20.. run data modify storage dah:actbar new.text[19].text set value "z"