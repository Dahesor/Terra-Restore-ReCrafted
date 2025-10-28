scoreboard players set #temp player_slot 0
function sys:plugin/init/playerslot/find_next
scoreboard players operation @s player_slot = $next player_slot
function sys:plugin/init/playerslot/assign