scoreboard players set @s music 225
stopsound @s record
playsound terra:bgm.radiarc_among_the_griffons record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Among The Griffons","Radiarc"]}]