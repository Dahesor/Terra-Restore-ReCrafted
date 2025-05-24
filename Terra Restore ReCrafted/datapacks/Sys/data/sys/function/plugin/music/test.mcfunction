stopsound @s record
playsound terra:bgm.test record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Dregs of a Bitter Cup (Section)","Makkon"],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.dregs_of_a_bitter_cup",color:"aqua"},"\""]\
}}]

