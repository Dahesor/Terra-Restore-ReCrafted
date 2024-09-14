clear @s *[custom_data~{ui:{}}]
scoreboard players add @s skill.right 1
execute if score @s skill.right matches 7.. run scoreboard players set @s skill.right 1
function sys:player/ui/pages/mainpage