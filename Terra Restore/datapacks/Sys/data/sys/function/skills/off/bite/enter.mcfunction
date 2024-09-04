data modify storage temp run set from entity @s UUID
execute positioned ^ ^ ^3 as @e[type=#sys:mobs,distance=..3.5] at @s run function sys:skills/off/bite/summon
scoreboard players set @s CD.off 500