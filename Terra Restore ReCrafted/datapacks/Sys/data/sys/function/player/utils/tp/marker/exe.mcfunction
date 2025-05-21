execute if score @s tp matches ..-100 run return run function sys:player/utils/tp/marker/system_exe
execute if score #loop_5 calculator matches 3 run function sys:player/utils/tp/marker/particle
scoreboard players operation #temp calculator = @s tp
execute unless function sys:player/utils/tp/marker/player_still run function sys:player/utils/tp/marker/terminate