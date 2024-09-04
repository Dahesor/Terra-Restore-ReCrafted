execute if score 9_door data matches 1.. run return fail

scoreboard players set 9_door data 1

fill 2123 104 -1142 2123 107 -1138 minecraft:air
playsound block.iron_door.open master @a[distance=..30] 2123 107 -1138 1 0.4 1

return 1
function sys:legacy/misc/open_great_wall
give @p cherry_sign[custom_name='{"translate":"function.Health_Status_Effects_UI.data.dah.below.function.below_name.get_content.line23"}',block_entity_data={id:"sign",is_waxed:true,front_text:{messages:['""','{"translate":"action.open_door","color": "aqua","clickEvent": {"action": "run_command","value": "/function sys:legacy/misc/open_great_wall"}}','""','["[",{"keybind": "key.use","underlined": true,"color": "green"},"]"]']}}]
scoreboard players reset 9_door data
fill 2123 104 -1142 2123 107 -1138 bedrock
