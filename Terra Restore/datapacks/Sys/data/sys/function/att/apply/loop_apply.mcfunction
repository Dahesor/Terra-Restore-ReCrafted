function sys:att/apply/get_class
function sys:att/apply/entry/random
execute store result score #temp calculator run data get storage sys:mod test.point
scoreboard players operation $p calculator -= #temp calculator
data modify storage sys:mod result append from storage sys:mod test
function sys:att/apply/entry/remove_pools with storage sys:mod test
#tellraw @a {"score": {"name": "$p","objective": "calculator"}}
execute if score $p calculator >= $min_p calculator if score $p calculator <= $max_p calculator run return 1
execute unless data storage sys:mod result[3] run function sys:att/apply/loop_apply