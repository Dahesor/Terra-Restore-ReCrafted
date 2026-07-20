#> function dlm:new_ticket

# Create a new ticket from data in storage dlm: ticket


data modify storage dlm: n_t set value {}
scoreboard players set ERROR_CODE dlm__ 1

#ID handler
execute unless data storage dlm: ticket.id run return fail
data modify storage dlm: n_t.id set from storage dlm: ticket.id

#pos handler
execute unless data storage dlm: ticket.pos summon marker run function dlm:zzz/input/get_this_pos
data modify storage dlm: pos set from storage dlm: ticket.pos
execute unless function dlm:zzz/input/pos run return fail
data modify storage dlm: n_t.pos set from storage dlm: result_pos

#to handler
execute if data storage dlm: ticket.to run data modify storage dlm: pos set from storage dlm: ticket.to
execute if data storage dlm: ticket.to unless function dlm:zzz/input/pos run return fail
execute if data storage dlm: ticket.to run data modify storage dlm: n_t.to set from storage dlm: result_pos

#Dimension handler
execute unless function dlm:zzz/input/dimension run return fail

#Life handler
scoreboard players set ERROR_CODE dlm__ 20
execute unless function dlm:zzz/input/life run return fail
data modify storage dlm: n_t.life set from storage dlm: ticket.life

#on_load handler
execute if data storage dlm: ticket.on_load run function dlm:zzz/input/command
execute if data storage dlm: n_t.life{type:"temp"} unless data storage dlm: n_t.on_load[0] run data modify storage dlm: n_t.on_load set value ["return 1"]

function dlm:zzz/new/main

return 1