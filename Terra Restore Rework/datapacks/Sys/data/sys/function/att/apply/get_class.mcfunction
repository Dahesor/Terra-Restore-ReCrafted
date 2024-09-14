scoreboard players operation #temp calculator = $p calculator
function sys:att/apply/classes/class
execute unless data storage sys:mod result[3] run return fail
execute if score $p calculator matches 1.. run data remove storage sys:mod class[{positive:0b}]
execute if score $p calculator matches ..1 run data remove storage sys:mod class[{positive:1b}]