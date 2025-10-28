execute unless score @s player_slot matches 1..16 run return run function sys:plugin/init/playerslot/new
scoreboard players set #temp player_slot 0
scoreboard players operation $this player_slot = @s player_slot
execute as @a if score @s player_slot = $this player_slot run scoreboard players add #temp player_slot 1
execute if score #temp player_slot matches 1 run return fail
scoreboard players reset @s player_slot
team leave @s
function sys:plugin/init/playerslot/new