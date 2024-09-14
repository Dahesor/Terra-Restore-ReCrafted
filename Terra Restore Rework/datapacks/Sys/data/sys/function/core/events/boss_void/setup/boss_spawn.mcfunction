summon husk 3025 155 -1812 {CustomName:'{"translate": "boss.void.name","color": "red"}',active_effects:[{id:"resistance",amplifier:1b,duration:99999999,show_particles:0b}],CustomNameVisible:0b,attributes:[{id:'generic.scale',base:6.0d},{id:'generic.movement_speed',base:0.12d},{id:"generic.max_health",base:1000d},{id:'generic.safe_fall_distance',base:200d},{id:'generic.max_absorption',base:2040d},{id:'generic.attack_damage',base:0.01d},{base:0.8d,id:'generic.knockback_resistance'}],Health:1000.0f,PersistenceRequired:1b,DeathLootTable:"empty",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],HandItems:[{id:"netherite_axe",count:1,components:{unbreakable:{show_in_tooltip:false}}},{}],ArmorItems:[{id:"leather_boots",count:1,components:{unbreakable:{show_in_tooltip:false},dyed_color:1644825}},{id:"leather_leggings",count:1,components:{unbreakable:{show_in_tooltip:false},dyed_color:1644825}},{id:"netherite_chestplate",count:1,components:{unbreakable:{show_in_tooltip:false},enchantment_glint_override:true,trim:{material:"gold",pattern:"silence",show_in_tooltip:false}}},{id:"leather_helmet",count:1,components:{unbreakable:{show_in_tooltip:false},dyed_color:1644825}}],Tags:["resolved_mob","boss_void","boss_void_kill","boss"],Team:"boss_void"}

effect give @e[type=husk,tag=boss_void] resistance 7 10 true

scoreboard players set #temp calculator 180
scoreboard players operation #temp calculator *= boss_void_players data
scoreboard players remove #temp calculator 179
execute if score #temp calculator matches ..0 run scoreboard players set #temp calculator 0
execute if score #temp calculator matches 2040.. run scoreboard players set #temp calculator 2040
data modify storage temp run set value {value:1}
execute store result storage temp run.value int 1 run scoreboard players get #temp calculator
execute as @e[type=husk,tag=boss_void] at @s run function sys:core/events/boss_void/setup/change_attributes with storage temp run