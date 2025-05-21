
execute unless data block ~ ~ ~ {RequiredPlayerRange:7s} run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.3 100 force @a

#return 0
data modify block ~ ~ ~ RequiredPlayerRange set value 7s

#execute store result score #temp calculator run random value 1..10
data modify block ~ ~ ~ SpawnData.entity set value {id:"splash_potion",Item:{id:"splash_potion",count:1,components:{potion_contents:{custom_color:3289754,custom_effects:[{id:"slowness",amplifier:2b,duration:100,show_particles:1b,show_icon:1b},{id:"blindness",amplifier:2b,duration:100,show_particles:1b,show_icon:1b}]}}}}
#execute unless score #temp calculator matches 1..8 run data modify block ~ ~ ~ SpawnData.entity set value {id:"potion",Item:{id:"lingering_potion",count:1,components:{potion_contents:{custom_color:3289754,custom_effects:[{id:"slowness",amplifier:2b,duration:100,show_particles:1b,show_icon:1b}]}}}}

#data modify block ~ ~ ~ SpawnData.entity.HandItems.components."minecraft:custom_data".setPos set from block ~ ~ ~ SpawnData.entity.Pos
#data modify block ~ ~ ~ SpawnData.entity merge value {Silent:1b,active_effects:[{id:'invisibility',show_particles:0b,ambient:0b,duration:999999999,show_icon:0b}]}
#data modify block ~ ~ ~ SpawnData.entity.Tags append value "changed_pos_potion"
#data modify block ~ ~ ~ SpawnData.entity.Tags append value "changed_pos"
#data modify block ~ ~ ~ Delay set value 20s
#data remove block ~ ~ ~ SpawnData.entity.Pos
#data remove block ~ ~ ~ SpawnData.entity.UUID
#data modify block ~ ~ ~ SpawnData.custom_spawn_rules set value {sky_light_limit:{max_inclusive:7,min_inclusive:0},block_light_limit:{max_inclusive:7,min_inclusive:0}}