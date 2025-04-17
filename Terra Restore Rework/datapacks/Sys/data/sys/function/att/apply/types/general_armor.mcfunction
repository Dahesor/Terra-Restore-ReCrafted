

# 删除击退
data remove storage sys:data item.components."minecraft:attribute_modifiers"[{id:"sys:default_attack_knockback"}]

# 初始化
data modify storage sys:data item.components."minecraft:item_name" set value {translate:"wnk",color:"white",italic:false,with:[{"text":""},{"text":""},{"text":""}]}
data modify storage sys:data item.components."minecraft:item_name".with[2] set from storage data selected_type.name
data modify storage sys:data item.components."minecraft:custom_data".weapon_type set from storage data selected_type.id
function sys:att/apply/types/get_material

#记录装备基础属性
data modify storage data weapon_stats set value {armor:0d,armor_toughness:0d}
    #盔甲
execute if data storage sys:data item.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}] store result storage data weapon_stats.armor double 0.01 run data get storage sys:data item.components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}].amount 100
    #盔甲韧性
execute if data storage sys:data item.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}] store result storage data weapon_stats.armor_toughness double 0.01 run data get storage sys:data item.components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}].amount 100
    #击退抗性
execute if data storage sys:data item.components."minecraft:attribute_modifiers"[{type:"minecraft:knockback_resistance"}] store result storage data weapon_stats.knockback_resistance double 0.01 run data get storage sys:data item.components."minecraft:attribute_modifiers"[{type:"minecraft:knockback_resistance"}].amount 100

data modify storage sys:data item.components."minecraft:custom_data".att set from storage data weapon_stats

#挑选前缀词条
data modify storage temp run set value {type:"helmet"}
data modify storage temp run.type set from storage data selected_type.id
function sys:att/apply/prefix/_selector_ with storage temp run
function sys:att/apply/prefix/filter_negative

#生成属性说明
data modify storage data lore set value ["",{translate:"alk",italic:false,with:[{translate:"att.armor"},{text:"",color:"green"},""],color:"gray"},{translate:"alk",with:[{translate:"att.armor_toughness"},{text:"",color:"green"},""],color:"gray",italic:false},{translate:"alk",with:[{translate:"att.knockback_resistance"},{text:"",color:"green"},""],color:"gray",italic:false}]

## 总值
    data modify storage data accepts set value {status_total:0d}
        #盔甲
    data modify storage data accepts.status_total set from storage data weapon_stats.armor
    function sys:att/apply/lore/total
    data modify storage data lore[1].with[1] set from storage data text
        #盔甲韧性
    data modify storage data accepts.status_total set from storage data weapon_stats.armor_toughness
    function sys:att/apply/lore/total
    data modify storage data lore[2].with[1] set from storage data text
        #击退抗性
    data modify storage data accepts.status_total set from storage data weapon_stats.knockback_resistance
    function sys:att/apply/lore/total
    data modify storage data lore[3].with[1] set from storage data text
## 总值

## 前缀
    #暴击
    execute if data storage data pr.stats_effects.crit_chance run function sys:att/apply/lore/prefixs/crit_chance
    #暴伤
    execute if data storage data pr.stats_effects.crit_damage run function sys:att/apply/lore/prefixs/crit_dmg
    #力量
    execute if data storage data pr.stats_effects.STR run function sys:att/apply/lore/prefixs/str
    #体质
    execute if data storage data pr.stats_effects.CON run function sys:att/apply/lore/prefixs/consi
    #敏捷
    execute if data storage data pr.stats_effects.DEX run function sys:att/apply/lore/prefixs/dex
    #智慧
    execute if data storage data pr.stats_effects.INT run function sys:att/apply/lore/prefixs/int
    #意志
    execute if data storage data pr.stats_effects.POW run function sys:att/apply/lore/prefixs/pow
    #教育
    execute if data storage data pr.stats_effects.EDU run function sys:att/apply/lore/prefixs/edu
## 前缀

