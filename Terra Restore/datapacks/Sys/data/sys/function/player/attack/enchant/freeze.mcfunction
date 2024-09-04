scoreboard players set @s calculator 0
execute if data entity @s TicksFrozen store result score @s calculator run data get entity @s TicksFrozen
execute if score @s calculator matches 400.. run return fail
data merge entity @s {TicksFrozen:400}
effect give @s slowness 20 0