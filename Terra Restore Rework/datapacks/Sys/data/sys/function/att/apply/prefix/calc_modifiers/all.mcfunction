data remove storage data pcalc
data modify storage data additional_atts set value []
#攻击伤害
execute if data storage data pr.att_effects.melee_damage run function sys:att/apply/prefix/calc_modifiers/types/attack_damage

#攻击速度
execute if data storage data pr.att_effects.attack_speed run function sys:att/apply/prefix/calc_modifiers/types/attack_speed

#攻击距离
execute if data storage data pr.att_effects.reach run function sys:att/apply/prefix/calc_modifiers/types/reach

#横扫比率
execute if data storage data pr.att_effects.sweep run function sys:att/apply/prefix/calc_modifiers/types/sweep

#击退
execute if data storage data pr.att_effects.knockback run function sys:att/apply/prefix/calc_modifiers/types/knockback
