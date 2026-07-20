$data remove storage dlm: data[].Chunks[].tickets[{id:"$(id)"}]
$data remove storage dlm: validations[{from_ticket:"$(id)"}]
$data remove storage dlm: live_tickets[{id:"$(id)"}]
$data remove storage dlm: timed_tickets[{id:"$(id)"}]

scoreboard players set #need_gc dlm__ 1