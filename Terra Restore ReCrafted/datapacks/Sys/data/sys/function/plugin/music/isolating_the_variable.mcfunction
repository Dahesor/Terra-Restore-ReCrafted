scoreboard players set @s music 285
stopsound @s record
playsound terra:bgm.isolating_the_variable record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Isolating the Variable","Radiarc",{translate:"music.trans.isolating_the_variable",color:"gray"}],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.isolating_the_variable",color:"aqua"},"\""]\
    }}]