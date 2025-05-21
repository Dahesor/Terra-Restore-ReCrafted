data modify storage data sum_text set value {text:""}
execute unless data storage data stats_record.modifies.reach run return fail
data modify storage data accepts.original set from storage data stats_record.original.reach
data modify storage data accepts.modifies set from storage data stats_record.modifies.reach
function sys:att/apply/lore/prefix