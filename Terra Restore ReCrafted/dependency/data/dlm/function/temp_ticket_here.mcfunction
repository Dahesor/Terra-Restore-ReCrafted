#> function dlm:new_ticket

# Create a new temporary ticket at the current context. Require setting the "on_load" field in the tickey only

scoreboard players set ERROR_CODE dlm__ -1
execute unless data storage dlm: ticket.on_load run return fail

data modify storage dlm: cmd set value {any:[]}
data modify storage dlm: cmd.any set from storage dlm: ticket.on_load
data modify storage dlm: ticket set value {life:{type:"temp"}}
data modify storage dlm: ticket.on_load set from storage dlm: cmd.any


data modify storage dlm: vld.i set value 0
execute store result storage dlm: vld.i int 1 run scoreboard players add #this_temp_id dlm__ 1
function dlm:zzz/input/__new_id with storage dlm: vld

return run function dlm:new_ticket