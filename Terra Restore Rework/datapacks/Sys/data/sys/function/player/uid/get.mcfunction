data modify storage temp run set value {UID:-1}
execute store result storage temp run.UID int 1 run scoreboard players get @s UID
function sys:player/uid/processes/push with storage temp run