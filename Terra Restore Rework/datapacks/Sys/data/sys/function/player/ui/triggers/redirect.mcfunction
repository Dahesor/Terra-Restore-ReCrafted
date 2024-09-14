execute if items entity @s inventory.* *[!custom_data~{ui:{}}] run function sys:player/ui/foolproof/check_for_item
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{sound:"click"}}}] run playsound ui.button.click master @s ~ ~ ~ 1 1 1
execute if score @s ui matches 1 run function sys:player/ui/triggers/children/mainpage