clear @s *[custom_data~{ui:{}}]
function sys:player/ui/pages/attributes

execute unless score @s self_att_pts matches 1.. run return run function sys:player/ui/actions/attributes/refuse

scoreboard players remove @s self_att_pts 1
scoreboard players add @s base_POW 1
playsound entity.experience_orb.pickup master @s ~ ~ ~
function sys:player/utils/stats/refresh
function sys:player/ui/pages/attributes