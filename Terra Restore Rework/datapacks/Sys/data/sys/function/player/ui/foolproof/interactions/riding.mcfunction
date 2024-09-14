advancement revoke @s only sys:ride_container
tag @s add riding_container
execute unless score @s ui matches 1.. run loot replace entity @s inventory.0 loot sys:ui/head_locked
execute if score @s ui matches 1.. run function sys:player/ui/actions/backpack