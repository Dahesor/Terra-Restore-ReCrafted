advancement revoke @s only sys:equipment_changed
execute if entity @s[tag=__shulker.mid_process] run return fail
execute if entity @s[tag=__shulker] run function sys:player/utils/shulker/monitor/received

execute if entity @s[tag=StatsChanged] run return fail

tag @s add StatsChanged

execute if items entity @s player.cursor *[custom_data~{ui:{}}] run return fail

data modify storage dah.sch:new new set value {run:"function sys:player/stats/refresh",time:1,offline:"delay"}
function dah.sch:new