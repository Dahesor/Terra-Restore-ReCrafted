scoreboard players remove %this_hp HP.absorb 60

data modify storage dah:actbar new set value {id:"absorb",text:[{text:"qW",font:"terra:hud",shadow_color:0},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"Qq"}]}


execute if score %this_hp HP.absorb matches 1 run return run data modify storage dah:actbar new.text[1].text set value "&"
execute if score %this_hp HP.absorb matches 2.. run data modify storage dah:actbar new.text[1].text set value "7"
execute if score %this_hp HP.absorb matches 3 run return run data modify storage dah:actbar new.text[3].text set value "&"
execute if score %this_hp HP.absorb matches 4.. run data modify storage dah:actbar new.text[3].text set value "7"
execute if score %this_hp HP.absorb matches 5 run return run data modify storage dah:actbar new.text[5].text set value "&"
execute if score %this_hp HP.absorb matches 6.. run data modify storage dah:actbar new.text[5].text set value "7"
execute if score %this_hp HP.absorb matches 7 run return run data modify storage dah:actbar new.text[7].text set value "&"
execute if score %this_hp HP.absorb matches 8.. run data modify storage dah:actbar new.text[7].text set value "7"
execute if score %this_hp HP.absorb matches 9 run return run data modify storage dah:actbar new.text[9].text set value "&"
execute if score %this_hp HP.absorb matches 10.. run data modify storage dah:actbar new.text[9].text set value "7"
execute if score %this_hp HP.absorb matches 11 run return run data modify storage dah:actbar new.text[11].text set value "&"
execute if score %this_hp HP.absorb matches 12.. run data modify storage dah:actbar new.text[11].text set value "7"
execute if score %this_hp HP.absorb matches 13 run return run data modify storage dah:actbar new.text[13].text set value "&"
execute if score %this_hp HP.absorb matches 14.. run data modify storage dah:actbar new.text[13].text set value "7"
execute if score %this_hp HP.absorb matches 15 run return run data modify storage dah:actbar new.text[15].text set value "&"
execute if score %this_hp HP.absorb matches 16.. run data modify storage dah:actbar new.text[15].text set value "7"
execute if score %this_hp HP.absorb matches 17 run return run data modify storage dah:actbar new.text[17].text set value "&"
execute if score %this_hp HP.absorb matches 18.. run data modify storage dah:actbar new.text[17].text set value "7"
execute if score %this_hp HP.absorb matches 19 run return run data modify storage dah:actbar new.text[19].text set value "&"
execute if score %this_hp HP.absorb matches 20.. run data modify storage dah:actbar new.text[19].text set value "7"