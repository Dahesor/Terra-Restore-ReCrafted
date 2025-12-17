function dah.actbar_mixer:z_private/uid/get
return fail
#[!]
execute if entity @s[gamemode=spectator] run return run data modify storage dah:actbar data[0].content[{id:"mp"}].text set value {text:""}

scoreboard players operation #temp calculator = @s MP
scoreboard players operation #temp calculator *= #30 calculator
scoreboard players remove #temp calculator 1
scoreboard players operation #temp calculator /= @s MAX_MP
scoreboard players add #temp calculator 1
scoreboard players operation #temp2 calculator = #temp calculator

function sys:player/bar/mp/display/exhust
function sys:player/bar/mp/display/get_number_space


data modify storage data text set value [{text:"",font: "mp",color: "white",shadow_color:0},{score: {name: "@s",objective: "MP"}},"/",{score: {name: "@s",objective: "MAX_MP"}}," ",{text:""}," ",{text:""},{text:""}]

data modify storage data text[0].text set from storage temp offset
data modify storage data text[5].text set from storage temp bar
data modify storage data text[7].text set from storage temp space
data modify storage data text[8].text set from storage temp offset
execute if score @s MP >= @s MAX_MP run data modify storage data text[0].color set value "gray"
execute if score #temp2 calculator matches ..6 run data modify storage data text[0].color set value "red"

data modify storage dah:actbar data[0].content[{id:"mp"}].text set from storage data text