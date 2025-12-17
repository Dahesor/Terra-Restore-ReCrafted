scoreboard players operation #temp dfh.hp_cache = @s dfh.hp_cache
scoreboard players operation #temp2 dfh.hp_cache = @s dfh.HP

scoreboard players remove #temp dfh.hp_cache 1
scoreboard players remove #temp2 dfh.hp_cache 1
scoreboard players operation #temp dfh.hp_cache /= #100 dfh.calculator
scoreboard players operation #temp2 dfh.hp_cache /= #100 dfh.calculator
scoreboard players add #temp dfh.hp_cache 1
scoreboard players add #temp2 dfh.hp_cache 1

execute unless score #temp2 dfh.hp_cache > #temp dfh.hp_cache run return fail

scoreboard players operation @s dfh.saved_blink = @s dfh.HP
execute unless score @s dfh.update matches 6.. run scoreboard players set @s dfh.update 6

function dfh:hp/redraw