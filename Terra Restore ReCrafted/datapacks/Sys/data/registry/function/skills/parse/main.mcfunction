data modify storage temp run set value {id:""}
data modify storage temp run.id set from storage registry:skill temp[0].sid
execute if data storage registry:skill temp[0].key run data modify storage temp run.id set from storage registry:skill temp[0].key

data modify storage data sum_text set from storage registry:skill temp[0].additional_lore
data remove storage registry:skill temp[0].additional_lore
data remove storage registry:skill temp[0].key
data modify storage registry:skill data[0] set value {slot_limit:{off:1b,right:1b,shift:1b}}
data modify storage registry:skill data[0] merge from storage registry:skill temp[0]
data modify storage registry:skill data[0].lore set value []
data modify storage registry:skill data[0].cd_mp_lore set value [{translate:"mp_cost_l",with:[{text:"",color:"aqua"}],color:"#CCCCCC",italic:false},"    ",{translate:"cd_l",with:[{text:"",color:"light_purple"}]}]

#显示名称
function registry:skills/parse/display/get_title with storage temp run

#魔力消耗
function registry:skills/parse/display/mp_cost with storage registry:skill data[0]

#冷却时间
data modify storage data di set value {decimal:0,integer:0,sign:""}
execute store result score #temp calculator run data get storage registry:skill data[0].cd
execute store result storage data di.integer int 0.1 run scoreboard players get #temp calculator
scoreboard players operation #temp calculator %= #10 calculator
execute store result storage data di.decimal int 1 run scoreboard players get #temp calculator
function registry:skills/parse/display/cd with storage data di

#描述
scoreboard players set %count calculator 1
function registry:skills/parse/display/lore_loop
execute unless data storage registry:skill data[0].slot_limit{off:1b,right:1b,shift:1b} run function registry:skills/parse/display/slot_limit/cases
data modify storage registry:skill data[0].lore append from storage data sum_text[]

data modify storage registry:skill data[0].description set from storage registry:skill data[0].lore
data modify storage registry:skill data[0].lore set value []
#data modify storage registry:skill data[0].lore prepend from storage registry:skill data[0].cd_mp_lore