execute if items entity @s player.crafting.* *[!custom_data~{ui_check:1b}] run function sys:player/ui/foolproof/interactions/return_grafting_grids


item replace entity @s player.crafting.0 with barrier[hide_tooltip={},custom_data={ui_check:1b,grid:1b},custom_name='""',custom_model_data=1]
item replace entity @s player.crafting.1 with barrier[hide_tooltip={},custom_data={ui_check:1b,grid:2b},custom_name='""',custom_model_data=1]
item replace entity @s player.crafting.2 with barrier[hide_tooltip={},custom_data={ui_check:1b,grid:3b},custom_name='""',custom_model_data=1]
item replace entity @s player.crafting.3 with barrier[hide_tooltip={},custom_data={ui_check:1b,grid:4b},custom_name='""',custom_model_data=1]