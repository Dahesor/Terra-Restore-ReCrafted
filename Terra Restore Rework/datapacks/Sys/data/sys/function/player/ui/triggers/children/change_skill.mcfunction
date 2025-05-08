execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"back"}}}] run function sys:player/ui/actions/skill/to

execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"unequip"}}}] run function sys:player/ui/actions/change_skill/unequip
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"select"}}}] run function sys:player/ui/actions/change_skill/select
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"stay"}}}] run function sys:player/ui/actions/change_skill/select
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"swap"}}}] run function sys:player/ui/actions/change_skill/swap
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{id:"locked"}}}] run function sys:player/ui/actions/change_skill/slot_locked