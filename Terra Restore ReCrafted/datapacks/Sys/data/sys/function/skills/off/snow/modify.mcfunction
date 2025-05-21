scoreboard players set #temp calculator 0
execute if data entity @s TicksFrozen store result score #temp calculator run data get entity @s TicksFrozen
execute if score #temp calculator matches ..500 run scoreboard players set #temp calculator 500
execute store result entity @s TicksFrozen int 1 run scoreboard players get #temp calculator