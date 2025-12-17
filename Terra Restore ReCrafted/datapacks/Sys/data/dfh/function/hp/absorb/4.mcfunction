scoreboard players remove %this_hp dfh.Absorb 60

data modify storage dah:actbar new set value {id:"dfh:absorb",text:[{text:"qW,",font:"dfh:hud",shadow_color:0},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"*"},{text:"6"},{text:"Qq."}]}


execute if score %this_hp dfh.Absorb matches 1 run return run data modify storage dah:actbar new.text[1].text set value "&"
execute if score %this_hp dfh.Absorb matches 2.. run data modify storage dah:actbar new.text[1].text set value "7"
execute if score %this_hp dfh.Absorb matches 3 run return run data modify storage dah:actbar new.text[3].text set value "&"
execute if score %this_hp dfh.Absorb matches 4.. run data modify storage dah:actbar new.text[3].text set value "7"
execute if score %this_hp dfh.Absorb matches 5 run return run data modify storage dah:actbar new.text[5].text set value "&"
execute if score %this_hp dfh.Absorb matches 6.. run data modify storage dah:actbar new.text[5].text set value "7"
execute if score %this_hp dfh.Absorb matches 7 run return run data modify storage dah:actbar new.text[7].text set value "&"
execute if score %this_hp dfh.Absorb matches 8.. run data modify storage dah:actbar new.text[7].text set value "7"
execute if score %this_hp dfh.Absorb matches 9 run return run data modify storage dah:actbar new.text[9].text set value "&"
execute if score %this_hp dfh.Absorb matches 10.. run data modify storage dah:actbar new.text[9].text set value "7"
execute if score %this_hp dfh.Absorb matches 11 run return run data modify storage dah:actbar new.text[11].text set value "&"
execute if score %this_hp dfh.Absorb matches 12.. run data modify storage dah:actbar new.text[11].text set value "7"
execute if score %this_hp dfh.Absorb matches 13 run return run data modify storage dah:actbar new.text[13].text set value "&"
execute if score %this_hp dfh.Absorb matches 14.. run data modify storage dah:actbar new.text[13].text set value "7"
execute if score %this_hp dfh.Absorb matches 15 run return run data modify storage dah:actbar new.text[15].text set value "&"
execute if score %this_hp dfh.Absorb matches 16.. run data modify storage dah:actbar new.text[15].text set value "7"
execute if score %this_hp dfh.Absorb matches 17 run return run data modify storage dah:actbar new.text[17].text set value "&"
execute if score %this_hp dfh.Absorb matches 18.. run data modify storage dah:actbar new.text[17].text set value "7"
execute if score %this_hp dfh.Absorb matches 19 run return run data modify storage dah:actbar new.text[19].text set value "&"
execute if score %this_hp dfh.Absorb matches 20.. run data modify storage dah:actbar new.text[19].text set value "7"