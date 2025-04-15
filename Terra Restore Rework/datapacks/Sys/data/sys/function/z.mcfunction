




return 1
tellraw @a {"score": {"objective": "calculator","name": "$gametime"}}

give @p cherry_sign[custom_name={"translate":"z.line5"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:["",{"translate":"action.create.tp","color": "gold","click_event": {"action": "run_command","command": "/function sys:core/events/boss_void/create_tp"}},"",["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]]}}]

give @p cherry_sign[custom_name={"translate":"z.line5"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:["",{"translate":"diff.1","color": "green","click_event": {"action": "run_command","command": "/function sys:core/events/boss_void/diffs/easy"}},"",["[",{"translate": "action.boss_start","underlined": true,"color": "red"},"]"]]}}]

give @p cherry_sign[custom_name={"translate":"z.line9"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:["",{"translate":"diff.2","color": "gold","click_event": {"action": "run_command","command": "/function sys:core/events/boss_void/diffs/normal"}},"",["[",{"translate": "action.boss_start","underlined": true,"color": "red"},"]"]]}}]

give @p cherry_sign[custom_name={"translate":"z.line11"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:["",{"translate":"diff.3","color": "red","click_event": {"action": "run_command","command": "/function sys:core/events/boss_void/diffs/hard"}},"",["[",{"translate": "action.boss_start","underlined": true,"color": "red"},"]"]]}}]

give @p cherry_sign[custom_name={"translate":"z.line13"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:["",{"translate":"action.launch","color": "gold","click_event": {"action": "run_command","command": "/function sys:plugin/misc/merge_potion"}},"",["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]]}}]

give @p cherry_sign[custom_name={"translate":"z.line13"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:[{"translate":"action.to_base","color": "aqua"},{"translate":"action.unlock_tp","color": "aqua","click_event": {"action": "run_command","command": "/tp @s 1578.5 107.00 -135.5 1168.31 1.14"}},"",["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]]}}]

give @p cherry_sign[custom_name={"translate":"z.line17"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:["",{"translate":"action.tp.","color": "aqua","click_event": {"action": "run_command","command": "/tp @s 3048 140 -966"}},"",["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]]}}]

give @p cherry_sign[custom_name={"translate":"z.line19"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:[{"translate":"action.tp","color": "aqua"},{"translate":"event.tp_to_restore","color": "aqua","click_event": {"action": "run_command","command": "/function sys:plugin/base/to_building {xyz:\"935 87 91\"}"}},"",["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]]}}]
tellraw @a[distance=..10] [{"translate": "hint.music"}]