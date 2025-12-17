scoreboard players set $new dfh.gamemode 1
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players set $new dfh.gamemode 0
execute if score @s dfh.gamemode = $new dfh.gamemode run return fail

scoreboard players operation @s dfh.gamemode = $new dfh.gamemode
function dfh:redraw