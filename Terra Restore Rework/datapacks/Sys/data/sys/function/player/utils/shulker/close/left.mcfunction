tag @s remove __shulker
playsound terra:event.shulker_close player @s ~ ~ ~ 1 1.4 1

function sys:player/ui/pages/empty
function sys:player/ui/actions/inventory/process_slot
execute positioned ~ 400 ~ run function sys:player/ui/actions/inventory/setup_minecart

#副手
item modify entity @s weapon.offhand sys:util/hide_shulker

execute as @e[type=item,tag=shulker_illegal,distance=..5] run data modify entity @s PickupDelay set value 1s