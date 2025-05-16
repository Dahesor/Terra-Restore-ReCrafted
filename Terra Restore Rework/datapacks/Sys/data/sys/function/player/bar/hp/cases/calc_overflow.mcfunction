scoreboard players operation %overflow saved_blink = %this_hp saved_blink
scoreboard players operation %overflow saved_blink %= #20 calculator
execute if score %overflow saved_blink matches 0 run scoreboard players set %overflow saved_blink 20