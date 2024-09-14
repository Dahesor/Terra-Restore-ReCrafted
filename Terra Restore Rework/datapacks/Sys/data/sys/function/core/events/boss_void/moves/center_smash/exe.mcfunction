execute if score @s genericCD matches 602 run particle cloud ~ ~ ~ 0.8 0.4 0.8 0.2 900
execute if score @s genericCD matches 602 run data modify entity @s Motion set value [0d,4.4d,0d]
execute if score @s genericCD matches 632 run tp @s 3025 ~ -1811
execute if score @s genericCD matches 634 at @s run function sys:core/events/boss_void/moves/center_smash/projectiles
execute if score @s genericCD matches 682 run function sys:core/events/boss_void/moves/smash/land
execute if score @s genericCD matches 682 run function sys:core/events/boss_void/moves/center_smash/break_all