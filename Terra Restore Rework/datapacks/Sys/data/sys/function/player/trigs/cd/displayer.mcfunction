scoreboard players operation #cd1 calculator = @s maxCD.right
scoreboard players operation #cd1 calculator -= @s CD.right
scoreboard players operation #cd1 calculator *= #1000 calculator
scoreboard players operation #cd1 calculator /= @s maxCD.right
scoreboard players operation #cd1 calculator /= #10 calculator

scoreboard players operation #cd2 calculator = @s maxCD.off
scoreboard players operation #cd2 calculator -= @s CD.off
scoreboard players operation #cd2 calculator *= #1000 calculator
scoreboard players operation #cd2 calculator /= @s maxCD.off
scoreboard players operation #cd2 calculator /= #10 calculator

scoreboard players operation #cd3 calculator = @s maxCD.shift
scoreboard players operation #cd3 calculator -= @s CD.shift
scoreboard players operation #cd3 calculator *= #1000 calculator
scoreboard players operation #cd3 calculator /= @s maxCD.shift
scoreboard players operation #cd3 calculator /= #10 calculator

item modify entity @s weapon.offhand sys:util/offhand_cd
execute unless entity @s[tag=shielder] run return 2

data modify storage data text set value [{text:"}++",font:"terra:shielding",color:"white"},{text:"0"},{text:""},{text:"~?? ]"}]
data modify storage temp run set value {value:0}
execute store result storage temp run.value int 1 run scoreboard players get @s display.SHIELD
execute if score @s display.SHIELD matches 10..99 run data modify storage data text[2].text set value "|"
execute if score @s display.SHIELD matches 100.. run data modify storage data text[2].text set value "||"
function sys:player/trigs/cd/_insert_number with storage temp run

function dah.actbar_mixer:z_private/uid/get
data remove storage dah:actbar data[0].content[{id:"skills_cd"}]
data modify storage dah:actbar new set value {id:"skills_cd",text:""}
data modify storage dah:actbar new.text set from storage data text
function dah.actbar_mixer:append/from