gamemode spectator @a[scores={region=11}]
tag @a[scores={region=11}] add in_event
execute as @a[scores={region=11}] run spectate
execute as @a[scores={region=11}] run spectate @e[type=armor_stand,tag=11_opening_spec,limit=1] @s
execute if score spectate great_wall matches 1 run data modify entity @e[type=armor_stand,tag=11_opening_spec,limit=1] Motion set value [0.06d,0d,-0.01d]
execute if score spectate great_wall matches 2 run data modify entity @e[type=armor_stand,tag=11_opening_spec,limit=1] Motion set value [0.06d,0.06d,-0.01d]
execute if score spectate great_wall matches 3 run data modify entity @e[type=armor_stand,tag=11_opening_spec,limit=1] Motion set value [-0.06d,0.0d,0.03d]
execute if score spectate great_wall matches 4 run data modify entity @e[type=armor_stand,tag=11_opening_spec,limit=1] Motion set value [-0.05d,0.0d,-0.05d]
execute if score spectate great_wall matches 7 run data modify entity @e[type=armor_stand,tag=11_opening_spec,limit=1] Motion set value [-0.05d,0.0d,0.05d]
execute if score spectate great_wall matches 8 run data modify entity @e[type=armor_stand,tag=11_opening_spec,limit=1] Motion set value [0.05d,0.0d,0.05d]
execute if score spectate great_wall matches 9 run data modify entity @e[type=armor_stand,tag=11_opening_spec,limit=1] Motion set value [-0.05d,-0.01d,-0.05d]
execute if score spectate great_wall matches 12 run data modify entity @e[type=armor_stand,tag=11_opening_spec,limit=1] Motion set value [0.01d,0d,-0.05d]
execute store result entity @e[type=armor_stand,tag=11_opening_spec,limit=1] Air short 1 run scoreboard players get #loop_20 calculator