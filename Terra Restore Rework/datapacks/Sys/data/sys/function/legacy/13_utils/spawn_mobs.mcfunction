execute if score 13_spawn_mob_off data matches 6.. run return fail


scoreboard players add 13_spawn_mob data 1
execute unless score 13_spawn_mob data matches 10.. run return fail

scoreboard players set 13_spawn_mob data 0
execute unless score 13_spawn_mob_off data matches 1.. run summon creeper 3182 125 -1207 {Tags:["resolved_mob"]}
execute unless score 13_spawn_mob_off data matches 2.. run summon creeper 3177 125 -1207 {Tags:["resolved_mob"]}
execute unless score 13_spawn_mob_off data matches 3.. run summon zombie 3172 125 -1207 {Tags:["resolved_mob"]}
execute unless score 13_spawn_mob_off data matches 4.. run summon zombie 3182 125 -1218 {Tags:["resolved_mob"]}
execute unless score 13_spawn_mob_off data matches 5.. run summon skeleton 3177 125 -1218 {Tags:["resolved_mob"],HandItems:[{id:"bow"},{}]}
summon skeleton 3172 125 -1218 {Tags:["resolved_mob"],HandItems:[{id:"bow"},{}]}

return fail
scoreboard players set 13_spawn_mob_off data 0
scoreboard players set 14_has_player data 0