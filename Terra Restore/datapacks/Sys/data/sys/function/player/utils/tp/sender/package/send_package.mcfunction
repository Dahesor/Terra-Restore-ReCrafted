execute store result score #temp calculator run data get storage sys:data test.by
scoreboard players operation #temp2 calculator = @s UID
execute as @e[type=marker,tag=tp_center] if score @s tp = #temp calculator at @s run function sys:player/utils/tp/sender/package/analyze_package