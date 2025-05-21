data modify storage data sum_text set value {translate:"amk",with:["?","+","?"],color:"dark_gray"}

#初始值
data modify storage data accepts.status_total set from storage data accepts.original
function sys:att/apply/lore/numberfy
data modify storage data sum_text.with[0] set from storage data text
data modify storage data sum_text.with[0].color set value "dark_gray"


#修饰值
data modify storage data accepts.status_total set from storage data accepts.modifies
function sys:att/apply/lore/numberfy
data modify storage data sum_text.with[2] set from storage data text
execute if data storage data di{sign:"-"} run data modify storage data sum_text.with[1] set value {text:""}
execute if data storage data di{sign:"-"} run data modify storage data sum_text.with[2].color set value "red"
execute if data storage data di{sign:""} run data modify storage data sum_text.with[2].color set value "aqua"