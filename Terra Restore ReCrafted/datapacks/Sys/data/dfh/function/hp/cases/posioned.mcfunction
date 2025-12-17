execute if score %blink dfh.saved_blink matches 1 run function dfh:hp/draws/poisoned/blinking
function dfh:hp/draws/poisoned/full_hearts
function dfh:hp/draws/poisoned/edge
execute if score %blink dfh.saved_blink matches 1 if score %this_hp dfh.saved_blink > %this_hp dfh.HP run function dfh:hp/draws/poisoned/half_blinking
execute if score %blink dfh.saved_blink matches 1 if score %overflow dfh.saved_blink matches 1.. run function dfh:hp/draws/poisoned/overflow