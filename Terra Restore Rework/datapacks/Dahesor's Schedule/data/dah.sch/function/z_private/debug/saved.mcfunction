tellraw @a {"text":"\n[dah.sch DEBUG] ","color":"dark_aqua","extra":[{"text":"已经计划了","color":"green"}," ",{"nbt":"stash[0].run","storage": "dah.sch:task","color": "light_purple"}," ","执行于 ",{"nbt":"stash[0].on","storage": "dah.sch:task","color": "light_purple"}," 刻。"]}

function dah.sch:z_private/debug/macro with storage dah.sch:task stash[0]
execute unless data storage dah.sch:task stash[0].by run tellraw @a ["",{"text": " - 执行者：","color": "green"},"[Server]"]

execute store result score x dah.sch.ram run data get storage dah.sch:task stash[0].position[0]
execute store result score y dah.sch.ram run data get storage dah.sch:task stash[0].position[1]
execute store result score z dah.sch.ram run data get storage dah.sch:task stash[0].position[2]

tellraw @a ["",{"text": " - 执行地点：","color": "green"},"大概位置：(",{"score": {"name": "x","objective": "dah.sch.ram"}}," ",{"score": {"name": "y","objective": "dah.sch.ram"}}," ",{"score": {"name": "z","objective": "dah.sch.ram"}},")  ",{"text":"查看详细位置","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"stash[0].position","storage": "dah.sch:task","color": "white"}}}]
tellraw @a ["",{"text": " - 执行朝向：","color": "green"},{"nbt":"stash[0].rotation","storage": "dah.sch:task","color": "yellow"}]
execute if data storage dah.sch:task stash[0].in run tellraw @a ["",{"text": " - 执行维度：","color": "green"},"[",{"nbt":"stash[0].in","storage": "dah.sch:task","color": "yellow"},"]"]
execute unless data storage dah.sch:task stash[0].in run tellraw @a ["",{"text": " - 执行维度：","color": "green"},"[主世界]"]
tellraw @a {"text":"将鼠标悬浮此处查看数据\n","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","contents": {"nbt":"stash[0]","storage": "dah.sch:task","color": "aqua"}}}