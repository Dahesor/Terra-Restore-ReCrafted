execute as @a[tag=in_boss_void,limit=3] run summon zombie 3025 28 -1827 {attributes:[{id:"generic.max_health",base:45d},{id:"generic.movement_speed",base:0.265d},{id:"generic.attack_damage",base:4}],Health:45f,DeathLootTable:"empty",Tags:["resolved_mob","boss_void_kill"],HandDropChances:[0f,0f],HandItems:[{id:"netherite_sword",count:1},{}]}
execute as @a[tag=in_boss_void,limit=3] run summon zombie 3025 28 -179 {attributes:[{id:"generic.max_health",base:45d},{id:"generic.movement_speed",base:0.265d},{id:"generic.attack_damage",base:4}],Health:45f,DeathLootTable:"empty",Tags:["resolved_mob","boss_void_kill"],HandDropChances:[0f,0f],HandItems:[{id:"netherite_sword",count:1},{}]}

tellraw @a[tag=in_boss_void] [{"text":"[","extra":[{"translate":"boss.void.name","color":"red"},"]"]}," ",{"translate": "boss.void.line.3"}]