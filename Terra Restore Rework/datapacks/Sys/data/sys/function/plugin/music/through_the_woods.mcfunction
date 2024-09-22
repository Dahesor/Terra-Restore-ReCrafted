scoreboard players set @s music 180
stopsound @s record
playsound terra:bgm.radiarc_through_the_woods record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Through The Woods","Radiarc"]}]