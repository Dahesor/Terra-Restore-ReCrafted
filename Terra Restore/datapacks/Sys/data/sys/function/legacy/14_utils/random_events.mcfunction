scoreboard players add 14_random_events data 1 
execute unless score 14_random_events data matches 3.. run return fail

scoreboard players set 14_random_events data 0
execute store result score #temp calculator run random value 1..28
execute unless score #temp calculator matches 1..8 run return fail


execute if score #temp calculator matches 1 at @r[distance=..150] run return run summon lightning_bolt ~3 ~ ~3
execute if score #temp calculator matches 3 at @r[distance=..150] run return run summon lightning_bolt ~3 ~ ~-3
execute if score #temp calculator matches 4 at @r[distance=..150] run return run summon lightning_bolt ~-3 ~ ~-3
execute if score #temp calculator matches 5 at @r[distance=..150] run return run summon lightning_bolt ~-3 ~ ~3
execute if score #temp calculator matches 6 at @r[distance=..150] run summon creeper ~3 ~-6 ~ {CustomName:'{"translate":"mob.cloud_creeper","color": "dark_purple"}',CustomNameVisible:1b,Tags:["14_cloud_creeper"]}
execute if score #temp calculator matches 7 at @r[distance=..150] run summon creeper ~-6 ~3 ~ {CustomName:'{"translate":"mob.cloud_creeper","color": "dark_purple"}',CustomNameVisible:1b,Tags:["14_cloud_creeper"]}
execute if score #temp calculator matches 8 at @r[distance=..150] run summon creeper ~3 ~6 ~ {CustomName:'{"translate":"mob.cloud_creeper","color": "dark_purple"}',CustomNameVisible:1b,Tags:["14_cloud_creeper"]}
execute if score #temp calculator matches 2 at @r[distance=..150] run summon creeper ~6 ~3 ~ {CustomName:'{"translate":"mob.cloud_creeper","color": "dark_purple"}',CustomNameVisible:1b,Tags:["14_cloud_creeper"]}
execute at @e[type=creeper,tag=14_cloud_creeper,tag=!resolved_mob] run playsound entity.creeper.primed master @a[distance=..150] ~ ~ ~ 1 1 1