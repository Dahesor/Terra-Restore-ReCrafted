tag @s add shielder
tag @s add basic_shield
scoreboard players operation %holder const = s.basic_shield.TIME const
scoreboard players operation %holder const *= #20 calculator
data modify storage dah.sch:new new set value {run:"function registry:skills/defence/shields/basic/ended",time:20,offline:"delay"}
execute store result storage dah.sch:new new.time int 1 run scoreboard players get %holder const
function dah.sch:new
loot replace entity @s weapon.offhand loot sys:mech/off_hand_trigger
function registry:skills/defence/shields/basic/modify_shield

scoreboard players operation @s display.SHIELD = s.basic_shield.TIME const

data modify storage sys:data new_event set value {id:"SKILL.shield",time:100,interval:20,run:"function registry:skills/defence/shields/basic/second"}
execute store result storage sys:data new_event.time int 1 run scoreboard players get %holder const
function sys:player/uid/insert_event

