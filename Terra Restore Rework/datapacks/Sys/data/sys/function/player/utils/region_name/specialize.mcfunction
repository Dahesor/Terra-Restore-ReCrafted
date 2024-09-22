tag @s remove region_name
scoreboard players add @s region_name 10
execute if score @s region matches ..0 run return fail
title @a times 30 40 30
title @a title ""

execute if score @s region matches 1 run return run title @s subtitle {"translate": "area.1"}
execute if score @s region matches 2 run return run title @s subtitle {"translate": "area.2"}
execute if score @s region matches 3 run return run title @s subtitle {"translate": "area.3"}
execute if score @s region matches 4 run return run title @s subtitle {"translate": "area.4"}
execute if score @s region matches 5 run return run title @s subtitle {"translate": "area.5"}
execute if score @s region matches 6 run return run title @s subtitle {"translate": "area.6"}
execute if score @s region matches 7 run return run title @s subtitle {"translate": "area.7"}
execute if score @s region matches 8 run return run title @s subtitle {"translate": "area.8"}
execute if score @s region matches 9 run return run title @s subtitle {"translate": "area.9"}
execute if score @s region matches 10 run return run title @s subtitle {"translate": "area.10"}
execute if score @s region matches 11 run return run title @s subtitle {"translate": "area.11"}
execute if score @s region matches 12 run return run title @s subtitle {"translate": "area.12"}
execute if score @s region matches 13 run return run title @s subtitle {"translate": "area.13"}
execute if score @s region matches 14 run return run title @s subtitle {"translate": "area.14"}
execute if score @s region matches 15 run return run title @s subtitle {"translate": "area.15"}
execute if score @s region matches 16 run return run title @s subtitle {"translate": "area.16"}
execute if score @s region matches 17 run return run title @s subtitle {"translate": "area.17"}
execute if score @s region matches 100 run return run title @s subtitle {"translate": "area.base"}
execute if score @s region matches 101 run return run title @s subtitle {"translate": "area.int.1"}
execute if score @s region matches 102 run return run title @s subtitle {"translate": "area.int.2"}
execute if score @s region matches 103 run return run title @s subtitle {"translate": "area.int.3"}
execute if score @s region matches 104 run return run title @s subtitle {"translate": "area.int.4"}
execute if score @s region matches 200 run return run title @s subtitle {"translate": "area.city"}
execute if score @s region matches 1000 run return run title @s subtitle {"translate": "area.sea"}