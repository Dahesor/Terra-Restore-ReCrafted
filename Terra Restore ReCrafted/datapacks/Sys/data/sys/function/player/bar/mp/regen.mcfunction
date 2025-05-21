scoreboard players operation @s MP += @s MP_REGEN
execute if score @s MP > @s MAX_MP run scoreboard players operation @s MP = @s MAX_MP
function sys:player/bar/mp/display/update