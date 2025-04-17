advancement revoke @s only sys:equipment_changed
execute if entity @s[tag=StatsChanged] run return fail
tag @s add StatsChanged

execute if items entity @s player.cursor *[custom_data~{ui:{}}] run return fail

function sys:player/stats/refresh