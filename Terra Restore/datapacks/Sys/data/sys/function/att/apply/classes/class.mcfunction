execute if score #temp calculator matches 1..10 run return run function sys:att/apply/classes/positive/20
execute if score #temp calculator matches 11..30 run return run function sys:att/apply/classes/positive/40
execute if score #temp calculator matches 31..50 run return run function sys:att/apply/classes/positive/60
execute if score #temp calculator matches 51..70 run return run function sys:att/apply/classes/positive/80
execute if score #temp calculator matches 71..90 run return run function sys:att/apply/classes/positive/100
execute if score #temp calculator matches 91..120 run return run function sys:att/apply/classes/positive/130
execute if score #temp calculator matches 121..150 run return run function sys:att/apply/classes/positive/160
execute if score #temp calculator matches 151..190 run return run function sys:att/apply/classes/positive/200
execute if score #temp calculator matches 191.. run return run function sys:att/apply/classes/positive/300

scoreboard players operation #temp calculator *= #-1 calculator

execute if score #temp calculator matches 1..20 run return run function sys:att/apply/classes/negative/20
execute if score #temp calculator matches 21..40 run return run function sys:att/apply/classes/negative/40
execute if score #temp calculator matches 41..60 run return run function sys:att/apply/classes/negative/60
execute if score #temp calculator matches 61..80 run return run function sys:att/apply/classes/negative/80
execute if score #temp calculator matches 81..100 run return run function sys:att/apply/classes/negative/100
execute if score #temp calculator matches 101..130 run return run function sys:att/apply/classes/negative/130
execute if score #temp calculator matches 131..160 run return run function sys:att/apply/classes/negative/160
execute if score #temp calculator matches 161..200 run return run function sys:att/apply/classes/negative/200
execute if score #temp calculator matches 201.. run return run function sys:att/apply/classes/negative/300