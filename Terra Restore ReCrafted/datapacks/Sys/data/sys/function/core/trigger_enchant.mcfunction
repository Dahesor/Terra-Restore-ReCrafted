execute if entity @s[gamemode=spectator] run return fail
execute if entity @s[gamemode=survival] run scoreboard players set $gamemode calculator 0
execute if entity @s[gamemode=creative] run scoreboard players set $gamemode calculator 1
execute if entity @s[gamemode=adventure] run scoreboard players set $gamemode calculator 2
gamemode spectator
gamemode adventure
execute if score $gamemode calculator matches 0 run gamemode survival
execute if score $gamemode calculator matches 1 run gamemode creative
execute if score $gamemode calculator matches 2 run gamemode adventure
item replace entity @s saddle with air