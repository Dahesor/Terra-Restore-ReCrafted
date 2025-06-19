scoreboard players set @s music 220
stopsound @s record
playsound terra:bgm.rising_sun record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Rising Sum","TheDashDub",{translate:"music.trans.rising_sun",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.rising_sun",color:"aqua"},"\""]\
}}]