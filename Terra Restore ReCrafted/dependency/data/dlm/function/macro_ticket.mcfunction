#> function dlm:macro_ticket

# Create a new ticket from macro

$data modify storage dlm: ticket set value $(ticket)
return run function dlm:new_ticket