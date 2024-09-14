execute if score #temp calculator matches 1..20 run data modify storage sys:mod hold[0].class set value 20
execute if score #temp calculator matches 21..40 run data modify storage sys:mod hold[0].class set value 40
execute if score #temp calculator matches 41..60 run data modify storage sys:mod hold[0].class set value 60
execute if score #temp calculator matches 61..80 run data modify storage sys:mod hold[0].class set value 80
execute if score #temp calculator matches 81..100 run data modify storage sys:mod hold[0].class set value 100
execute if score #temp calculator matches 101..130 run data modify storage sys:mod hold[0].class set value 130
execute if score #temp calculator matches 131..160 run data modify storage sys:mod hold[0].class set value 160
execute if score #temp calculator matches 161..200 run data modify storage sys:mod hold[0].class set value 200
execute if score #temp calculator matches 201.. run data modify storage sys:mod hold[0].class set value 300

execute if score #temp calculator matches 1.. run return run data modify storage sys:mod hold[0].positive set value 1b
scoreboard players operation #temp calculator *= #-1 calculator

execute if score #temp calculator matches 1..20 run data modify storage sys:mod hold[0].class set value -20
execute if score #temp calculator matches 21..40 run data modify storage sys:mod hold[0].class set value -40
execute if score #temp calculator matches 41..60 run data modify storage sys:mod hold[0].class set value -60
execute if score #temp calculator matches 61..80 run data modify storage sys:mod hold[0].class set value -80
execute if score #temp calculator matches 81..100 run data modify storage sys:mod hold[0].class set value -100
execute if score #temp calculator matches 101..130 run data modify storage sys:mod hold[0].class set value -130
execute if score #temp calculator matches 131..160 run data modify storage sys:mod hold[0].class set value -160
execute if score #temp calculator matches 161..200 run data modify storage sys:mod hold[0].class set value -200
execute if score #temp calculator matches 201.. run data modify storage sys:mod hold[0].class set value -300
data modify storage sys:mod hold[0].positive set value 0b