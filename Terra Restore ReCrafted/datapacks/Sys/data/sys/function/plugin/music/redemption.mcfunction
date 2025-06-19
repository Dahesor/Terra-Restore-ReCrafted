scoreboard players set @s music 214
stopsound @s record
playsound terra:bgm.redemption record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Redemption","TheDashDub",{translate:"music.trans.redemption",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.redemption",color:"aqua"},"\""]\
}}]