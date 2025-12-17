scoreboard players operation %overflow dfh.saved_blink = %this_hp dfh.saved_blink
scoreboard players operation %overflow dfh.saved_blink %= #20 dfh.calculator
execute if score %overflow dfh.saved_blink matches 0 run scoreboard players set %overflow dfh.saved_blink 20