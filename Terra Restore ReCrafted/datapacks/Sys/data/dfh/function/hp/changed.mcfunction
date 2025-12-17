execute if score @s dfh.hp_cache < @s dfh.HP run return run function dfh:hp/healed

execute unless score @s dfh.update matches 10.. run scoreboard players operation @s dfh.saved_blink = @s dfh.hp_cache
execute unless score @s dfh.update matches 18.. run scoreboard players set @s dfh.update 18

function dfh:hp/redraw
function dah.actbar_mixer:redraw