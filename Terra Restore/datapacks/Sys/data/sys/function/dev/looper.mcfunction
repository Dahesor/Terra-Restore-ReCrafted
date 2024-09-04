execute if block ~ ~ ~ structure_block as @n[type=marker,tag=cb,distance=..3] at @s run return run function sys:dev/restore_cb
execute if block ~ ~ ~ command_block run return run function sys:dev/replace
execute if block ~ ~ ~ dispenser run return run function sys:dev/clone_chest
execute if block ~ ~ ~ spawner run return run function sys:dev/spawner_utils
execute if block ~ ~ ~ #wall_signs summon marker run return run function sys:dev/sign_util
execute if entity @s[distance=..10] positioned ^ ^ ^0.1 run return run function sys:dev/looper
function sys:dev/list