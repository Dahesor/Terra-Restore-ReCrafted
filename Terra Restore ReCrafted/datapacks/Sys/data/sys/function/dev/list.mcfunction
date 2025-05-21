tellraw @s {"translate":"dev.list.line0","color": "yellow","click_event": {"action": "run_command","command": "/execute at @s run function sys:dev/respawn_sign"}}


execute unless data storage temp cb[0] run return fail
data modify storage temp run set value {key:"",new:""}
data modify storage temp run.new set from storage temp cb[0]
function sys:dev/loop_append with storage temp run
function sys:dev/show_tellraw with storage temp run


