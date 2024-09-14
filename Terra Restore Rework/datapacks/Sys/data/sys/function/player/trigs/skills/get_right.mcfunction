scoreboard players set @s right_trigger 0
execute if score @s right.pause matches 1.. run return fail
scoreboard players operation #temp calculator = @s CD.right
scoreboard players set @s right.pause 4
execute if score #temp calculator matches 1.. run return run function sys:player/trigs/skills/in_cd

playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.7 2 0.7


execute if score @s skill.right matches 1 run return run function sys:skills/right/leap
execute if score @s skill.right matches 2 run return run function sys:skills/right/speed_2
execute if score @s skill.right matches 3 run return run function sys:skills/right/strength
execute if score @s skill.right matches 4 run return run function sys:skills/right/absorption
execute if score @s skill.right matches 5 run return run function sys:skills/right/friend/summon
execute if score @s skill.right matches 6 run return run function sys:skills/right/knockback/knock_back
