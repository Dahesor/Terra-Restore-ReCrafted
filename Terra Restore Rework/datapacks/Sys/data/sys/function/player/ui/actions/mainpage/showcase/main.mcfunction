function sys:player/ui/actions/mainpage/showcase/get_name

#tellraw @a {"nbt":"item.components.'minecraft:lore'[1]","storage": "sys:data"}

execute if data storage sys:data item{count:1}.components."minecraft:lore" run return run tellraw @a {"translate": "ui.showcase","color": "white","with": [{"selector": "@s","color": "yellow"},{"nbt": "run","storage": "temp","interpret": true}],"hover_event": {"action": "show_text","value": [{"nbt": "run","storage": "temp","interpret": true},"\n",{"nbt": "item.components.'minecraft:lore'[]","storage": "sys:data","interpret": true,"separator": "\n"}]}}
execute if data storage sys:data item{count:1} run return run tellraw @a {"translate": "ui.showcase","color": "white","with": [{"selector": "@s","color": "yellow"},{"nbt": "run","storage": "temp","interpret": true}],"hover_event": {"action": "show_text","value": [{"nbt": "run","storage": "temp","interpret": true}]}}
execute if data storage sys:data item.components."minecraft:lore" run return run tellraw @a {"translate": "ui.showcase.multi","color": "white","with": [{"selector": "@s","color": "yellow"},{"nbt": "run","storage": "temp","interpret": true},{"nbt": "item.count","storage": "sys:data"}],"hover_event": {"action": "show_text","value": [{"nbt": "run","storage": "temp","interpret": true},"\n",{"nbt": "item.components.'minecraft:lore'[]","storage": "sys:data","interpret": true,"separator": "\n"}]}}
tellraw @a {"translate": "ui.showcase.multi","color": "white","with": [{"selector": "@s","color": "yellow"},{"nbt": "run","storage": "temp","interpret": true},{"nbt": "item.count","storage": "sys:data"}],"hover_event": {"action": "show_text","value": [{"nbt": "run","storage": "temp","interpret": true}]}}

