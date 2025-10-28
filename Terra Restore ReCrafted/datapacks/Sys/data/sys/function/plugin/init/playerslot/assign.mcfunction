data modify storage temp player_slot set value {id:0}
execute store result storage temp player_slot.id int 1 run scoreboard players get @s player_slot
function sidebar.dah:assign/id with storage temp player_slot