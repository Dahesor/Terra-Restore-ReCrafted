data modify storage data sum_text set value {text:""}
execute unless data storage data stats_record.modifies.melee_damage run return fail
data modify storage data accepts.original set from storage data stats_record.original.melee_damage
data modify storage data accepts.modifies set from storage data stats_record.modifies.melee_damage
function sys:att/apply/lore/prefix