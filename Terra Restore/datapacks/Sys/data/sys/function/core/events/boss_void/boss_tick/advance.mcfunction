execute if score @s genericCD matches ..140 run return fail
execute if score @s genericCD matches 597..700 run return fail
execute if score @s genericCD matches 1547..1640 run return fail

execute if score @s genericCD matches 350..353 run return fail
execute if score @s genericCD matches 800..803 run return fail
execute if score @s genericCD matches 900..903 run return fail
execute if score @s genericCD matches 1100..1103 run return fail
execute if score @s genericCD matches 1300..1303 run return fail
execute if score @s genericCD matches 1800..1803 run return fail
execute if score @s genericCD matches 2000..2003 run return fail
execute if score @s genericCD matches 2200..2203 run return fail
execute if score @s genericCD matches 2400..2403 run return fail
execute if score @s genericCD matches 2500.. run return fail


execute if entity @s[tag=boss_void_anger] if score #loop_20 calculator matches 1..14 run scoreboard players add @s genericCD 1
execute if score boss_void_diff data matches 1 if score #loop_20 calculator matches 1..9 run scoreboard players remove @s genericCD 1
execute if score boss_void_diff data matches 3 if score #loop_20 calculator matches 1..10 run scoreboard players add @s genericCD 1