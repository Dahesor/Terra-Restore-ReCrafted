scoreboard players set @s music 146
stopsound @s record
playsound terra:bgm.pigstep_stereo record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Pigstep","Lena Raine"]}]
