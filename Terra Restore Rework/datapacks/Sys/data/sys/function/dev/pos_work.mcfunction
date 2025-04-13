#execute unless data block ~ ~ ~ SpawnData.entity.HandItems run data modify block ~ ~ ~ SpawnData.entity.HandItems set value [{id:"dirt",count:1,components:{}},{}]

#setblock ~ ~ ~ air replace
#setblock ~ ~ ~ spawner{Delay:100s,MaxNearbyEntities:6s,RequiredPlayerRange:16s,SpawnCount:1s,MaxSpawnDelay:380s,MinSpawnDelay:200s,SpawnRange:4s,#SpawnData:{entity:{id:"zombie"},custom_spawn_rules:{block_light_limit:{min_inclusive:0,max_inclusive:7},sky_light_limit:{min_inclusive:0,#max_inclusive:15}}},id:"mob_spawner",SpawnPotentials:[]}
particle cloud ~ ~ ~ 0.5 0.5 0.5 0.3 100 force @a

return 0

data modify block ~ ~ ~ SpawnData.entity merge value {id:"zombie"}
data modify block ~ ~ ~ RequiredPlayerRange set value 7s

execute store result score #temp calculator run random value 1..10
execute if score #temp calculator matches 1..7 run data modify block ~ ~ ~ SpawnData.entity set value {ArmorItems:[{id:"leather_boots",count:1,components:{dyed_color:13750783}},{id:"leather_leggings",count:1,components:{dyed_color:13750783}},{id:"leather_chestplate",count:1,components:{dyed_color:13750783}},{id:"leather_helmet",count:1,components:{dyed_color:13750783}}],ArmorDropChances:[0d,0d,0d,0d],HandItems:[{id:"wooden_sword",count:1},{}],HandDropChances:[0d,0d],Passengers:[{id:"potion",Item:{id:"splash_potion",count:1,components:{potion_contents:{custom_color:3289754,custom_effects:[{id:"slowness",amplifier:2b,duration:100,show_particles:1b,show_icon:1b}]}}}}],Tags:["5_freeze_zombie"],id:"zombie"}
execute unless score #temp calculator matches 1..7 run data modify block ~ ~ ~ SpawnData.entity set value {ArmorItems:[{id:"leather_boots",count:1,components:{dyed_color:13750783}},{id:"leather_leggings",count:1,components:{dyed_color:13750783}},{id:"leather_chestplate",count:1,components:{dyed_color:13750783}},{id:"leather_helmet",count:1,components:{dyed_color:13750783}}],ArmorDropChances:[0d,0d,0d,0d],HandItems:[{id:"wooden_sword",count:1},{}],HandDropChances:[0d,0d],Passengers:[{id:"potion",Item:{id:"lingering_potion",count:1,components:{potion_contents:{custom_color:3289754,custom_effects:[{id:"slowness",amplifier:2b,duration:100,show_particles:1b,show_icon:1b}]}}}}],Tags:["5_freeze_zombie"],id:"zombie"}

#data modify block ~ ~ ~ SpawnData.entity.HandItems.components."minecraft:custom_data".setPos set from block ~ ~ ~ SpawnData.entity.Pos
#data modify block ~ ~ ~ SpawnData.entity merge value {Silent:1b,active_effects:[{id:'invisibility',show_particles:0b,ambient:0b,duration:999999999,show_icon:0b}]}
#data modify block ~ ~ ~ SpawnData.entity.Tags append value "changed_pos_potion"
#data modify block ~ ~ ~ SpawnData.entity.Tags append value "changed_pos"
data modify block ~ ~ ~ Delay set value 20s
data remove block ~ ~ ~ SpawnData.entity.Pos
data remove block ~ ~ ~ SpawnData.entity.UUID
#data modify block ~ ~ ~ SpawnData.custom_spawn_rules set value {sky_light_limit:{max_inclusive:7,min_inclusive:0},block_light_limit:{max_inclusive:7,min_inclusive:0}}