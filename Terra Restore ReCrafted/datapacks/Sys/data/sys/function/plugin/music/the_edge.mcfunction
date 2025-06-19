scoreboard players set @s music 330
stopsound @s record
playsound terra:bgm.radiarc_the_edge record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["The Edge","Radiarc",{translate:"music.trans.the_edge",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.the_edge",color:"aqua"},"\""]\
}}]