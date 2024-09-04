execute if score 5_door_1_open data matches 1.. run return fail
scoreboard players set 5_door_1_open data 1
fill 1368 40 -1016 1368 42 -1014 minecraft:air
playsound block.iron_door.open master @a[distance=..30] 1368 40 -1016 1 0.4 1

return 1
give @p cherry_sign[custom_name='{"translate":"sign.1525.front_text.0"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.open_door","color": "aqua","clickEvent": {"action": "run_command","value": "/function sys:legacy/7_utils/door_1"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]