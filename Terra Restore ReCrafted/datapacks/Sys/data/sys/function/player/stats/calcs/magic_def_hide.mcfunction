data modify storage dah:actbar new set value {id:"ench.DEF",text:[{text:"e",font:"terra:hud_top",shadow_color:0},{text:"z"},{text:"⨉"},{text:""},{text:"-"},{text:"E"}],data:{count:0}}

execute if score #temp calculator matches 10.. run data modify storage dah:actbar new.text[4].text set value ""

data modify storage temp hud set value {x:0}
execute store result storage temp hud.x int 1 run scoreboard players get #temp calculator
function sys:player/stats/calcs/magic_def_hide_macro with storage temp hud