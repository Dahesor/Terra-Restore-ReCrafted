schedule function sys:legacy/opening/acts/check_make_concreate 2t
execute as @e[type=zombie,tag=opening] run data modify entity @s Motion[0] set value 0.15d
execute as @e[type=zombie,tag=opening] at @s unless block ~ ~-0.5 ~ red_concrete run fill ~ 45 308 ~ 47 291 red_concrete replace grass_block
execute as @e[type=zombie,tag=opening] at @s run particle block{block_state:{Name:"netherrack"}} ~ ~0.2 ~ 0.25 0.25 0.25 0.5 15 normal @a