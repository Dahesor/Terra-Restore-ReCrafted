#初始化
data modify storage data pcalc.modifier set value {type:"luck",amount:0.0d,operation:"add_value"}
execute store result score %initial calculator run data get storage data pcalc.initial 100
execute store result score %value calculator run data get storage data pcalc.this.value 100

#计算
execute if data storage data pcalc.this{op:"scale"} run function sys:att/apply/prefix/calc_modifiers/scale

#赋值
execute store result storage data pcalc.changed double 0.01 run scoreboard players get %value calculator
data modify storage data pcalc.modifier.amount set from storage data pcalc.changed
data modify storage data pcalc.modifier.type set from storage data pcalc.type

#计算最终值
scoreboard players operation %value calculator += %initial calculator
execute store result storage data pcalc.final double 0.01 run scoreboard players get %value calculator
