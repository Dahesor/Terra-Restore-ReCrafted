scoreboard players remove @s highHpTick 1

scoreboard players operation #temp calculator = @s highHpTick
scoreboard players operation #temp calculator %= #6 calculator
execute if score #temp calculator matches 3 run scoreboard players set %blink saved_blink 1

execute if score #temp calculator matches 3 run function sys:player/bar/hp/redraw
execute if score #temp calculator matches 0 run function sys:player/bar/hp/redraw


scoreboard players set %blink saved_blink 0