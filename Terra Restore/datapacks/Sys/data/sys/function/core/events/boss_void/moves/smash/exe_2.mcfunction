execute if score @s genericCD matches 1552 run particle cloud ~ ~ ~ 0.8 0.4 0.8 0.2 900
execute if score @s genericCD matches 1552 run data modify entity @s Motion set value [0d,4.4d,0d]
execute if score @s genericCD matches 1580 run function sys:core/events/boss_void/moves/smash/random_place
execute if score @s genericCD matches 1632 run function sys:core/events/boss_void/moves/smash/land