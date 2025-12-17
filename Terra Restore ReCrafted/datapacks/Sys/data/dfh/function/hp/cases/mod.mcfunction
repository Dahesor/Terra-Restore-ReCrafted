data modify storage dah:actbar new set value {id:"dfh:hp",text:[{text:"qW,",font:"dfh:hud",shadow_color:0},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"Qq."}]}
function dfh:hp/cases/cross_layer
execute if score %this_hp dfh.HP matches 21..40 run function dfh:hp/draws/roll_2/base
execute if score %this_hp dfh.HP matches 41..60 run function dfh:hp/draws/roll_3/base
execute if score %this_hp dfh.HP matches 61..80 run function dfh:hp/draws/roll_4/base
execute if score %this_hp dfh.HP matches 81.. run function dfh:hp/draws/roll_5/base

execute if score watch_mob_effect dfh.settings matches 1 if predicate dfh:withered run return run function dfh:hp/cases/withered
execute if score watch_mob_effect dfh.settings matches 1 if predicate dfh:poisoned run return run function dfh:hp/cases/posioned
execute if score %layer dfh.saved_blink matches 2 run return run function dfh:hp/cases/roll_2
execute if score %layer dfh.saved_blink matches 3 run return run function dfh:hp/cases/roll_3
execute if score %layer dfh.saved_blink matches 4 run return run function dfh:hp/cases/roll_4
execute if score %layer dfh.saved_blink matches 5 run return run function dfh:hp/cases/roll_5

#Normal
execute if score %blink dfh.saved_blink matches 1 run function dfh:hp/draws/blinking
function dfh:hp/draws/full_hearts
function dfh:hp/draws/edge
execute if score %blink dfh.saved_blink matches 1 if score %this_hp dfh.saved_blink > %this_hp dfh.HP run function dfh:hp/draws/half_blinking
execute if score %blink dfh.saved_blink matches 1 if score %overflow dfh.saved_blink matches 1.. run function dfh:hp/draws/overflow