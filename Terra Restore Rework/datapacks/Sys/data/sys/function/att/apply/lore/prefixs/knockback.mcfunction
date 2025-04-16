data modify storage data sum_text set value {text:""}
execute unless data storage data stats_record.modifies.knockback run return fail
execute store result score #temp calculator run data get storage data stats_record.original.knockback 100
scoreboard players add #temp calculator 100
execute store result storage data accepts.original double 0.01 run scoreboard players get #temp calculator

data modify storage data accepts.modifies set from storage data stats_record.modifies.knockback
function sys:att/apply/lore/prefix