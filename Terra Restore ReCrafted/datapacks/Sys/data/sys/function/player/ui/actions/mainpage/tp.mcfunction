clear @s *[custom_data~{ui:{}}]
function sys:player/ui/pages/mainpage
execute at @s store result score #result calculator run function sys:player/utils/create_teleport
execute if score #result calculator matches -1 run tellraw @s {"translate":"tp.error.to_small","color": "red"}
execute if score #result calculator matches -1 run tellraw @s {"translate":"tp.error.to_small.lore","color": "yellow"}
execute if score #result calculator matches -2 run tellraw @s {"translate":"tp.error.out_of_world","color": "red"}
execute if score #result calculator matches -3 run tellraw @s {"translate":"tp.error.duplicate","color": "red"}
execute if score #result calculator matches -4 run tellraw @s {"translate":"tp.error.tping","color": "red"}
execute if score #result calculator matches -4..-1 at @s run return run playsound terra:ui.denied master @s ~ ~ ~ 1 1 1
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5 1