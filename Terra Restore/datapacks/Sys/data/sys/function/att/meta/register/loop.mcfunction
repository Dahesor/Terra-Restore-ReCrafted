execute unless data storage sys:mod hold[0].type run return fail
execute store result score #temp calculator run data get storage sys:mod hold[0].point
function sys:att/meta/register/assign_class
data modify storage sys:mod data append from storage sys:mod hold[0]
data remove storage sys:mod hold[0]
function sys:att/meta/register/loop