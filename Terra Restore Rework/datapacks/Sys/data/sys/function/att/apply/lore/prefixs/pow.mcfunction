data modify storage data sum_text set value {translate:"smk",with:[{translate:"stats.POW",color:"yellow"},{text:"",extra:[{text:""},"%"]}],italic:false}

data modify storage data accepts set value {status_total:0}
data modify storage data accepts.status_total set from storage data pr.stats_effects.POW.scale
function sys:att/apply/lore/prefixs/stats_generic