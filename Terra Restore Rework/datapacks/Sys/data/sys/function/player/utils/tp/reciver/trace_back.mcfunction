execute if entity @s[distance=..0.4] run return 1
execute unless block ~ ~ ~ #sys:valid_tp run return fail
execute positioned ^ ^ ^0.2 run return run function sys:player/utils/tp/reciver/trace_back