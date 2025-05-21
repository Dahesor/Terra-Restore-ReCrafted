execute if score front_line_door data matches 1.. run return fail

scoreboard players set front_line_door data 1

fill 2123 104 -1142 2123 107 -1138 minecraft:air
playsound block.iron_door.open master @a[distance=..30] 2123 107 -1138 1 0.4 1

return 1
function sys:legacy/misc/open_great_wall
give @p cherry_sign[custom_name={"translate":"function.Health_Status_Effects_UI.data.dah.below.function.below_name.get_content.line23"},block_entity_data={id:"sign",is_waxed:true,front_text:{messages:["",{"translate":"action.open_door","color": "aqua","click_event": {"action": "run_command","command": "/function sys:legacy/misc/front_line_door"}},"",["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]]}}]
scoreboard players reset front_line_door data
fill 2123 104 -1142 2123 107 -1138 bedrock
