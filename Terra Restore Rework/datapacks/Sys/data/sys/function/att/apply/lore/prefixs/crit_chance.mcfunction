data modify storage data sum_text set value {translate:"smk",with:[{translate:"stats.CRIT_CHANCE",color:"light_purple"},{text:"",extra:[{text:""},"%"]}],italic:false}

data modify storage data accepts set value {status_total:0}
data modify storage data accepts.integer set from storage data pr.stats_effects.crit_chance.add
function sys:att/apply/lore/decimalize
execute if data storage data di{sign:"-"} run data modify storage data sum_text.color set value "red"
execute if data storage data di{sign:"+"} run data modify storage data sum_text.color set value "aqua"
data modify storage data sum_text.with[1].extra[0] set from storage data text
data modify storage data lore append from storage data sum_text