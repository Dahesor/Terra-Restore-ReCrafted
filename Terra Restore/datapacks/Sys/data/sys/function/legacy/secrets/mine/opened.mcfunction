fill 826 59 -152 826 58 -151 air
tellraw @a[distance=..10] {"translate":"secret.4"}
execute as @a[distance=..10] at @s run playsound block.iron_door.open master @a[distance=..10] 826.04 59.46 -150.58 1 0.4 1