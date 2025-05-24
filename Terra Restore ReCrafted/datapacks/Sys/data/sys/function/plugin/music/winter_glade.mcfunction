scoreboard players set @s music 198
stopsound @s record
playsound terra:bgm.winterglade record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Winterglade","Makkon"],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.winter_glade",color:"aqua"},"\""]\
}}]