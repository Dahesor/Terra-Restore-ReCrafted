scoreboard players set 11_opening data 1
tellraw @a {"translate":"event.front.start","color": "red","with": [{"selector": "@s","color": "green"}]}
tellraw @a {"translate":"event.warn.once","color": "red"}
function sys:core/events/great_wall_opening/creat_tp
scoreboard objectives add great_wall dummy
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.1 1