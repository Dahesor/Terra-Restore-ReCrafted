scoreboard players set @s music 131
stopsound @s record
playsound terra:bgm.outpost record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Outposts","TheDashDub",{translate:"music.trans.outpost",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.outpost",color:"aqua"},"\""]\
}}]