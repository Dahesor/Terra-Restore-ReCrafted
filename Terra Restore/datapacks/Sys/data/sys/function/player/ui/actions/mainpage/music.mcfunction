clear @s *[custom_data~{ui:{}}]
function sys:player/ui/pages/mainpage
stopsound @s record
scoreboard players set @s music -9
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5 1