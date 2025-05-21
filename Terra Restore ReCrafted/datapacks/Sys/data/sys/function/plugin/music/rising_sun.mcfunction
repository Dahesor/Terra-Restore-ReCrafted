scoreboard players set @s music 220
stopsound @s record
playsound terra:bgm.rising_sun record @s ~ ~ ~ 1 1 1
tellraw @s [{"translate": "music.playing","color": "green","with": ["Rising Sum","TheDashDub"]}]