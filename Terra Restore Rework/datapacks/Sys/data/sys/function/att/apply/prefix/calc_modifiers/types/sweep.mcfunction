data modify storage data pcalc set value {type:"sweeping_damage_ratio",initial:0.0d,this:{}}
data modify storage data pcalc.initial set from storage data weapon_stats.sweep
data modify storage data pcalc.this set from storage data pr.att_effects.sweep
function sys:att/apply/prefix/calc_modifiers/get_result

data modify storage data stats_record.modifies.sweep set from storage data pcalc.changed
data modify storage data weapon_stats.sweep set from storage data pcalc.final