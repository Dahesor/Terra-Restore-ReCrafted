scoreboard players set @s music 312
stopsound @s record
playsound terra:bgm.radiarc_chaos_arranged record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Chaos Arranged","Radiarc"],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.chaos_arranged",color:"aqua"},"\""]\
    }}]