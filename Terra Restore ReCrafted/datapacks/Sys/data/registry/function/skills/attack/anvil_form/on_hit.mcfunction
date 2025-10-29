execute align y unless function registry:skills/attack/anvil_form/may_plunge run return fail
playsound block.anvil.land player @s ~ ~ ~ 1 1.3
#attribute @s gravity modifier add registry:skills/anvil_form_plunge 0.5 add_value
#data modify storage dah.sch:new new set value {run:"attribute @s gravity modifier remove registry:skills/anvil_form_plunge",time:2,offline:"delay"}
execute at @s run particle block{block_state:{Name:"anvil"}} ~ ~ ~ 0.2 0.1 0.2 10 100 normal @a
function dah.sch:new