tag @s remove region_name
scoreboard players add @s region_name 10
execute if score @s region matches ..0 run return fail
title @a times 30 40 30
title @a title ""

execute if score @s region matches 1 run return run title @s subtitle {"translate": "area.1",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 2 run return run title @s subtitle {"translate": "area.2",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 3 run return run title @s subtitle {"translate": "area.3",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 4 run return run title @s subtitle {"translate": "area.4",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 5 run return run title @s subtitle {"translate": "area.5",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 6 run return run title @s subtitle {"translate": "area.6",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 7 run return run title @s subtitle {"translate": "area.7",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 8 run return run title @s subtitle {"translate": "area.8",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 9 run return run title @s subtitle {"translate": "area.9",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 10 run return run title @s subtitle {"translate": "area.10",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 11 run return run title @s subtitle {"translate": "area.11",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 12 run return run title @s subtitle {"translate": "area.12",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 13 run return run title @s subtitle {"translate": "area.13",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 14 run return run title @s subtitle {"translate": "area.14",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 15 run return run title @s subtitle {"translate": "area.15",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 16 run return run title @s subtitle {"translate": "area.16",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 17 run return run title @s subtitle {"translate": "area.17",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 100 run return run title @s subtitle {"translate": "area.base",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 101 run return run title @s subtitle {"translate": "area.int.1",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 102 run return run title @s subtitle {"translate": "area.int.2",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 103 run return run title @s subtitle {"translate": "area.int.3",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 104 run return run title @s subtitle {"translate": "area.int.4",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 200 run return run title @s subtitle {"translate": "area.city",color:"#510000",shadow_color:[0,0.3175f,0,1]}
execute if score @s region matches 1000 run return run title @s subtitle {"translate": "area.sea",color:"#510000",shadow_color:[0,0.3175f,0,1]}