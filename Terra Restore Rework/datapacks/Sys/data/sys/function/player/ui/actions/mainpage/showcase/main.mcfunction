function sys:player/ui/actions/mainpage/showcase/get_name

data modify storage data text set value {translate:"ui.showcase",with:[{"selector": "@s","color": "yellow"},{"nbt": "run","storage": "temp","interpret": true}],hover_event:{action:"show_item",count:1,id:"minecraft:apple",components:{}}}
execute unless data storage sys:data item{count:1} run data modify storage data text.translate set value "ui.showcase.multi"
execute unless data storage sys:data item{count:1} run data modify storage data text.with append value {"nbt": "item.count","storage": "sys:data"}

data modify storage data text.hover_event merge from storage sys:data item
tellraw @a {"nbt":"text",storage: "data","interpret": true}
