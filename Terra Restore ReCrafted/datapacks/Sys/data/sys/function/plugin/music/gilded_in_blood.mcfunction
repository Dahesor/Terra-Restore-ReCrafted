scoreboard players set @s music 349
stopsound @s record
playsound terra:bgm.radiarc_gilded_in_blood record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Gilded In Blood","Radiarc"],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.gilded_in_blood",color:"aqua"},"\""]\
    }}]