clear @s *[custom_data~{ui:{}}]
scoreboard players add @s skill.off 1
execute if score @s skill.off matches 8.. run scoreboard players set @s skill.off 1
function sys:player/ui/pages/mainpage
