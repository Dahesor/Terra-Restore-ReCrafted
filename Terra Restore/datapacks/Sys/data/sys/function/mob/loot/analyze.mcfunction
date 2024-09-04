execute if score #region calculator matches 8.. run function sys:mob/loot/8plus/exe
execute if score @s dropTemp matches 7 if items entity @s armor.head red_dye run function sys:mob/loot/do/air_helmet
execute if score @s dropTemp matches 6 if items entity @s armor.head cyan_dye run function sys:mob/loot/do/air_helmet
execute if score @s dropTemp matches 5 if items entity @s armor.head leather_helmet run tag @s add essence_mob
execute if score @s dropTemp matches 4 if items entity @s armor.feet blaze_powder run function sys:mob/loot/do/4_sun_undead