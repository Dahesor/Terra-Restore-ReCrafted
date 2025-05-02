execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"back"}}}] run function sys:player/ui/actions/backpack
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"tp"}}}] run function sys:player/ui/actions/mainpage/tp
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"show"}}}] run function sys:player/ui/actions/mainpage/showcase
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"skill"}}}] run function sys:player/ui/actions/skill/to
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"att"}}}] run function sys:player/ui/actions/attributes/to
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"setting"}}}] run function sys:player/ui/actions/settings/to
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"archive"}}}] run function sys:player/ui/actions/archive/to