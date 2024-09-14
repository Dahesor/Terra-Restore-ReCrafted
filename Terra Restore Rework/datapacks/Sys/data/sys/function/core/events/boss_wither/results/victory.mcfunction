function sys:core/events/boss_wither/stop
tp @a[tag=in_boss_wither] 763 88 -973
gamemode survival @a[tag=in_boss_wither]
execute store result score #temp calculator if entity @a[tag=in_boss_wither]
execute unless score #temp calculator matches 4.. run tellraw @a {"translate":"boss.wither.victory","color": "green","with": [{"translate": "boss.wither.name","color": "red"},{"selector": "@a[tag=in_boss_wither]","color": "yellow"}]}
execute if score #temp calculator matches 4.. run tag @a[tag=in_boss_wither,sort=random,limit=3] add tell_name
execute if score #temp calculator matches 4.. run tellraw @a {"translate":"boss.wither.victory.multi","color": "green","with": [{"translate": "boss.wither.name","color": "red"},{"selector": "@a[tag=in_boss_wither,tag=tell_name]","color": "yellow"},{"score": {"name": "#temp","objective": "calculator"},"underlined": true}],"hoverEvent": {"action": "show_text","contents": {"selector": "@a[tag=in_boss_wither]"}}}
effect clear @a[tag=in_boss_wither]
effect give @a[tag=in_boss_wither] instant_health 1 10 true
effect give @a[tag=in_boss_wither] saturation 1 10 true
stopsound @a[tag=in_boss_wither] record
execute as @a[tag=in_boss_wither] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8 1
tag @a remove tell_name

execute as @a[tag=in_boss_wither] run function sys:core/events/boss_wither/results/unlock_chest

tag @e[tag=in_boss_wither,type=player] add _alive
tag @a[tag=in_boss_wither] remove boss_spectate
tag @a[tag=in_boss_wither] remove boss_wither_spectate
tag @a[tag=in_boss_wither,tag=!_alive] add boss_wither_tpback
tag @a[tag=in_boss_wither,tag=!_alive] add domain_tpback
tag @a[tag=in_boss_wither] remove in_boss
tag @a[tag=in_boss_wither] remove in_boss_wither
tag @a remove _alive

data modify storage sys:loot_box data[{tags:["light_blue_wool"]}].locked set value 0b