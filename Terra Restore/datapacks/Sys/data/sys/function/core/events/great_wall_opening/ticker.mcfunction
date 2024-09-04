scoreboard players add time great_wall 1
execute if score time great_wall matches ..1800 run function sys:core/events/great_wall_opening/tell_start
execute if score time great_wall matches 1801 run function sys:core/events/great_wall_opening/scenes/initialize
execute if score spectate great_wall matches 1.. run function sys:core/events/great_wall_opening/scenes/movement