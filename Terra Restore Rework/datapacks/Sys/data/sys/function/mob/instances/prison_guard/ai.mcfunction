execute unless entity @a[distance=..30,gamemode=!spectator] run return fail

scoreboard players add @s genericCD 1
execute if score @s genericCD matches 48.. run return run scoreboard players set @s genericCD 0
execute if score @s genericCD matches 5 run function sys:mob/instances/prison_guard/move_5
execute if score @s genericCD matches 33 run function sys:mob/instances/prison_guard/move_33
