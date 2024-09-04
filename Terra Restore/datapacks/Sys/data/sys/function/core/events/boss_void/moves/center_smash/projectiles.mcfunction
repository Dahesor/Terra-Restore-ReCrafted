execute as @a[tag=in_boss_void,limit=3] run summon tnt ~ ~ ~ {fuse:100s,Tags:["boss_void_kill"]}
execute as @e[type=tnt,tag=boss_void_kill] at @s run function sys:core/events/boss_void/moves/center_smash/tnt_modify

summon arrow ~2 ~ ~ {Motion:[0.6d,-4d,0.3d],Tags:["boss_void_kill"]}
summon arrow ~-2 ~ ~ {Motion:[-0.6d,-4d,0.3d],Tags:["boss_void_kill"]}
summon arrow ~ ~ ~2 {Motion:[0.6d,-4d,-0.3d],Tags:["boss_void_kill"]}
summon arrow ~ ~ ~-2 {Motion:[-0.6d,-4d,-0.3d],Tags:["boss_void_kill"]}
summon arrow ~2 ~ ~ {Motion:[1d,-4d,-1d],Tags:["boss_void_kill"]}
summon arrow ~-2 ~ ~ {Motion:[-1d,-4d,-1d],Tags:["boss_void_kill"]}
summon arrow ~ ~ ~2 {Motion:[1d,-4d,1d],Tags:["boss_void_kill"]}
summon arrow ~ ~ ~-2 {Motion:[-1d,-4d,1d],Tags:["boss_void_kill"]}
summon arrow ~2 ~ ~ {Motion:[0d,-4d,-1d],Tags:["boss_void_kill"]}
summon arrow ~-2 ~ ~ {Motion:[0d,-4d,1d],Tags:["boss_void_kill"]}
summon arrow ~ ~ ~2 {Motion:[1d,-4d,0d],Tags:["boss_void_kill"]}
summon arrow ~ ~ ~-2 {Motion:[-1d,-4d,0d],Tags:["boss_void_kill"]}
summon arrow ~-2 ~ ~ {Motion:[0.6d,-4d,0.6d],Tags:["boss_void_kill"]}