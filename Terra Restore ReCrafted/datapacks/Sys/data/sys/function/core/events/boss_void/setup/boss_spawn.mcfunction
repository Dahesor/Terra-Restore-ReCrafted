summon husk 3025 155 -1812 {CustomName:{"translate": "boss.void.name","color": "red"},active_effects:[{id:"resistance",amplifier:1b,duration:99999999,show_particles:0b}],CustomNameVisible:0b,attributes:[{id:'scale',base:6.0d},{id:'movement_speed',base:0.12d},{id:"max_health",base:1000d},{id:'safe_fall_distance',base:200d},{id:'max_absorption',base:2040d},{id:'attack_damage',base:0.01d},{base:0.8d,id:'knockback_resistance'}],Health:1000.0f,PersistenceRequired:1b,DeathLootTable:"empty",drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,feet:0f,legs:0f},Tags:["resolved_mob","boss_void","boss_void_kill","boss"],Team:"boss_void",equipment:{mainhand:{id:"netherite_axe",count:1,components:{unbreakable:{}}},feet:{id:"leather_boots",count:1,components:{unbreakable:{},dyed_color:1644825}},legs:{id:"leather_leggings",count:1,components:{unbreakable:{},dyed_color:1644825}},chest:{id:"netherite_chestplate",count:1,components:{unbreakable:{},enchantment_glint_override:true,trim:{material:"gold",pattern:"silence",}}},head:{id:"leather_helmet",count:1,components:{unbreakable:{},dyed_color:1644825}}}}

effect give @e[type=husk,tag=boss_void] resistance 7 10 true

scoreboard players set #temp calculator 180
scoreboard players operation #temp calculator *= boss_void_players data
scoreboard players remove #temp calculator 179
execute if score #temp calculator matches ..0 run scoreboard players set #temp calculator 0
execute if score #temp calculator matches 2040.. run scoreboard players set #temp calculator 2040
data modify storage temp run set value {value:1}
execute store result storage temp run.value int 1 run scoreboard players get #temp calculator
execute as @e[type=husk,tag=boss_void] at @s run function sys:core/events/boss_void/setup/change_attributes with storage temp run