#检测玩家数量
scoreboard players add $player data 1

#重置横扫计数器
scoreboard players set @s sweep_counter 0
scoreboard players set @s sweep_recorder 0

#死亡检查
execute if score @s death matches 1.. run function sys:player/life/domains/check

#重置属性检查
tag @s remove StatsChanged

#更新闪避种子
function sys:player/utils/dodge/random

#背包UI
function sys:player/ui/self

#技能触发
function sys:player/trigs/self

#攻速检查
function sys:player/attack/ticker

#物品鉴定
execute if items entity @s[tag=!stop_att] player.cursor #sys:may_att[!custom_data~{att_lock:1b}] run function sys:att/apply/new

#每秒更新内容
execute if score #loop_20 calculator matches 4 run function sys:player/second

#开发者
execute if score @s warped_stick matches 1.. run function sys:dev/mark_cb

#离开游戏
execute if score @s leave_game matches 1.. run function sys:player/life/left_game

#Legacy玩家检测
execute if score @s region matches 6 run function sys:legacy/misc/uhc_foodcheck

#TP检查
execute unless score @s tp matches 0 if score @s[tag=!tper] UID matches 1.. run function sys:player/utils/tp/sender/check_valid
execute if score @s tp_cd matches 1.. run function sys:player/utils/tp/sender/ticker

#存储生命值
tag @s add HP.overhalf
execute store result score @s HP.dry run data get entity @s Health 100
scoreboard players operation #hp calculator = @s HP.dry
scoreboard players operation #hp calculator *= #2 calculator
execute if score #hp calculator < @s hp_cache run tag @s remove HP.overhalf
execute if score #loop_2 calculator matches 1 run function sys:player/stats/display/check_health

#DEV
execute if entity @s[nbt={SelectedItem:{id:"minecraft:structure_void"}}] positioned ~ ~1 ~ run function sys:dev/spread_find