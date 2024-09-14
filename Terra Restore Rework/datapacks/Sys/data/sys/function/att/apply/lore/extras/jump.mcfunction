execute store result score #temp calculator run data get storage sys:mod result[{id:"attribute.name.generic.jump_strength"}].amount 100
data modify storage temp run set value {value:0,trans:"attribute.name.generic.jump_strength"}
execute store result storage temp run.value int 1 run scoreboard players get #temp calculator
function sys:att/apply/lore/extras/percent with storage temp run