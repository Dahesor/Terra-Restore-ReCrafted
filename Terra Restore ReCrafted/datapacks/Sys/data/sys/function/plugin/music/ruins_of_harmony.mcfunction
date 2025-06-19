scoreboard players set @s music 330
stopsound @s record
playsound terra:bgm.ruins_of_harmony record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Ruins of Harmony","Radiarc",{translate:"music.trans.ruins_of_harmony",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.ruins_of_harmony",color:"aqua"},"\""]\
}}]