scoreboard players operation $max_p calculator = $p calculator
scoreboard players operation #p_saved calculator = $p calculator
scoreboard players operation $max_p calculator *= #30 calculator
scoreboard players operation $max_p calculator /= #100 calculator
scoreboard players operation $min_p calculator = $max_p calculator
scoreboard players operation $min_p calculator *= #-1 calculator
execute if score $max_p calculator matches ..25 run scoreboard players set $max_p calculator 25