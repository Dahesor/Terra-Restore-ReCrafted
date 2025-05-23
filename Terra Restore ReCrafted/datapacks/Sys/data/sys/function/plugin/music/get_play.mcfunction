execute if score @s region matches ..0 run return fail

function sys:player/uid/get
execute unless data storage sys:data player[0].misc.music_played run data modify storage sys:data player[0].misc merge value {music_played:0}
execute store result score %music music run data get storage sys:data player[0].misc.music_played
scoreboard players add %music music 1
execute store result storage sys:data player[0].misc.music_played int 1 run scoreboard players get %music music


execute if score @s region matches 100 run return run function sys:plugin/music/loops/100
execute if score @s region matches 200 run return run function sys:plugin/music/loops/200
execute if score @s region matches 1 run function sys:plugin/music/vast_vally
execute if score @s region matches 2 run function sys:plugin/music/through_the_woods
execute if score @s region matches 3 run function sys:plugin/music/path_of_darkness
execute if score @s region matches 4 run function sys:plugin/music/redemption
execute if score @s region matches 5 run function sys:plugin/music/winter_glade
execute if score @s region matches 6 run function sys:plugin/music/ruins_of_harmony
execute if score @s region matches 7 run function sys:plugin/music/flamescale_mountain
execute if score @s region matches 8 run function sys:plugin/music/the_crystal_kingdom
execute if score @s region matches 9 run function sys:plugin/music/among_the_griffons
execute if score @s region matches 10 run function sys:plugin/music/the_bascis
execute if score @s region matches 11 run function sys:plugin/music/the_griffon_kingdom
execute if score @s region matches 12 run function sys:plugin/music/rising_sun
execute if score @s region matches 13 run function sys:plugin/music/isolating_the_variable
execute if score @s region matches 14 run function sys:plugin/music/dreams
execute if score @s region matches 15 run function sys:plugin/music/labyrinth
execute if score @s region matches 16 run function sys:plugin/music/calling
execute if score @s region matches 17 run function sys:plugin/music/the_edge
execute if score @s region matches 3000 if entity @s[tag=in_boss,tag=in_boss_wither] run function sys:plugin/music/badjuju
execute if score @s region matches 3000 if entity @s[tag=in_boss,tag=in_boss_army] run function sys:plugin/music/daring
execute if score @s region matches 3000 if entity @s[tag=in_boss,tag=in_boss_void] run function sys:plugin/music/dregs

