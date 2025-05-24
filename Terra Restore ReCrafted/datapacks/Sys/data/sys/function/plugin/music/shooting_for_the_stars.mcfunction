scoreboard players set @s music 172
stopsound @s record
playsound terra:bgm.shooting_for_the_stars record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Shooting For the Stars","TheDashDub"],hover_event:{action:"show_text",value:\
    [{text:"\"",color:"white"},{translate:"music.shooting_for_the_stars",color:"aqua"},"\""]\
}}]