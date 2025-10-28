scoreboard players add #UID UID 1
scoreboard players operation @s UID = #UID UID

#初始化玩家主数据
data modify storage sys:data player append value {UID:-1,pack:[],name:"",UUID:"0-0-0-0-0",misc:{music_played:0}}
function sys:player/uid/processes/get_name
execute store result storage sys:data player[-1].UID int 1 run scoreboard players get #UID UID
function gu:generate
data modify storage sys:data player[-1].UUID set from storage gu:main out

#初始化玩家事件
data modify storage sys:data events append from storage sys:data player[-1]
data modify storage sys:data events[-1] merge value {Events:[]}
data modify storage sys:data player[-1] merge value {skill:[],ability:{off:{},right:{},shift:{}}}


scoreboard players set @s tp 0
execute positioned 0 9 0 run function sys:player/life/set_spawn
execute if score game_start data matches 1.. positioned 100 63 100 run function sys:player/life/set_spawn
execute if score game_start data matches 1.. run tp @s 100 63 100
function sys:plugin/init/playerslot/new

function sys:player/uid/processes/new_bossbar with storage sys:data player[-1]
function sys:player/uid/initial_stats