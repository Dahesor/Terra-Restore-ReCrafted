data modify entity @s equipment.mainhand set value {id:"netherite_sword",count:1,components:{enchantments:{knockback:1}}}
data modify entity @s Motion set value [0.0d,0.5d,1d]

execute facing entity @r[distance=..30,gamemode=!spectator] eyes positioned ^ ^ ^3 positioned ~ ~0.3 ~ run function dtm:calculate_motion
particle enchant ~ ~ ~ 0 0 0 1 80 force
particle enchant ~ ~ ~ 0 0 0 1 500 normal
playsound item.crossbow.loading_end master @a ~ ~ ~ 1 0.7
playsound item.crossbow.loading_end master @a ~ ~ ~ 1 0.7
playsound item.crossbow.loading_end master @a ~ ~ ~ 1 0.7