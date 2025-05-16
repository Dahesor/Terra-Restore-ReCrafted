execute if score %blink saved_blink matches 1 run function sys:player/bar/hp/draws/withered/blinking
function sys:player/bar/hp/draws/withered/full_hearts
function sys:player/bar/hp/draws/withered/edge
execute if score %blink saved_blink matches 1 if score %this_hp saved_blink > %this_hp HP.dry run function sys:player/bar/hp/draws/withered/half_blinking
execute if score %blink saved_blink matches 1 if score %overflow saved_blink matches 1.. run function sys:player/bar/hp/draws/withered/overflow