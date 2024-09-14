function sys:player/trigs/skills/reset_off
scoreboard players operation #temp calculator = @s CD.off
execute if score #temp calculator matches 1.. run return run function sys:player/trigs/skills/in_cd

playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.7 2 0.7

execute if score @s skill.off matches 1 run return run function sys:skills/off/heal_potion
execute if score @s skill.off matches 2 run return run function sys:skills/off/shake_ground/get_mobs
execute if score @s skill.off matches 3 run return run function sys:skills/off/lot_of_arrows/shoot
execute if score @s skill.off matches 4 run return run function sys:skills/off/drop_sword/summon
execute if score @s skill.off matches 5 run return run function sys:skills/off/bite/enter
execute if score @s skill.off matches 6 run return run function sys:skills/off/snow/enter
execute if score @s skill.off matches 7 run return run function sys:skills/off/trace_back/go