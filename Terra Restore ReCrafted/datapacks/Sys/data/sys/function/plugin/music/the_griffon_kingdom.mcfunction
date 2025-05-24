scoreboard players set @s music 324
stopsound @s record
playsound terra:bgm.radiarc_the_griffon_kingdom record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["The Griffon Kingdom","TheDashDub"],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.the_griffon_kingdom",color:"aqua"},"\""]\
}}]