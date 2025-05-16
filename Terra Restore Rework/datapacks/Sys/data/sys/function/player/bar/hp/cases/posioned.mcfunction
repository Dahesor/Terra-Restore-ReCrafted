execute if score %blink saved_blink matches 1 run function sys:player/bar/hp/draws/poisoned/blinking
function sys:player/bar/hp/draws/poisoned/full_hearts
function sys:player/bar/hp/draws/poisoned/edge
execute if score %blink saved_blink matches 1 if score %this_hp saved_blink > %this_hp HP.dry run function sys:player/bar/hp/draws/poisoned/half_blinking
execute if score %blink saved_blink matches 1 if score %overflow saved_blink matches 1.. run function sys:player/bar/hp/draws/poisoned/overflow