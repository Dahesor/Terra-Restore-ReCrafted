scoreboard players set @s music 230
stopsound @s record
playsound terra:bgm.radiarc_the_basics record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["The Basics","Radiarc",{translate:"music.trans.the_basics",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.the_basics",color:"aqua"},"\""]\
}}]