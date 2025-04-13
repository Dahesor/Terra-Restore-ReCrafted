scoreboard players set boss_army_start data 1
scoreboard players set boss_army_players data 0
execute store result score boss_army_players data if entity @a[tag=in_boss_army]
summon zombie 2561 132 -1427 {CustomName:'{"translate": "boss.army.name","color": "red"}',CustomNameVisible:1b,active_effects:[{id:"resistance",duration:999999999,amplifier:3b,show_particles:0b}],PersistenceRequired:1b,attributes:[{id:"max_health",base:100d},{id:"movement_speed",base:0.16d},{id:"scale",base:1.2f}],Health:100f,IsBaby:1b,DeathLootTable:"empty",drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,feet:0f,legs:0f},equipment:{mainhand:{id:"minecraft:diamond_sword",count:1,components:{enchantments:{sharpness:4}}},feet:{id:"minecraft:leather_boots",components:{dyed_color:10040115}},legs:{id:"minecraft:leather_leggings",count:1,components:{dyed_color:10040115,enchantments:{protection:2}}},chest:{id:"netherite_chestplate",count:1,components:{enchantments:{blast_protection:4},enchantment_glint_override:0b,trim:{material:"amethyst",pattern:"eye"}}},head:{id:"minecraft:leather_helmet",count:1,components:{dyed_color:10040115,enchantments:{protection:2}}}},Passengers:[{id:"skeleton",active_effects:[{id:"resistance",duration:999999999,amplifier:2b,show_particles:0b}],PersistenceRequired:1b,attributes:[{base:100d,id:"max_health"}],Health:100f,DeathLootTable:"empty",drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,feet:0f,legs:0f},equipment:{mainhand:{id:"bow",count:1,components:{enchantments:{power:3}}},feet:{id:"minecraft:leather_boots",components:{dyed_color:10040115,enchantments:{protection:1}}},legs:{id:"minecraft:leather_leggings",count:1,components:{dyed_color:10040115,enchantments:{protection:1}}},chest:{id:"leather_chestplate",count:1,components:{enchantments:{protection:1},dyed_color:10040115}},head:{id:"minecraft:leather_helmet",count:1,components:{dyed_color:10040115,enchantments:{protection:1}}}},Tags:["resolved_mob","boss_army_skele","boss_army_kill","boss"],Team:"mob_army"}],Tags:["resolved_mob","boss_army","boss_army_kill","boss"],Team:"mob_army"}

execute as @e[type=zombie,tag=boss_army] run function sys:core/events/boss_army/setup/change_attributes

title @a[tag=in_boss_army] times 20 60 20
title @a[tag=in_boss_army] title {"translate": "boss.army.name","color": "red","bold": true}
title @a[tag=in_boss_army] subtitle {"translate": "boss.army.lore","color": "white","bold": true}
execute as @a[tag=in_boss_army] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 0.8 1
bossbar add sys:boss_army {"translate": "boss.army.name","color": "red","bold": true}
bossbar add sys:boss_army_skele {"translate": "boss.army.skele.name","color": "red","bold": true}
bossbar set sys:boss_army color red
bossbar set sys:boss_army_skele color purple
bossbar set sys:boss_army players @a[tag=in_boss_army]
bossbar set sys:boss_army_skele players @a[tag=in_boss_army]
execute store result bossbar sys:boss_army max run attribute @e[type=zombie,tag=boss_army,limit=1] max_health get
execute store result bossbar sys:boss_army_skele max run attribute @e[type=skeleton,tag=boss_army_skele,limit=1] max_health get
execute store result bossbar sys:boss_army value run attribute @e[type=zombie,tag=boss_army,limit=1] max_health get
execute store result bossbar sys:boss_army_skele value run attribute @e[type=skeleton,tag=boss_army_skele,limit=1] max_health get

scoreboard players set boss_army_swarm data 0
scoreboard players set boss_army_speed data 0
scoreboard players set boss_army_stack data 0
function sys:core/events/boss_army/moves/swarm/new