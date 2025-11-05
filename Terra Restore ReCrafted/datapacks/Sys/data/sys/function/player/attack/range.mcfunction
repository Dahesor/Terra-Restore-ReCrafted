#advancement revoke @s only sys:dealt_range
say triggered range attack
function sys:player/attack/reset_params



return 0

tag @s add player_atk_temp
#execute as @e[type=#sys:mobs,distance=..8,nbt={HurtTime:10s}] run function sys:player/attack/victim/verify
function sys:player/attack/buffs/crit/check

execute as @e[type=#sys:mobs,tag=attack_target] at @s run function sys:player/attack/victim/self


tag @s remove player_atk_temp