scoreboard players set @s music 265
stopsound @s record
playsound terra:bgm.endless_skies_2 record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Endless Skies","TheDashDub",{translate:"music.trans.endless_skies",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.endless_skies",color:"aqua"},"\""]\
    }}]
