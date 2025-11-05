scoreboard players set @s screen.archive 5

data modify storage comms:unlocked dialog.this set value {type:"multi_action",title:{translate:"archive.enchantment",color:"light_purple"},pause:false,can_close_with_escape:true,after_action:"none",body:[{"type":"plain_message",contents:""}],actions:[],exit_action:{label:{translate:"gui.back"},action:{type:"run_command",command:"/trigger menu.archive set -2"}},columns:3}

function comms:utils/record/rotate
data modify storage comms:unlocked list set from storage comms:unlocked player[0].unlocked.enchantment
execute unless data storage comms:unlocked list[0] run return run function comms:pages/none

data modify storage comms:unlocked this set from storage comms:unlocked archive.enchantment
function comms:pages/private/loop


function comms:utils/__dialog with storage comms:unlocked dialog