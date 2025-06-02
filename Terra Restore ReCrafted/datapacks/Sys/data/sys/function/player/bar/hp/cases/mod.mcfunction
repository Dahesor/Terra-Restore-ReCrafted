data modify storage dah:actbar new set value {id:"hp",text:[{text:"qW",font:"terra:hud",shadow_color:0},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"*"},{text:"="},{text:"Qq"}]}
function sys:player/bar/hp/cases/cross_layer
execute if score %this_hp HP.dry matches 21..40 run function sys:player/bar/hp/draws/roll_2/base
execute if score %this_hp HP.dry matches 41..60 run function sys:player/bar/hp/draws/roll_3/base
execute if score %this_hp HP.dry matches 61..80 run function sys:player/bar/hp/draws/roll_4/base
execute if score %this_hp HP.dry matches 81.. run function sys:player/bar/hp/draws/roll_5/base

execute if predicate sys:player/withered run return run function sys:player/bar/hp/cases/withered
execute if predicate sys:player/poisoned run return run function sys:player/bar/hp/cases/posioned
execute if score %layer saved_blink matches 2 run return run function sys:player/bar/hp/cases/roll_2
execute if score %layer saved_blink matches 3 run return run function sys:player/bar/hp/cases/roll_3
execute if score %layer saved_blink matches 4 run return run function sys:player/bar/hp/cases/roll_4
execute if score %layer saved_blink matches 5 run return run function sys:player/bar/hp/cases/roll_5

#Normal
execute if score %blink saved_blink matches 1 run function sys:player/bar/hp/draws/blinking
function sys:player/bar/hp/draws/full_hearts
function sys:player/bar/hp/draws/edge
execute if score %blink saved_blink matches 1 if score %this_hp saved_blink > %this_hp HP.dry run function sys:player/bar/hp/draws/half_blinking
execute if score %blink saved_blink matches 1 if score %overflow saved_blink matches 1.. run function sys:player/bar/hp/draws/overflow