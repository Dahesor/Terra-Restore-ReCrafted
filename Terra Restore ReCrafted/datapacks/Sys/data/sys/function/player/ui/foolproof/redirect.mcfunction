execute if items entity @s inventory.* *[!custom_data~{ui:{}}] run function sys:player/ui/foolproof/check_for_item
clear @s *[custom_data~{ui:{}}]
execute if score @s ui matches 1 run function sys:player/ui/pages/mainpage
execute if score @s ui matches 10 run function sys:player/ui/pages/attributes
execute if score @s ui matches 20 run function sys:player/ui/pages/skill
execute if score @s ui matches 21..23 run function sys:player/ui/pages/change_skill
execute if score @s ui matches 30 run function sys:player/ui/pages/settings
execute if score @s ui matches 40 run function sys:player/ui/pages/archive