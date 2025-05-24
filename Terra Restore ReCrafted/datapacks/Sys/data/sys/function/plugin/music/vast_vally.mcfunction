scoreboard players set @s music 200
stopsound @s record
playsound terra:bgm.radiarc_vast_valley record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Vast Vally","Radiarc"],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.vast_valley",color:"aqua"},"\""]\
}}]