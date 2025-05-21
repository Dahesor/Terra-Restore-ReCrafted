tag @s remove new_dropped_item
data modify entity @s Item set from storage sys:data Inv[0]
execute if data storage temp UUID run data modify entity @s Owner set from storage temp UUID
execute if score protectDeathDrops options matches 1 run data modify entity @s Invulnerable set value 1b