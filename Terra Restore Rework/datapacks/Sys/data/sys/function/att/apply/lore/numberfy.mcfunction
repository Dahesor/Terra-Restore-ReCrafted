data modify storage data di set value {decimal:0,integer:0,sign:""}
execute store result score #temp calculator run data get storage data accepts.status_total 10

execute if score #temp calculator matches ..-1 run data modify storage data di.sign set value "-"
execute if score #temp calculator matches ..-1 run scoreboard players operation #temp calculator *= #-1 calculator

execute store result storage data di.integer int 0.1 run scoreboard players get #temp calculator

scoreboard players operation #temp calculator %= #10 calculator
execute store result storage data di.decimal int 1 run scoreboard players get #temp calculator

function sys:att/apply/lore/macros/_number_ with storage data di