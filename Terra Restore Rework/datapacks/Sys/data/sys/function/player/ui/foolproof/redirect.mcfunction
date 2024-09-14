execute if items entity @s inventory.* *[!custom_data~{ui:{}}] run function sys:player/ui/foolproof/check_for_item
clear @s *[custom_data~{ui:{}}]
execute if score @s ui matches 1 run function sys:player/ui/pages/mainpage