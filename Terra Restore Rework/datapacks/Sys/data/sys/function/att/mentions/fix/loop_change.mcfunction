execute unless data storage sys:data Inv[0] run return fail
scoreboard players add $diff calculator 1
execute store result storage temp run.diff int 1 run scoreboard players get $diff calculator
function sys:att/mentions/fix/change_id with storage temp run
data modify storage sys:data player[0].pack append from storage sys:data Inv[0]
data remove storage sys:data Inv[0]
function sys:att/mentions/fix/loop_change