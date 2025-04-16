data modify storage data pcalc set value {type:"attack_damage",initial:0.0d,this:{}}
data modify storage data pcalc.initial set from storage data weapon_stats.melee_damage
data modify storage data pcalc.this set from storage data pr.att_effects.melee_damage
function sys:att/apply/prefix/calc_modifiers/get_result

data modify storage data stats_record.modifies.melee_damage set from storage data pcalc.changed
data modify storage data weapon_stats.melee_damage set from storage data pcalc.final