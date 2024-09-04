scoreboard players set @s calculator 0
execute if data entity @s TicksFrozen store result score @s calculator run data get entity @s TicksFrozen
execute if score @s calculator matches 1200.. run return fail
data merge entity @s {TicksFrozen:1200}
effect give @s slowness 30 1