data modify storage data sum_text set value {translate:"smk",with:[{translate:"stats.INT.compact",color:"green"},{text:"",extra:[{text:""},"%"]}],italic:false}

data modify storage data accepts set value {status_total:0}
data modify storage data accepts.status_total set from storage data pr.stats_effects.INT.scale
function sys:att/apply/lore/prefixs/stats_generic