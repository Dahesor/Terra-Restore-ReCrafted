tellraw @a {"text":"\n[dah.sch DEBUG] ","color":"dark_aqua","extra":[{"text":"已经计划了","color":"green"}," ",{"nbt":"this.run","storage": "dah.sch:task","color": "light_purple"}," ","执行于 ",{"nbt":"this.on","storage": "dah.sch:task","color": "light_purple"}," 刻或玩家时间。"]}

function dah.sch:z_private/debug/for_player/macro with storage dah.sch:task this
execute unless data storage dah.sch:task this.by run tellraw @a ["",{"text": " - 执行者：","color": "green"},"[Server]"]

execute store result score x dah.sch.ram run data get storage dah.sch:task this.position[0]
execute store result score y dah.sch.ram run data get storage dah.sch:task this.position[1]
execute store result score z dah.sch.ram run data get storage dah.sch:task this.position[2]

tellraw @a ["",{"text": " - 执行地点：","color": "green"},"大概位置：(",{"score": {"name": "x","objective": "dah.sch.ram"}}," ",{"score": {"name": "y","objective": "dah.sch.ram"}}," ",{"score": {"name": "z","objective": "dah.sch.ram"}},")  ",{"text":"查看详细位置","color": "aqua","underlined": true,"hover_event": {"action": "show_text","value": {"nbt":"this.position","storage": "dah.sch:task","color": "white"}}}]
tellraw @a ["",{"text": " - 执行朝向：","color": "green"},{"nbt":"this.rotation","storage": "dah.sch:task","color": "yellow"}]
execute if data storage dah.sch:task this.in run tellraw @a ["",{"text": " - 执行维度：","color": "green"},"[",{"nbt":"this.in","storage": "dah.sch:task","color": "yellow"},"]"]
execute unless data storage dah.sch:task this.in run tellraw @a ["",{"text": " - 执行维度：","color": "green"},"[主世界]"]
tellraw @a {"text":"将鼠标悬浮此处查看数据\n","color": "aqua","underlined": true,"hover_event": {"action": "show_text","value": {"nbt":"this","storage": "dah.sch:task","color": "aqua"}}}