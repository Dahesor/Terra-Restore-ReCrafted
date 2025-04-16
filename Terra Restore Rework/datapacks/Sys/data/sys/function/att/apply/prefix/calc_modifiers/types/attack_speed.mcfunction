data modify storage data pcalc set value {type:"attack_speed",initial:0.0d,this:{}}
data modify storage data pcalc.initial set from storage data weapon_stats.attack_speed
data modify storage data pcalc.this set from storage data pr.att_effects.attack_speed

function sys:att/apply/prefix/calc_modifiers/get_result

data modify storage data stats_record.modifies.attack_speed set from storage data pcalc.changed
data modify storage data weapon_stats.attack_speed set from storage data pcalc.final