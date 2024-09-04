particle wax_off ~ ~ ~ 0.2 0.2 0.2 0.1 20
#data modify block ~ ~ ~ MinSpawnDelay set value 100s
#data modify block ~ ~ ~ MaxSpawnDelay set value 130s
#data modify block ~ ~ ~ SpawnData.custom_spawn_rules set value {sky_light_limit:{max_inclusive:15,min_inclusive:0},block_light_limit:{max_inclusive:9,min_inclusive:0}}
data remove block ~ ~ ~ SpawnData.entity.UUID
#data modify block ~ ~ ~ SpawnRange set value 4s
#data modify block ~ ~ ~ Delay set value 30s
#data modify block ~ ~ ~ SpawnData.entity.Tags set value ["quater_ticking","flamming_soul"]
#data modify block ~ ~ ~ SpawnData.entity.DeathLootTable set value "sys:mob_drops/burning_spirit"
#data modify block ~ ~ ~ SpawnData.entity.ArmorItems[3] set value {}
#execute if data block ~ ~ ~ SpawnData.entity{id:"minecraft:potion"} run function sys:dev/pos_work_2
#data modify block ~ ~ ~ SpawnData.entity merge value {HandDropChances:[0f,0f],DeathLootTable:"empty",Tags:["boss_army_kill"],ArmorDropChances:[0f,0f,0f,0f]}
#data modify block ~ ~ ~ RequiredPlayerRange set value 12s
#execute if data block ~ ~ ~ SpawnData.entity.Pos run function sys:dev/pos_work
#execute if data block ~ ~ ~ SpawnData.entity{id:"minecraft:potion"} run function sys:dev/pos_work_2
data modify storage terra:spawn er set value [{weight:100,data:{}}]
data modify storage terra:spawn er[0].data set from block ~ ~ ~ SpawnData
data modify block ~ ~ ~ SpawnPotentials set from storage terra:spawn er

return 1
tag @s add changed_pos
tag @s add changed_pos_potion
tag @s add tp_2

