scoreboard players set @s music 230
stopsound @s record
playsound terra:bgm.radiarc_labyrinth record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Labyrinth","Radiarc"],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.labyrinth",color:"aqua"},"\""]\
    }}]