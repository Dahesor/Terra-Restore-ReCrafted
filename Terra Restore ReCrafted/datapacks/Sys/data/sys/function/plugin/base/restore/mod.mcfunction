tellraw @a {"translate": "event.new_restore"}
playsound terra:event.restore master @a ~ ~ ~ 1 0.8 1
item replace entity @s weapon with air
execute as @e[type=interaction,tag=terra] if score @s genericCD = #temp calculator at @s run function sys:plugin/base/restore/entries/place_block
forceload add 3 -62 -28 -111