data modify storage data pcalc set value {type:"attack_knockback",initial:0.0d,this:{}}

execute store result score #temp calculator run data get storage data weapon_stats.knockback 100
scoreboard players add #temp calculator 118
execute store result storage data pcalc.initial double 0.01 run scoreboard players get #temp calculator

data modify storage data pcalc.this set from storage data pr.att_effects.knockback
function sys:att/apply/prefix/calc_modifiers/get_result

data modify storage data stats_record.modifies.knockback set from storage data pcalc.changed

execute store result score #temp calculator run data get storage data pcalc.final 100
scoreboard players remove #temp calculator 118
execute store result storage data weapon_stats.knockback double 0.01 run scoreboard players get #temp calculator