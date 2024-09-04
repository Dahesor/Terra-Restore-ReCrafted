scoreboard players add 11_becon data 1
tellraw @a {"translate": "event.becon_shut","color": "green","with": [{"selector": "@a[distance=..20]","color": "aqua"}]}
scoreboard players set #temp calculator 4
scoreboard players operation #temp calculator -= 11_becon data
execute if score #temp calculator matches 1.. run tellraw @a {"translate": "event.becon_remain","color": "red","with": [{"score": {"name": "#temp","objective": "calculator"},"color": "yellow"}]}
execute if score #temp calculator matches 0 run tellraw @a {"translate": "event.becon_all_gone","color": "yellow"}

forceload add 2584 -955 2605 -975

execute if score 11_becon data matches 3 run fill 2582 142 -979 2589 142 -972 minecraft:air replace lava
execute if score 11_becon data matches 2 run fill 2582 142 -961 2589 142 -954 minecraft:air replace lava
execute if score 11_becon data matches 1 run fill 2600 142 -961 2607 142 -954 minecraft:air replace lava
execute if score 11_becon data matches 0 run fill 2600 142 -979 2607 142 -972 minecraft:air replace lava
kill @e[limit=1,type=end_crystal,tag=11_end_crystal,sort=random]

forceload remove 2584 -955 2605 -975
