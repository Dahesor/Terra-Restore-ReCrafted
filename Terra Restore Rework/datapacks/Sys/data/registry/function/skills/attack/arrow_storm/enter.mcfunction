data modify storage sys:data new_event set value {id:"SKILL.arrow_storm",time:100,interval:1,run:"function registry:skills/attack/arrow_storm/event_tick"}
function sys:player/uid/insert_event

data modify storage dah.sch:new new set value {run:"kill @e[type=arrow,tag=SKILL.arrow_storm,nbt={inGround:1b}]",time:120,flags:["no_executer"]}
function dah.sch:new