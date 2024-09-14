scoreboard players operation #temp2 calculator = @s calculator
scoreboard players operation #temp calculator += @s calculator
scoreboard players operation #temp2 calculator %= #10 calculator
execute store result storage temp run.mc int 1 run scoreboard players get #temp2 calculator
scoreboard players operation @s calculator /= #10 calculator
execute store result storage temp run.modify int 1 run scoreboard players get @s calculator
execute store result storage temp run.value int 0.1 run scoreboard players get #temp calculator
scoreboard players operation #temp calculator %= #10 calculator
execute store result storage temp run.vc int 1 run scoreboard players get #temp calculator

function sys:att/apply/lore/default_pos with storage temp run