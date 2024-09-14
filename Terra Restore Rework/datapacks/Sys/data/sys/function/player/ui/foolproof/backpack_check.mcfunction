data modify storage temp item set value []
data modify storage temp Owner set from entity @s UUID
execute if items entity @s inventory.0 * run data modify storage temp item append from entity @s Inventory[{Slot:9b}]
execute if items entity @s inventory.0 * at @s run function sys:player/ui/foolproof/return_from_temp
execute if items entity @s player.cursor player_head[custom_data~{ui:{head_locked:1b}}] run return run function sys:player/ui/foolproof/interactions/access_denied
clear @s player_head[custom_data~{ui:{}}]
scoreboard players set @s ui 1
playsound ui.button.click master @s ~ ~ ~ 1 1 1
function sys:player/ui/actions/mainpage/anchor