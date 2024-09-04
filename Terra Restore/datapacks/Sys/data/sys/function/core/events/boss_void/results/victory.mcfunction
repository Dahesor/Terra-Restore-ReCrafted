function sys:core/events/boss_void/stop
tp @a[tag=in_boss_void] 2952.53 153.00 -1002.54
gamemode survival @a[tag=in_boss_void]
execute store result score #temp calculator if entity @a[tag=in_boss_void]
execute unless score #temp calculator matches 4.. run tellraw @a {"translate":"boss.wither.victory","color": "green","with": [{"translate": "boss.void.name","color": "red"},{"selector": "@a[tag=in_boss_void]","color": "yellow"}]}
execute if score #temp calculator matches 4.. run tag @a[tag=in_boss_void,sort=random,limit=3] add tell_name
execute if score #temp calculator matches 4.. run tellraw @a {"translate":"boss.wither.victory.multi","color": "green","with": [{"translate": "boss.void.name","color": "red"},{"selector": "@a[tag=in_boss_void,tag=tell_name]","color": "yellow"},{"score": {"name": "#temp","objective": "calculator"},"underlined": true}],"hoverEvent": {"action": "show_text","contents": {"selector": "@a[tag=in_boss_void]"}}}
effect clear @a[tag=in_boss_void]
effect give @a[tag=in_boss_void] instant_health 1 10 true
effect give @a[tag=in_boss_void] saturation 1 10 true
stopsound @a[tag=in_boss_void] record
execute as @a[tag=in_boss_void] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8 1
tag @a remove tell_name
tag @e[tag=in_boss_void,type=player] add _alive
tag @a[tag=in_boss_void] remove boss_spectate
tag @a[tag=in_boss_void] remove boss_void_spectate
tag @a[tag=in_boss_void,tag=!_alive] add boss_void_tpback
tag @a[tag=in_boss_void,tag=!_alive] add domain_tpback
tag @a[tag=in_boss_void] remove in_boss
tag @a[tag=in_boss_void] remove in_boss_void
tag @a remove _alive
data modify storage sys:loot_box data[{tags:["blue_wool"]}].locked set value 0b