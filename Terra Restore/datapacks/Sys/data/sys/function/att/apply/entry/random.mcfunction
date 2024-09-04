data modify storage temp run set value {index:0}
execute store result score #temp calculator if data storage sys:mod class[]
execute store result score $temp calculator run random value 1..2147483640
scoreboard players operation $temp calculator %= #temp calculator
execute store result storage temp run.index int 1 run scoreboard players get $temp calculator
function sys:att/apply/entry/get_macro with storage temp run