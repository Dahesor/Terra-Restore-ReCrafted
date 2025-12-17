scoreboard players operation %this_hp dfh.saved_blink = @s dfh.saved_blink
scoreboard players operation %this_hp dfh.HP = @s dfh.HP
scoreboard players set %overflow dfh.saved_blink 0
scoreboard players set %layer dfh.saved_blink 1
function dfh:hp/update