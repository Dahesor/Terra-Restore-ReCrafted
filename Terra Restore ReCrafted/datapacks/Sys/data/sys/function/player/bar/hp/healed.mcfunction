scoreboard players operation #temp hp_cache = @s hp_cache
scoreboard players operation #temp2 hp_cache = @s HP.dry

scoreboard players remove #temp hp_cache 1
scoreboard players remove #temp2 hp_cache 1
scoreboard players operation #temp hp_cache /= #100 calculator
scoreboard players operation #temp2 hp_cache /= #100 calculator
scoreboard players add #temp hp_cache 1
scoreboard players add #temp2 hp_cache 1

execute unless score #temp2 hp_cache > #temp hp_cache run return fail

scoreboard players operation @s saved_blink = @s HP.dry
execute unless score @s highHpTick matches 6.. run scoreboard players set @s highHpTick 6

function sys:player/bar/hp/redraw