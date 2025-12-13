#所在区域检查
execute store result score #new region run function sys:player/get_region
execute unless score #new region = @s region run function sys:player/utils/region_name/count_down
scoreboard players operation @s region = #new region

#Legacy玩家检测
execute unless score 11_becon data matches 4.. if entity @s[scores={region=11},gamemode=!spectator,gamemode=!creative] if entity @s[x=2548,y=112,z=-1012,dx=92,dy=73,dz=92] run function sys:legacy/11_utils/player_damage
execute if entity @s[scores={region=13}] run function sys:legacy/13_utils/checker
execute if entity @s[scores={region=14}] run function sys:legacy/14_utils/tp/checker
execute if entity @s[scores={region=15}] run function sys:legacy/15_utils/tp_checker
execute if entity @s[scores={region=17}] run function sys:legacy/16_utils/apply_debuff
execute unless score 11_opening data matches 1.. if entity @s[scores={region=11}] if entity @s[x=2224,y=85,z=-1151,dx=43,dy=15,dz=37] run function sys:core/events/great_wall_opening/trigger

#UI完整性检查
execute unless score @s ui matches 1.. unless items entity @s inventory.0 player_head[custom_data~{ui:{head:1b}}] unless entity @s[tag=__shulker] run function sys:player/ui/foolproof/fill_head
execute unless score @s ui matches 1.. run clear @s barrier[custom_data={ui_check:1b}]

#副手物品检查
execute store result score @s calculator run clear @s #sys:offhand_trigger[custom_data~{trigger:1b}] 0
execute unless score @s calculator matches 1 run function sys:player/trigs/fool/put_on

#音乐，跳字，展示CD
scoreboard players remove @s music 1
execute if score @s music matches ..-10 run function sys:plugin/music/get_play
scoreboard players remove @s region_name 1
execute if entity @s[tag=region_name,scores={region_name=0}] run function sys:player/utils/region_name/specialize
execute if score @s tp matches 0 run scoreboard players enable @s tp
execute if score @s showcaseCD matches 1.. run scoreboard players remove @s showcaseCD 1
execute if score @s mentionCD matches 1.. run scoreboard players remove @s mentionCD 1

#是否在基地
execute if score @s region matches 100 run function sys:player/utils/in_base

#系统更新
execute unless score @s version >= %sys version run function sys:player/updates/2/main

#更新最大生命值
function sys:player/bar/hp/redraw
function sys:player/bar/hp/redraw_absorb

#蓝量回复
function sys:player/bar/mp/regen

#清除伤害吸收
#effect clear @s absorption

#发光
execute if score $player data matches 2.. run effect give @s glowing 2 0 true

#允许向服务器发送图鉴请求
scoreboard players enable @s menu.archive
scoreboard players enable @s entry.archive