clear @s barrier[custom_data={ui_check:1b}]
execute at @s run kill @e[type=item,distance=..10,nbt={Item:{components:{"minecraft:custom_data":{ui_check:1b}}}}]
function sys:player/ui/actions/backpack