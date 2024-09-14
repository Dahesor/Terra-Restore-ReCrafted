execute store result storage temp run.value int 0.1 run scoreboard players get #temp calculator
scoreboard players operation #temp calculator %= #10 calculator
execute store result storage temp run.vc int 1 run scoreboard players get #temp calculator

scoreboard players operation #temp calculator = @s calculator
execute if score @s calculator matches ..-1 run scoreboard players operation @s calculator *= #-1 calculator
execute store result storage temp run.modify int 0.1 run scoreboard players get @s calculator
scoreboard players operation @s calculator %= #10 calculator
execute store result storage temp run.mc int 1 run scoreboard players get @s calculator


function sys:att/apply/lore/armor/positive_run with storage temp run