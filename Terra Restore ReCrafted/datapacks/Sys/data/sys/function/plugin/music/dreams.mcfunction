scoreboard players set @s music 254
stopsound @s record
playsound terra:bgm.dreams record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Dreams","TheDashDub"],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.dreams",color:"aqua"},"\""]\
    }}]