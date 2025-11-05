execute unless data storage comms:unlocked list[0] run return fail
data modify storage comms:unlocked temp set value {index:0}
data modify storage comms:unlocked temp.index set from storage comms:unlocked list[0]
function comms:pages/private/__get_generic with storage comms:unlocked temp

data modify storage comms:unlocked dialog.this.actions append value {label:"",action:{type:"run_command",command:"/trigger entry.archive set 0"},width:90}
data modify storage comms:unlocked dialog.this.actions[-1].label set from storage comms:unlocked run.random.title
function comms:pages/private/__insert_cmd with storage comms:unlocked temp

data remove storage comms:unlocked list[0]
function comms:pages/private/loop