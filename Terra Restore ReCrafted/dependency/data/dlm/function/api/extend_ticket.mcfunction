#> function dlm:api/extend_ticket {time:<time>,id:"<id>"}
# Extend a life:{type:"wait"} ticket by the macro input
# -- input: macro: {time:<time>,id:"<id>"}
# --- <time>: the new time this ticket should last, in ticks, counted from the moment this function is called
# --- <id>: Id of the ticket to extend, must be a ticket of type "wait"

$execute unless data storage dlm: timed_tickets[{id:"$(id)"}] run return fail
$data modify storage dlm: this_ticket set from storage dlm: timed_tickets[{id:"$(id)"}]
$data remove storage dlm: timed_tickets[{id:"$(id)"}]

$scoreboard players set #until dlm__ $(time)
execute store result storage dlm: this_ticket.life.time int 1 run scoreboard players get #until dlm__
scoreboard players operation #until dlm__ += $time dlm__
execute store result storage dlm: this_ticket.until int 1 run scoreboard players get #until dlm__

function dlm:zzz/new/insert_timed