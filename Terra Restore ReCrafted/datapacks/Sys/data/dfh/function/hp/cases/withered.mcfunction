execute if score %blink dfh.saved_blink matches 1 run function dfh:hp/draws/withered/blinking
function dfh:hp/draws/withered/full_hearts
function dfh:hp/draws/withered/edge
execute if score %blink dfh.saved_blink matches 1 if score %this_hp dfh.saved_blink > %this_hp dfh.HP run function dfh:hp/draws/withered/half_blinking
execute if score %blink dfh.saved_blink matches 1 if score %overflow dfh.saved_blink matches 1.. run function dfh:hp/draws/withered/overflow