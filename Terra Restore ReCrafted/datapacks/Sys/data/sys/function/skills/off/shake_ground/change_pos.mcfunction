damage @s 6 sys:player_skill_physics by @a[limit=1,tag=damage_temp]
execute store result score #temp calculator run data get entity @s Motion[1] 1000
execute if score #temp calculator matches ..-200 run return fail
scoreboard players add #temp calculator 300
execute store result entity @s Air short 10 run scoreboard players get #loop_20 calculator
execute store result entity @s[tag=!boss] Motion[1] double 0.001 run scoreboard players get #temp calculator
particle block{block_state:{Name:"anvil"}} ~ ~0.2 ~ 0.2 0.1 0.2 0.1 20