data modify storage temp run2 set value {name:""}
data modify storage temp run2.name set from storage registry:skill temp[0].lore[0].with[0].target.name
function registry:skills/parse/display/with/_get_value_to_const_ with storage temp run2
scoreboard players operation $const2 const = $const const
function registry:skills/parse/display/with/store_in_const

data modify storage temp run2 set value {int:0,extra:"",stats:"",target:0,target_extra:"",target_stats:"",sign:"+"}
data modify storage temp run2.extra set from storage registry:skill temp[0].lore[0].with[0].extra
data modify storage temp run2.stats set from storage registry:skill temp[0].lore[0].with[0].stats
data modify storage temp run2.target_extra set from storage registry:skill temp[0].lore[0].with[0].target.extra
data modify storage temp run2.target_stats set from storage registry:skill temp[0].lore[0].with[0].target.stats
execute store result storage temp run2.int int 1 run scoreboard players get $const const
execute store result storage temp run2.target int 1 run scoreboard players get $const2 const

execute if score $const2 const matches ..-1 run data modify storage temp run2.sign set value "-"

function registry:skills/parse/display/with/_expression_insert_ with storage temp run2