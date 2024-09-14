function sys:core/events/boss_army/stop
tp @a[tag=in_boss_army] 2555.60 132.00 -1426.42
gamemode survival @a[tag=in_boss_army]
execute store result score #temp calculator if entity @a[tag=in_boss_army]
execute unless score #temp calculator matches 4.. run tellraw @a {"translate":"boss.wither.victory","color": "green","with": [{"translate": "boss.army.name","color": "red"},{"selector": "@a[tag=in_boss_army]","color": "yellow"}]}
execute if score #temp calculator matches 4.. run tag @a[tag=in_boss_army,sort=random,limit=3] add tell_name
execute if score #temp calculator matches 4.. run tellraw @a {"translate":"boss.wither.victory.multi","color": "green","with": [{"translate": "boss.army.name","color": "red"},{"selector": "@a[tag=in_boss_army,tag=tell_name]","color": "yellow"},{"score": {"name": "#temp","objective": "calculator"},"underlined": true}],"hoverEvent": {"action": "show_text","contents": {"selector": "@a[tag=in_boss_army]"}}}
effect clear @a[tag=in_boss_army]
effect give @a[tag=in_boss_army] instant_health 1 10 true
effect give @a[tag=in_boss_army] saturation 1 10 true
stopsound @a[tag=in_boss_army] record
execute as @a[tag=in_boss_army] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8 1
tag @a remove tell_name
execute as @a[tag=in_boss_army] run function sys:core/events/boss_army/results/unlock_chest
tag @e[tag=in_boss_army,type=player] add _alive
tag @a[tag=in_boss_army] remove boss_spectate
tag @a[tag=in_boss_army] remove boss_army_spectate
tag @a[tag=in_boss_army,tag=!_alive] add boss_army_tpback
tag @a[tag=in_boss_army,tag=!_alive] add domain_tpback
tag @a[tag=in_boss_army] remove in_boss
tag @a[tag=in_boss_army] remove in_boss_army
tag @a remove _alive
data modify storage sys:loot_box data[{tags:["purple_wool"]}].locked set value 0b