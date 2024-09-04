effect give @a[tag=in_boss_void] slowness 10 0 false
function sys:core/events/boss_void/moves/smash/break
playsound entity.zombie.break_wooden_door master @a[tag=in_boss_void] ~ ~ ~ 1 0.7 1
execute as @a[tag=in_boss_void,gamemode=!spectator,distance=..5] run function sys:core/events/boss_void/moves/smash/damage