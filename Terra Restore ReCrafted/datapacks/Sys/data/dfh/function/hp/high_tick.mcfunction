scoreboard players remove @s dfh.update 1

scoreboard players operation #temp dfh.calculator = @s dfh.update
scoreboard players operation #temp dfh.calculator %= #6 dfh.calculator
execute if score #temp dfh.calculator matches 3 run scoreboard players set %blink dfh.saved_blink 1

execute if score #temp dfh.calculator matches 3 run function dfh:hp/redraw
execute if score #temp dfh.calculator matches 0 run function dfh:hp/redraw


scoreboard players set %blink dfh.saved_blink 0