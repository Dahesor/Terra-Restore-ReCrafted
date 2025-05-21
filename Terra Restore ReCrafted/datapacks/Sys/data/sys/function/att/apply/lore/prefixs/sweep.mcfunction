data modify storage data sum_text set value {text:""}
execute unless data storage data stats_record.modifies.sweep run return fail
data modify storage data accepts.original set from storage data stats_record.original.sweep
data modify storage data accepts.modifies set from storage data stats_record.modifies.sweep
function sys:att/apply/lore/prefix