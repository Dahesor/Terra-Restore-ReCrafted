tag @s add box_item
scoreboard players operation @s loot_box = #temp calculator
data modify entity @s Item set from storage sys:loot_box test.display
data merge entity @s {NoGravity:1b,Invulnerable:1b,PickupDelay:32767s,Age:-32768s}
tag @s remove new_item