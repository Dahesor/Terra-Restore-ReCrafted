scoreboard players set @s music 265
stopsound @s record
playsound terra:bgm.endless_skies_2 record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Endless Skies","TheDashDub"]}]