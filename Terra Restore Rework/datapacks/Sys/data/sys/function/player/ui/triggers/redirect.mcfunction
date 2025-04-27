execute if items entity @s inventory.* *[!custom_data~{ui:{}}] run function sys:player/ui/foolproof/check_for_item

function sys:player/ui/triggers/sounds

execute if score @s ui matches 1 run return run function sys:player/ui/triggers/children/mainpage
execute if score @s ui matches 10 run return run function sys:player/ui/triggers/children/attributes
execute if score @s ui matches 20 run return run function sys:player/ui/triggers/children/skill
execute if score @s ui matches 21..23 run return run function sys:player/ui/triggers/children/change_skill