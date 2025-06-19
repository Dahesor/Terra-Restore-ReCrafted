scoreboard players set @s music 226
stopsound @s record
playsound terra:bgm.some_time_to_think record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Some Time to Think","Makkon",{translate:"music.trans.some_time_to_think",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.some_time_to_think",color:"aqua"},"\""]\
}}]