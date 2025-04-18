function registry:skills/parse/display/with/store_in_const

data modify storage temp run2 set value {int:0,extra:"",stats:""}
data modify storage temp run2.extra set from storage registry:skill temp[0].lore[0].with[0].extra
data modify storage temp run2.stats set from storage registry:skill temp[0].lore[0].with[0].stats
execute store result storage temp run2.int int 1 run scoreboard players get $const const
function registry:skills/parse/display/with/_stats_insert_ with storage temp run2