clear @s *[custom_data~{ui:{}}]
execute if score @s ui matches 21 run return run function sys:player/ui/actions/change_skill/to_1
execute if score @s ui matches 22 run return run function sys:player/ui/actions/change_skill/to_2
execute if score @s ui matches 23 run return run function sys:player/ui/actions/change_skill/to_3
function sys:player/ui/actions/skill/to