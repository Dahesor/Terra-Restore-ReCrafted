scoreboard players set #temp calculator 1
execute if score @s MP matches ..9 run scoreboard players add #temp calculator 1
execute if score @s MP matches 10..99 run scoreboard players add #temp calculator 2
execute if score @s MP matches 100..999 run scoreboard players add #temp calculator 3
execute if score @s MP matches 1000..9999 run scoreboard players add #temp calculator 4
execute if score @s MP matches 10000..99999 run scoreboard players add #temp calculator 5
execute if score @s MP matches 100000..999999 run scoreboard players add #temp calculator 6
execute if score @s MAX_MP matches ..9 run scoreboard players add #temp calculator 1
execute if score @s MAX_MP matches 11..99 run scoreboard players add #temp calculator 2
execute if score @s MAX_MP matches 100..999 run scoreboard players add #temp calculator 3
execute if score @s MAX_MP matches 1000..9999 run scoreboard players add #temp calculator 4
execute if score @s MAX_MP matches 10000..99999 run scoreboard players add #temp calculator 5
execute if score @s MAX_MP matches 100000..999999 run scoreboard players add #temp calculator 6

execute if score #temp calculator matches 3 run data modify storage temp offset set value "---"
execute if score #temp calculator matches 4 run data modify storage temp offset set value "----"
execute if score #temp calculator matches 5 run data modify storage temp offset set value "-----"
execute if score #temp calculator matches 6 run data modify storage temp offset set value "------"
execute if score #temp calculator matches 7 run data modify storage temp offset set value "-------"
execute if score #temp calculator matches 8 run data modify storage temp offset set value "--------"
execute if score #temp calculator matches 9 run data modify storage temp offset set value "---------"
execute if score #temp calculator matches 10 run data modify storage temp offset set value "----------"
execute if score #temp calculator matches 11 run data modify storage temp offset set value "-----------"
execute if score #temp calculator matches 12 run data modify storage temp offset set value "------------"
execute if score #temp calculator matches 13 run data modify storage temp offset set value "-------------"


execute if score #temp calculator matches 3 run return run data modify storage temp space set value "   "
execute if score #temp calculator matches 4 run return run data modify storage temp space set value "    "
execute if score #temp calculator matches 5 run return run data modify storage temp space set value "     "
execute if score #temp calculator matches 6 run return run data modify storage temp space set value "      "
execute if score #temp calculator matches 7 run return run data modify storage temp space set value "       "
execute if score #temp calculator matches 8 run return run data modify storage temp space set value "        "
execute if score #temp calculator matches 9 run return run data modify storage temp space set value "         "
execute if score #temp calculator matches 10 run return run data modify storage temp space set value "          "
execute if score #temp calculator matches 11 run return run data modify storage temp space set value "           "
execute if score #temp calculator matches 12 run return run data modify storage temp space set value "            "
execute if score #temp calculator matches 13 run return run data modify storage temp space set value "             "