data modify storage data text set value [{text:"}++",font:"terra:shielding",color:"white"},{text:"0"},{text:""},{text:"{"},{text:"\uF000",color:"aqua"},{text:"r"},{text:"!"},{text:"\uF010",color:"yellow"},{text:"f"},{text:"!"},{text:"\uF020",color:"red"},{text:"s"},")("]
data modify storage temp run set value {value:0}
execute store result storage temp run.value int 1 run scoreboard players get @s display.SHIELD
execute if score @s display.SHIELD matches 10..99 run data modify storage data text[2].text set value "|"
execute if score @s display.SHIELD matches 100.. run data modify storage data text[2].text set value "||"
function sys:player/trigs/cd/_insert_number with storage temp run

function sys:player/trigs/cd/actbar_exhust

function dah.actbar_mixer:z_private/uid/get
data remove storage dah:actbar data[0].content[{id:"skills_cd"}]
data modify storage dah:actbar new set value {id:"skills_cd",text:""}
data modify storage dah:actbar new.text set from storage data text
function dah.actbar_mixer:append/from