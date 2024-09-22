scoreboard players set @s music 230
stopsound @s record
playsound terra:bgm.radiarc_labyrinth record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Lucid Dreams","Tim Kulig"]}]