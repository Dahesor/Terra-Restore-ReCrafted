scoreboard players operation %this_hp saved_blink = @s saved_blink
scoreboard players operation %this_hp HP.dry = @s HP.dry
scoreboard players set %overflow saved_blink 0
scoreboard players set %layer saved_blink 1
function sys:player/bar/hp/update