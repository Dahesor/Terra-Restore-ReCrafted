execute store result score #temp calculator run data get storage sys:mod result[{id:"attack_knockback"}].amount 10

$execute if score #temp calculator matches 0..9 run return run data modify storage sys:data lore append value '{"translate": "att.new","color": "blue","italic": false,"with": ["+","0$(amount)",{"translate": "attribute.name.attack_knockback"}]}'
$execute if score #temp calculator matches 10.. run return run data modify storage sys:data lore append value '{"translate": "att.new","color": "blue","italic": false,"with": ["+","$(amount)",{"translate": "attribute.name.attack_knockback"}]}'

scoreboard players operation #temp calculator *= #-1 calculator
scoreboard players operation #temp2 calculator = #temp calculator
scoreboard players operation #temp2 calculator %= #10 calculator
scoreboard players operation #temp calculator /= #10 calculator

data modify storage temp run set value {value:0,vc:0,trans:"attribute.name.attack_knockback"}
execute store result storage temp run.value int 1 run scoreboard players get #temp calculator
execute store result storage temp run.vc int 1 run scoreboard players get #temp2 calculator
function sys:att/apply/lore/extras/negs with storage temp run