tellraw @s {"translate":"function.Sys.data.sys.function.dev.list.line0","color": "yellow","clickEvent": {"action": "run_command","value": "/execute at @s run function sys:dev/respawn_sign"}}


execute unless data storage temp cb[0] run return fail
data modify storage temp run set value {key:"",new:""}
data modify storage temp run.new set from storage temp cb[0]
function sys:dev/loop_append with storage temp run
function sys:dev/show_tellraw with storage temp run


