data modify storage temp cb append from block ~ ~ ~ Command
setblock ~ ~ ~ bedrock
data modify storage temp char set string storage temp cb[-1] 0 1
execute if data storage temp {char:"/"} run data modify storage temp cb[-1] set string storage temp cb[-1] 1




return 1
tag @s add cb
tag @s add resolved_mob
data modify entity @s data.command set from block ~ ~ ~ Command
setblock ~ ~ ~ structure_block{name:""}
data modify block ~ ~ ~ name set from entity @s data.command
tellraw @a ["Saved: ",{"nbt":"data.command","entity": "@s"}]
data modify storage temp command append value [{Pos:[],Command:""}]
data modify storage temp command.Pos set from entity @s Pos
data modify storage temp command.Command set from entity @s data.command