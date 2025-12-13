tag @s add __enchant_trigger
execute on vehicle run tag @s add __vehicle
execute on vehicle run tag @a[tag=__enchant_trigger] add __enchant_trigger_vehicle

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

execute if entity @s[tag=__enchant_trigger_vehicle] run ride @s mount @n[tag=__vehicle]
tag @s remove __enchant_trigger
tag @s remove __enchant_trigger_vehicle
execute on vehicle run tag @s remove __vehicle