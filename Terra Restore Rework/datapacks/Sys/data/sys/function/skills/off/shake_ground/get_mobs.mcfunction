#2
tag @s add damage_temp
execute as @e[type=#sys:mobs,distance=..4.5] at @s run function sys:skills/off/shake_ground/change_pos
tag @s remove damage_temp
scoreboard players set @s CD.off 450
playsound block.anvil.land master @a ~ ~ ~ 0.6 1.4