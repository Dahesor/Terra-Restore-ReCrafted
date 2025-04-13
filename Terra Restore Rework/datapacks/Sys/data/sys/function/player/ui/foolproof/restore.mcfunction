execute unless score @s ui matches 1.. run return run function sys:player/ui/foolproof/backpack_check
execute if items entity @s player.cursor *[custom_data~{ui:{trigger:{}}}] run return run function sys:player/ui/triggers/redirect
function sys:player/ui/foolproof/redirect

