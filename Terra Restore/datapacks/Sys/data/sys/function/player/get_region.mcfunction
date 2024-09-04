scoreboard players set #x calculator 0
scoreboard players set #y calculator 0
scoreboard players set #z calculator 0
execute store result score #x calculator run data get entity @s Pos[0]
execute store result score #y calculator run data get entity @s Pos[1]
execute store result score #z calculator run data get entity @s Pos[2]

execute at @s if biome ~ ~ ~ sys:boss run return 3000
execute at @s if biome ~ ~ ~ sys:boss_void run return 3000

#忘却之地
execute if score #x calculator matches -44..24 if score #z calculator matches -132..-55 run return 100
execute if score #x calculator matches 778..1188 if score #z calculator matches -73..446 run return 100
execute if score #x calculator matches 1218..1721 if score #z calculator matches -275..391 run return 100
#大厅
execute if score #x calculator matches -58..60 if score #z calculator matches -65..56 run return 0
#启程之谷
execute if score #x calculator matches 72..434 if score #z calculator matches 41..225 run return 1
#一号路口
execute if score #x calculator matches 435..779 if score #z calculator matches 62..197 run return 101
#追忆神木
execute if score #x calculator matches 586..767 if score #z calculator matches 198..472 run return 2
#卡欧矿洞
execute if score #x calculator matches 569..880 if score #z calculator matches -370..-112 run return 3
execute if score #x calculator matches 569..785 if score #z calculator matches -370..61 run return 3
#不详山坡
execute if score #x calculator matches 575..934 if score #z calculator matches -1002..-371 run return 4
#二号路口
execute if score #x calculator matches 634..927 if score #z calculator matches -1244..-1003 run return 102
#冰封之塔
execute if score #x calculator matches 290..633 if score #z calculator matches -1362..-1003 run return 5
execute if score #x calculator matches 290..600 if score #z calculator matches -1362..-946 run return 5
#水蚀洞窟
execute if score #x calculator matches 523..985 if score #z calculator matches -2062..-1418 run return 6
#纳鲁火山
execute if score #x calculator matches 1182..1432 if score #z calculator matches -1160..-862 run return 7
#倪拉顿下水道
execute if score #x calculator matches 1903..2010 if score #y calculator matches 29..37 if score #z calculator matches -1308..-1087 run return 8
execute if score #x calculator matches 1949..2010 if score #y calculator matches 37..58 if score #z calculator matches -1307..-1087 run return 8
execute if score #x calculator matches 1972..2010 if score #y calculator matches 58..70 if score #z calculator matches -1307..-1097 run return 8
#宏伟长城
execute if score #x calculator matches 2123..2173 if score #z calculator matches -1197..-979 run return 9
execute if score #x calculator matches 2046..2065 if score #z calculator matches -1029..-1005 run return 9
execute if score #x calculator matches 1959..2173 if score #y calculator matches 67.. if score #z calculator matches -1065..-979 run return 9
#倪拉顿洞窟
execute if score #x calculator matches 1853..2162 if score #z calculator matches -1458..-1294 run return 10
execute if score #x calculator matches 2073..2151 if score #z calculator matches -1290..-1197 run return 10
#前线
execute if score #x calculator matches 2151..2695 if score #z calculator matches -1516..-767 run return 11
#凯旋之路
execute if score #x calculator matches 2695..2948 if score #z calculator matches -1086..-718 run return 12
execute if score #x calculator matches 2898..3017 if score #y calculator matches 136.. if score #z calculator matches -1140..-818 run return 12
#三号路口
execute if score #x calculator matches 3010..3131 if score #z calculator matches -1045..-854 run return 103
#艾科丝实验室
execute if score #x calculator matches 2927..3300 if score #z calculator matches -1300..-1022 run return 13
#陵墓
execute if score #x calculator matches 2948..3162 if score #z calculator matches -854..56 run return 15
#云海大道
execute if score #x calculator matches 3127..3922 if score #z calculator matches -1048..-245 run return 14
#干草牧场
execute if score #x calculator matches 2993..3288 if score #z calculator matches 56..532 run return 104
#菲瑞爾山
execute if score #x calculator matches 3000..3400 if score #z calculator matches 730..1300 run return 17
#菲瑞爾山
execute if score #x calculator matches 3000..3400 if score #z calculator matches 532..1300 run return 16
#倪拉顿
execute if score #x calculator matches 1819..2160 if score #z calculator matches -1345..-915 run return 200
#日月海
execute if score #x calculator matches 928..2176 if score #z calculator matches -1350..-683 run return 1000








return -1