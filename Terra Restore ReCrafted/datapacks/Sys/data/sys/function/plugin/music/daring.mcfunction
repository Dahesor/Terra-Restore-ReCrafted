scoreboard players set @s music 255
stopsound @s record
playsound terra:bgm.radiarc_daring record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Daring","Radiarc",{translate:"music.trans.daring",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.daring",color:"aqua"},"\""]\
    }}]