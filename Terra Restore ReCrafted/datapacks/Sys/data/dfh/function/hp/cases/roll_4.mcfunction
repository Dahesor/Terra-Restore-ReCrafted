
execute if score %blink dfh.saved_blink matches 1 run function dfh:hp/draws/roll_4/blinking
function dfh:hp/draws/roll_4/full_hearts
function dfh:hp/draws/roll_4/edge
execute if score %blink dfh.saved_blink matches 1 if score %this_hp dfh.saved_blink > %this_hp dfh.HP run function dfh:hp/draws/roll_4/half_blinking
execute if score %blink dfh.saved_blink matches 1 if score %overflow dfh.saved_blink matches 1.. run function dfh:hp/draws/roll_4/overflow