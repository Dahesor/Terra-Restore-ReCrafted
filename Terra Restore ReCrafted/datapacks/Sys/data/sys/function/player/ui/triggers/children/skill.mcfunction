execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"back"}}}] run function sys:player/ui/actions/mainpage/to

execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"right_click"}}}] run function sys:player/ui/actions/change_skill/to_1
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"off"}}}] run function sys:player/ui/actions/change_skill/to_2
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"shift"}}}] run function sys:player/ui/actions/change_skill/to_3