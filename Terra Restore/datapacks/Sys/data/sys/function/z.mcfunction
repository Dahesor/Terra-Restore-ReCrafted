
summon zombie ~ ~ ~ {CustomName:'{"translate": "boss.army.name","color": "red"}',CustomNameVisible:0b,active_effects:[{id:"resistance",duration:999999999,amplifier:3b,show_particles:0b}],PersistenceRequired:1b,attributes:[{id:"generic.max_health",base:100d},{id:"generic.movement_speed",base:0.16d},{id:"generic.scale",base:1.2f}],Health:100f,IsBaby:1b,DeathLootTable:"empty",HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],HandItems:[{id:"minecraft:diamond_sword",count:1,components:{enchantments:{sharpness:4}}},{}],ArmorItems:[{id:"minecraft:leather_boots",components:{dyed_color:10040115}},{id:"minecraft:leather_leggings",count:1,components:{dyed_color:10040115,enchantments:{protection:2}}},{id:"netherite_chestplate",count:1,components:{enchantments:{blast_protection:4},enchantment_glint_override:0b,trim:{material:"amethyst",pattern:"eye"}}},{id:"minecraft:leather_helmet",count:1,components:{dyed_color:10040115,enchantments:{protection:2}}}],Passengers:[{id:"skeleton",active_effects:[{id:"resistance",duration:999999999,amplifier:2b,show_particles:0b}],PersistenceRequired:1b,attributes:[{base:100d,id:"generic.max_health"}],Health:100f,DeathLootTable:"empty",HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],HandItems:[{id:"bow",count:1,components:{enchantments:{power:3}}},{}],ArmorItems:[{id:"minecraft:leather_boots",components:{dyed_color:10040115,enchantments:{protection:1}}},{id:"minecraft:leather_leggings",count:1,components:{dyed_color:10040115,enchantments:{protection:1}}},{id:"leather_chestplate",count:1,components:{enchantments:{protection:1},dyed_color:10040115}},{id:"minecraft:leather_helmet",count:1,components:{dyed_color:10040115,enchantments:{protection:1}}}],Tags:["resolved_mob"],NoAI:1b,Invulnerable:1b}],Tags:["resolved_mob"],NoAI:1b,Invulnerable:1b}


return 1
give @p cherry_sign[custom_name='{"text":"yp"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.create.tp","color": "gold","clickEvent": {"action": "run_command","value": "/function sys:core/events/boss_void/create_tp"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"yp"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"diff.1","color": "green","clickEvent": {"action": "run_command","value": "/function sys:core/events/boss_void/diffs/easy"}}','""','["[",{"translate": "action.boss_start","underlined": true,"color": "red"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"yp2"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"diff.2","color": "gold","clickEvent": {"action": "run_command","value": "/function sys:core/events/boss_void/diffs/normal"}}','""','["[",{"translate": "action.boss_start","underlined": true,"color": "red"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"yp3"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"diff.3","color": "red","clickEvent": {"action": "run_command","value": "/function sys:core/events/boss_void/diffs/hard"}}','""','["[",{"translate": "action.boss_start","underlined": true,"color": "red"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"to base"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.launch","color": "gold","clickEvent": {"action": "run_command","value": "/function sys:plugin/misc/merge_potion"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"to base"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['{"translate":"action.to_base","color": "aqua"}','{"translate":"action.unlock_tp","color": "aqua","clickEvent": {"action": "run_command","value": "/tp @s 1578.5 107.00 -135.5 1168.31 1.14"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"back base"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.tp.","color": "aqua","clickEvent": {"action": "run_command","value": "/tp @s 3048 140 -966"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"Go TO Building"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['{"translate":"action.tp","color": "aqua"}','{"translate":"event.tp_to_restore","color": "aqua","clickEvent": {"action": "run_command","value": "/function sys:plugin/base/to_building {xyz:\'935 87 91\'}"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]


tellraw @a[distance=..10] [{"translate": "hint.music"}]