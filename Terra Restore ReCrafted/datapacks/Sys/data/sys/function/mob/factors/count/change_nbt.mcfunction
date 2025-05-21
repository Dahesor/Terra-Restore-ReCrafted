data modify entity @s {} merge from storage sys:data dupe
tag @s add dupe
execute store result score #rand calculator run random value 1..4
execute if score #rand calculator matches 1 at @s run tp @s ~ ~ ~0.2
execute if score #rand calculator matches 2 at @s run tp @s ~ ~ ~-0.2
execute if score #rand calculator matches 3 at @s run tp @s ~0.2 ~ ~
execute if score #rand calculator matches 4 at @s run tp @s ~-0.2 ~ ~