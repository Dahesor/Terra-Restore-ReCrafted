execute unless data storage sys:data Inv2[0] run return fail
execute store result score #temp calculator run random value 1..100
execute if score #temp calculator <= deathDropChance options run data modify storage sys:data Inv append from storage sys:data Inv2[0]
data remove storage sys:data Inv2[0]
function sys:player/utils/drop/randomly/looper