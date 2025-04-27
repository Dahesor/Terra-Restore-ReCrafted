execute if entity @s[gamemode=spectator] run return run data modify storage dah:actbar data[0].content[{id:"mp"}].text set value {text:""}

scoreboard players operation #temp calculator = @s MP
scoreboard players operation #temp calculator *= #30 calculator
scoreboard players remove #temp calculator 1
scoreboard players operation #temp calculator /= @s MAX_MP
scoreboard players add #temp calculator 1
scoreboard players operation #temp2 calculator = #temp calculator

function sys:player/bar/mp/display/exhust
function sys:player/bar/mp/display/get_number_space

function dah.actbar_mixer:z_private/uid/get
execute unless data storage dah:actbar data[0].content[{id:"mp"}] run data modify storage dah:actbar data[0].content append value {id:"mp",text:""}
data modify storage dah:actbar data[0].content[{id:"mp"}].data.bar set from storage temp bar
data modify storage dah:actbar data[0].content[{id:"mp"}].data.space set from storage temp space

execute if score @s MP >= @s MAX_MP run return run data modify storage dah:actbar data[0].content[{id:"mp"}].text set value [[{score: {name: "@s",objective: "MP"},font: "mp",color: "dark_gray"},"/",{score: {name: "@s",objective: "MAX_MP"}}],"  ",{nbt:"data[0].content[{id:'mp'}].data.bar",storage: "dah:actbar",color: "white"},"  ",{nbt:"data[0].content[{id:'mp'}].data.space",storage: "dah:actbar",font: "mp"}]

execute if score #temp2 calculator matches ..6 run return run data modify storage dah:actbar data[0].content[{id:"mp"}].text set value [[{score: {name: "@s",objective: "MP"},font: "mp",color: "red"},"/",{score: {name: "@s",objective: "MAX_MP"}}],"  ",{nbt:"data[0].content[{id:'mp'}].data.bar",storage: "dah:actbar",color: "white"},"  ",{nbt:"data[0].content[{id:'mp'}].data.space",storage: "dah:actbar",font: "mp"}]

data modify storage dah:actbar data[0].content[{id:"mp"}].text set value [[{score: {name: "@s",objective: "MP"},font: "mp"},"/",{score: {name: "@s",objective: "MAX_MP"}}],"  ",{nbt:"data[0].content[{id:'mp'}].data.bar",storage: "dah:actbar"},"  ",{nbt:"data[0].content[{id:'mp'}].data.space", storage:"dah:actbar", font:"mp"}]