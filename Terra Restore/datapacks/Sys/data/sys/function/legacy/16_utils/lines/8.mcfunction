execute if score 16_line_8 data matches 1 run return fail

scoreboard players set 16_line_8 data 1

tellraw @a[scores={region=17},distance=..35] {"translate":"area.16.line.5"}
playsound entity.skeleton.step hostile @a[distance=..35] ~ ~ ~ 1 0.5 1
playsound entity.skeleton.step hostile @a[distance=..35] ~ ~ ~ 1 0.5 1
playsound entity.skeleton.step hostile @a[distance=..35] ~ ~ ~ 1 0.5 1
execute positioned 3178 152 860 run function sys:mob/instances/prison_guard/spawn