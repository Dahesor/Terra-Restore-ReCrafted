execute if score @s hp_cache < @s HP.dry run return run function sys:player/bar/hp/healed

execute unless score @s highHpTick matches 10.. run scoreboard players operation @s saved_blink = @s hp_cache
execute unless score @s highHpTick matches 18.. run scoreboard players set @s highHpTick 18

function sys:player/bar/hp/redraw
function dah.actbar_mixer:redraw