execute store result entity @s beam_target[0] int 1 run data get storage temp target[0]
execute store result entity @s beam_target[1] int 1 run data get storage temp target[1]
execute store result entity @s beam_target[2] int 1 run data get storage temp target[2]
playsound terra:event.laser master @a
function dah.sch:set {time:15,run:"data merge entity @s {beam_target:[I;2594,174,-965]}"}