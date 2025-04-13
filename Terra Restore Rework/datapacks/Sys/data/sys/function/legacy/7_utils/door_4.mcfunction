execute if score 5_door_4_open data matches 1.. run return fail
scoreboard players set 5_door_4_open data 1
fill 1364 40 -1032 1362 42 -1032 air
playsound block.iron_door.open master @a[distance=..30] 1362 42 -1032 1 0.4 1

return 1
give @p cherry_sign[custom_name={"translate":"sign.1525.front_text.0"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:["",{"translate":"action.open_door","color": "aqua","click_event": {"action": "run_command","command": "/function sys:legacy/7_utils/door_4"}},"",["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]]}}]

give @p cherry_sign[custom_name={"translate":"sign.1525.front_text.0"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:["",{"translate":"action.tp_road","color": "aqua","click_event": {"action": "run_command","command": "/tp @s 2952 153 -1003"}},"",["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]]}}]
give @p cherry_sign[custom_name={"translate":"sign.1525.front_text.0"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:["",{"translate":"action.tp_city","color": "aqua","click_event": {"action": "run_command","command": "/tp @s 2035.5 86.00 -1210.5"}},"",["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]]}}]
give @p cherry_sign[custom_name={"translate":"sign.1525.front_text.0"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:["",{"translate":"action.tp_city.back","color": "aqua","click_event": {"action": "run_command","command": "/tp @s 1998.5 76.00 -1131.5"}},"",["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]]}}]
