scoreboard players set @s music 180
stopsound @s record
playsound terra:bgm.radiarc_through_the_woods record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Through The Woods","Radiarc",{translate:"music.trans.through_the_woods",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.through_the_woods",color:"aqua"},"\""]\
}}]