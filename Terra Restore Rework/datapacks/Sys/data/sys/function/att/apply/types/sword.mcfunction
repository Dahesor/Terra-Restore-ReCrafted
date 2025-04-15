# 重置攻击速度
data remove storage sys:data item.components."minecraft:attribute_modifiers"[{id:"minecraft:base_attack_speed"}]

# 随机武器类型
data modify storage data class set from storage registry:weapon_type sword.data
execute store result score $weapon_type calculator run random value 1..10000
function sys:att/apply/types/select

data modify storage sys:data item.components."minecraft:custom_data".weapon_type set from storage data selected_type.id
data modify storage sys:data item.components."minecraft:item_name" set value {translate:"wnk",color:"white",italic:false,with:[{"text":""},{"text":""}]}
data modify storage sys:data item.components."minecraft:item_name".with[1] set from storage data selected_type.name
function sys:att/apply/types/get_material

#读取与修改基础伤害
function sys:att/apply/types/attack_damage
scoreboard players operation %base_damage calculator = %this calculator
data remove storage data selected_type.modifiers[{type:"attack_damage"}]

#添加其他属性修饰器
data modify storage data modifiers set from storage data selected_type.modifiers
data modify storage data modifiers[].id set value "registry:weapon_type/sword"
data modify storage data modifiers[].slot set value "mainhand"
data modify storage sys:data item.components."minecraft:attribute_modifiers" append from storage data modifiers[]

#记录武器基础属性
data modify storage data weapon_stats set value {melee_damage:0d,attack_speed:0d,reach:0d,sweep:0d,knockback:0d}

    #攻击力
execute store result storage data weapon_stats.melee_damage double 0.01 run scoreboard players get %base_damage calculator
    #攻击速度
execute store result storage data weapon_stats.attack_speed double 0.01 run data get storage data modifiers[{type:"attack_speed"}].amount 100
    #攻击距离
execute if data storage data modifiers[{type:"entity_interaction_range"}] store result storage data weapon_stats.reach double 0.01 run data get storage data modifiers[{type:"entity_interaction_range"}].amount 100
    #击退
execute if data storage data modifiers[{type:"attack_knockback"}] store result storage data weapon_stats.knockback double 0.01 run data get storage data modifiers[{type:"attack_knockback"}].amount 100
    #横扫
execute if data storage data modifiers[{type:"sweeping_damage_ratio"}] store result storage data weapon_stats.sweep double 0.01 run data get storage data modifiers[{type:"sweeping_damage_ratio"}].amount 100

data modify storage sys:data item.components."minecraft:custom_data".att set from storage data weapon_stats


#生成属性说明
data modify storage data lore set value ["",{translate:"alk",italic:false,with:[{translate:"att.melee_damage"},{text:"",color:"green"},""],color:"gray"},{translate:"alk",with:[{translate:"att.attack_speed"},{text:"",color:"green"},""],color:"gray",italic:false},{translate:"alk",with:[{translate:"att.reach"},{text:"",color:"green"},""],color:"gray",italic:false},{translate:"alk",with:[{translate:"att.sweep"},{text:"",color:"green"},""],color:"gray",italic:false},{translate:"alk",with:[{translate:"att.knockback"},{text:"",color:"green"},""],color:"gray",italic:false}]

data modify storage data accepts set value {status_total:0d}
    #攻击力
data modify storage data accepts.status_total set from storage data weapon_stats.melee_damage
function sys:att/apply/lore/total
data modify storage data lore[1].with[1] set from storage data text
    #攻击速度
    data modify storage data accepts.status_total set from storage data weapon_stats.attack_speed
function sys:att/apply/lore/total
data modify storage data lore[2].with[1] set from storage data text
    #攻击距离
data modify storage data accepts.status_total set from storage data weapon_stats.reach
function sys:att/apply/lore/total
data modify storage data lore[3].with[1] set from storage data text
    #横扫
execute store result score #temp calculator run data get storage data weapon_stats.sweep 100
execute store result storage data accepts.status_total double 0.1 run scoreboard players get #temp calculator
function sys:att/apply/lore/total
data modify storage data lore[4].with[1] set from storage data text
    #击退
execute store result score #temp calculator run data get storage data weapon_stats.knockback 100
scoreboard players add #temp calculator 100
execute store result storage data accepts.status_total double 0.01 run scoreboard players get #temp calculator
function sys:att/apply/lore/total
execute if data storage data text{text:"+1.0",color:"green"} run data modify storage data text set value {text:"+1",color:"gray"}
execute store result score #temp calculator run data get storage data weapon_stats.knockback 100
execute if score #temp calculator matches ..-1 run data modify storage data text.color set value "dark_green"
data modify storage data lore[5].with[1] set from storage data text


#植入属性
data modify storage sys:data item.components."minecraft:lore" append value ""
data modify storage sys:data item.components."minecraft:lore" append from storage data selected_type.lore[]
data modify storage sys:data item.components."minecraft:lore" append from storage data lore[]