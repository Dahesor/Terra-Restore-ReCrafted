
execute if score %blink saved_blink matches 1 run function sys:player/bar/hp/draws/roll_5/blinking
function sys:player/bar/hp/draws/roll_5/full_hearts
function sys:player/bar/hp/draws/roll_5/edge
execute if score %blink saved_blink matches 1 if score %this_hp saved_blink > %this_hp HP.dry run function sys:player/bar/hp/draws/roll_5/half_blinking
execute if score %blink saved_blink matches 1 if score %overflow saved_blink matches 1.. run function sys:player/bar/hp/draws/roll_5/overflow