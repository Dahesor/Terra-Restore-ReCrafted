
execute if score %blink dfh.saved_blink matches 1 run function dfh:hp/draws/roll_2/blinking
function dfh:hp/draws/roll_2/full_hearts
function dfh:hp/draws/roll_2/edge
execute if score %blink dfh.saved_blink matches 1 if score %this_hp dfh.saved_blink > %this_hp dfh.HP run function dfh:hp/draws/roll_2/half_blinking
execute if score %blink dfh.saved_blink matches 1 if score %overflow dfh.saved_blink matches 1.. run function dfh:hp/draws/roll_2/overflow