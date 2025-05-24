scoreboard players set @s music 310
stopsound @s record
playsound terra:bgm.the_crystal_kingdom record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["The Crystal Kingdom","TheDashDub"],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.the_crystal_kingdom",color:"aqua"},"\""]\
}}]