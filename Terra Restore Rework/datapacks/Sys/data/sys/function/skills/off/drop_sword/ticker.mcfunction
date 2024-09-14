execute unless score @s genericCD matches 1.. run particle block{block_state:{Name:"stone"}} ~ ~ ~ 0.05 0.1 0.05 0.1 10
execute if data entity @s {OnGround:1b} run scoreboard players add @s genericCD 1
execute if score @s genericCD matches 20.. on passengers run kill
execute if score @s genericCD matches 20.. run return run kill

execute unless data entity @s {OnGround:1b} run return fail


execute if score @s genericCD matches 2.. run return fail
playsound block.anvil.land master @a ~ ~ ~ 1 1.3
execute as @e[type=#sys:mobs,distance=..3] run function sys:skills/off/drop_sword/damage_self