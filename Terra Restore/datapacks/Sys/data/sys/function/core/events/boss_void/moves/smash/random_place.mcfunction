
tp @s 3025 ~ -1811
execute store result score @s calculator run random value 1..8
execute if score @s calculator matches 1 at @s run tp ~10 ~ ~3.5
execute if score @s calculator matches 2 at @s run tp ~10 ~ ~-3.5
execute if score @s calculator matches 3 at @s run tp ~-10 ~ ~3.5
execute if score @s calculator matches 4 at @s run tp ~-10 ~ ~-3.5
execute if score @s calculator matches 5 at @s run tp ~3.5 ~ ~10
execute if score @s calculator matches 6 at @s run tp ~-3.5 ~ ~10
execute if score @s calculator matches 7 at @s run tp ~3.5 ~ ~-10
execute if score @s calculator matches 8 at @s run tp ~-3.5 ~ ~-10