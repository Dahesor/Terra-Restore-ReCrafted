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

data modify storage data text set value [{score: {name: "@s",objective: "MP"},font: "mp",color: "white",shadow_color:[0f,1f,1f,1f]},"/",{score: {name: "@s",objective: "MAX_MP"}},"  ",{text:"data[0].content[{id:'mp'}].data.bar",color: "white"},"  ",{nbt:"data[0].content[{id:'mp'}].data.space",storage: "dah:actbar",font: "mp"}]

data modify storage data text[4].text set from storage temp bar
data modify storage data text[6].text set from storage temp space
execute if score @s MP >= @s MAX_MP run data modify storage data text[0].color set value "dark_gray"
execute if score #temp2 calculator matches ..6 run data modify storage data text[0].color set value "red"

data modify storage dah:actbar data[0].content[{id:"mp"}].text set from storage data text