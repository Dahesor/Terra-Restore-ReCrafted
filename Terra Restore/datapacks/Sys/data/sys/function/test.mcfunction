$scoreboard players set #temp calculator $(c)
loot give @s loot sys:main/drops/all

return 1
give @p cherry_sign[custom_name='{"text":"leave!"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.leave","color": "aqua","clickEvent": {"action": "run_command","value": "/function sys:plugin/base/leave_upgrade"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"enter"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['{"translate": "action.enter_upgrade","color": "aqua"}','{"translate":"upgrade.lore","color": "aqua","clickEvent": {"action": "run_command","value": "/function sys:plugin/base/upgrades"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]
give @s jigsaw[block_state={orientation:"down_east"}]
give @p cherry_sign[custom_name='{"text":"enter"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.back_base","color": "aqua","clickEvent": {"action": "run_command","value": "/function sys:plugin/base/to_base"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"enter"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.enter_base","color": "aqua","clickEvent": {"action": "run_command","value": "/function sys:plugin/base/to_base"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"leave"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.open_door","color": "red","clickEvent": {"action": "run_command","value": "/fill 2157 104 -1142 2157 107 -1138 moving_piston destroy"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]
tellraw @a ["[",{"text":"Hint","color": "green"},"] ", {"translate": "hint.1"}]

give @p cherry_sign[custom_name='{"text":"leave"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.leave","color": "red","clickEvent": {"action": "run_command","value": "/function sys:core/events/boss_army/closing_words/player_leave"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

execute as @a at @s run function dah.sch:set {time:1,run:"tp ~ ~ ~"}
execute as @a at @s run tp @s ~ ~300 ~ ~ ~

give @p cherry_sign[custom_name='{"text":"final"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['{"translate":"action.tp.back","color":"aqua"}','{"translate":"area.17.center","color": "red","clickEvent": {"action": "run_command","value": "/tp @s 3105 133 885"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"launch"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"area.14.tp_village","color": "aqua","clickEvent": {"action": "run_command","value": "/tp @s 3280 238 -968"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"launch"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['{"translate":"action.launch.1","color":"aqua"}','{"translate":"action.launch.2","color": "aqua","clickEvent": {"action": "run_command","value": "/execute positioned 3364 183 -693 run function sys:legacy/14_utils/launches/3"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"tp"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"area.6.leave","color": "aqua","clickEvent": {"action": "run_command","value": "/tp @s 3108 160 -985 0 0"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"tp"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.leave","color": "aqua","clickEvent": {"action": "run_command","value": "/tp @s 3097.50 131.00 -1206.50 0 0"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

give @p cherry_sign[custom_name='{"text":"Leave"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.escape","color": "aqua","clickEvent": {"action": "run_command","value": "/tp @s 3006 107 -1115"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]

execute at @a[distance=..7] run summon potion ~ ~2.4 ~ {Item:{id:"splash_potion",count:1,components:{potion_contents:{custom_color:16711680,custom_effects:[{id:"speed",amplifier:2b,duration:900},{id:"resistance",amplifier:0b,duration:1200},{id:"strength",amplifier:0b,duration:1800},{id:"regeneration",amplifier:0b,duration:1200},{id:"fire_resistance",amplifier:0b,duration:1200},{id:"absorption",amplifier:2b,duration:1200}]}}}}

#alpha
give @p cherry_sign[custom_name='{"text":"Alpha"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['{"translate":"action.tp","color": "aqua","clickEvent": {"action": "run_command","value": "/function sys:legacy/11_utils/alpha"}}','{"translate":"ship.alpha","color": "aqua"}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]
#beta
give @p cherry_sign[custom_name='{"text":"Beta"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['{"translate":"action.tp","color": "aqua","clickEvent": {"action": "run_command","value": "/function sys:legacy/11_utils/beta"}}','{"translate":"ship.beta","color": "aqua"}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]
#gamma
give @p cherry_sign[custom_name='{"text":"Gamma"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['{"translate":"action.tp","color": "aqua","clickEvent": {"action": "run_command","value": "/function sys:legacy/11_utils/gamma"}}','{"translate":"ship.gamma","color": "aqua"}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]
#base
give @p cherry_sign[custom_name='{"text":"Base"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['{"translate":"action.tp","color": "aqua","clickEvent": {"action": "run_command","value": "/function sys:legacy/11_utils/base"}}','{"translate":"ship.base","color": "aqua"}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]
