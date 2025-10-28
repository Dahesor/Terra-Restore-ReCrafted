scoreboard players add #temp player_slot 1
execute if score #temp player_slot matches 17.. run return run say WARNING: No available player slots! Maximum players (16) reached.
execute if score $next player_slot matches 16 run scoreboard players set $next player_slot 0
scoreboard players add $next player_slot 1
scoreboard players set #exist player_slot 0
execute as @a if score @s player_slot = $next player_slot run scoreboard players set #exist player_slot 1
execute if score #exist player_slot matches 1 run function sys:plugin/init/playerslot/find_next