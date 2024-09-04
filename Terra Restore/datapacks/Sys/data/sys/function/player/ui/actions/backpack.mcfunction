clear @s *[custom_data~{ui:{}}]
clear @s barrier[custom_data~{ui_check:1b}]

scoreboard players set @s ui 0
function sys:player/ui/pages/empty
function sys:player/ui/actions/inventory/process_slot
execute positioned ~ 400 ~ run function sys:player/ui/actions/inventory/setup_minecart