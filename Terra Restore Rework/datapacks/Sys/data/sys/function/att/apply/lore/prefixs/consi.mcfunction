data modify storage data sum_text set value {translate:"smk",with:[{translate:"stats.CON.compact",color:"gold"},{text:"",extra:[{text:""},"%"]}],italic:false}

data modify storage data accepts set value {status_total:0}
data modify storage data accepts.status_total set from storage data pr.stats_effects.CON.scale
function sys:att/apply/lore/prefixs/stats_generic