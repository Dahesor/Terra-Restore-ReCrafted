data modify storage data pcalc set value {type:"entity_interaction_range",initial:0.0d,this:{}}
data modify storage data pcalc.initial set from storage data weapon_stats.reach
data modify storage data pcalc.this set from storage data pr.att_effects.reach
function sys:att/apply/prefix/calc_modifiers/get_result

data modify storage data stats_record.modifies.reach set from storage data pcalc.changed
data modify storage data weapon_stats.reach set from storage data pcalc.final