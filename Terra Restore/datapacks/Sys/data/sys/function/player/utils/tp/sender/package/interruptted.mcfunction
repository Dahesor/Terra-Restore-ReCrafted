tag @s remove tper
scoreboard players set @s tp 0
scoreboard players set @s tp_cd 0
scoreboard players operation #temp calculator = @s UID
execute as @e[type=marker,tag=tp_sender] if score @s tp_cd = #temp calculator run kill