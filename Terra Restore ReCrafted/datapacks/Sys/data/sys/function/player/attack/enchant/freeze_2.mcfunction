scoreboard players set @s calculator 0
execute if data entity @s TicksFrozen store result score @s calculator run data get entity @s TicksFrozen
execute if score @s calculator matches 800.. run return fail
data merge entity @s {TicksFrozen:800}
effect give @s slowness 30 0