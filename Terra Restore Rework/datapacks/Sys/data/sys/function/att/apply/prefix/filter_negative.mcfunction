execute store result score #filter calculator run random value 1..99
execute if data storage data pr{negative:1b} if score #filter calculator matches ..66 run return run data remove storage data pr.stats_effects

#生成属性修饰器
function sys:att/apply/prefix/calc_modifiers/all

#写入数值修饰器
data modify storage sys:data item.components."minecraft:custom_data".stats set from storage data pr.stats_effects

#修改名称
data modify storage sys:data item.components."minecraft:item_name".with[0] set from storage data pr.displayName