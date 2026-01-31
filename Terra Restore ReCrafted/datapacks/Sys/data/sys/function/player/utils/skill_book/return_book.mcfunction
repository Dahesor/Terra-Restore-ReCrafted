tag @s remove new_skill_book
data modify entity @s PickupDelay set value 20s
data modify entity @s Item set from storage data item

execute positioned ~ ~0.2 ~ rotated ~ 0 positioned ^ ^ ^0.15 run function dtm:calculate_motion