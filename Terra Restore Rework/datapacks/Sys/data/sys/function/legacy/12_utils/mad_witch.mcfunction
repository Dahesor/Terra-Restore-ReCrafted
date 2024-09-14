
execute if entity @e[type=witch,tag=mad_witch] run return fail
execute if score 12_mad_witch data matches 0.. run return run scoreboard players remove 12_mad_witch data 1

function sys:mob/instances/mad_witch/spawn
tellraw @a[distance=..30] {"translate":"mob.mad_witch.line.1"}
scoreboard players set 12_mad_witch data 60