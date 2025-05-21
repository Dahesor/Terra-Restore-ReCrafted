execute as @e[type=#sys:mobs,distance=..7] run function sys:skills/off/snow/modify
particle minecraft:snowflake ~ ~ ~ 7 3 7 0.2 300
particle minecraft:snowflake ~ ~0.3 ~ 0.5 0.2 0.5 0.01 100
playsound block.glass.break master @a ~ ~ ~ 1 0.8 1
scoreboard players set @s CD.off 550