scoreboard players set @s music 225
stopsound @s record
playsound terra:bgm.radiarc_among_the_griffons record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Among The Griffons","Radiarc",{translate:"music.trans.among_the_griffons",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.among_the_griffons",color:"aqua"},"\""]\
    }}]