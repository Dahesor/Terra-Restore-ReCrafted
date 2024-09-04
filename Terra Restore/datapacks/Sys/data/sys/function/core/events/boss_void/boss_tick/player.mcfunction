execute if predicate {condition:"location_check",predicate:{position:{y:{max:0}}}} run damage @s 5 out_of_world

execute if predicate {condition:"location_check",predicate:{position:{y:{min:30}}}} run return fail

execute unless entity @e[type=marker,tag=boss_void_kill,distance=..2.5] run summon marker ~ ~ ~ {Tags:["boss_void_kill"]}

