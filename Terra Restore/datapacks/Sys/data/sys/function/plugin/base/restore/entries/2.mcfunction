function sys:plugin/base/restore/mod

fill 0 34 -95 5 34 -100 minecraft:glowstone replace minecraft:redstone_lamp
clone 1078 19 108 1120 21 138 1109 121 108
clone 1078 19 139 1120 21 165 1109 121 139

tellraw @a {"translate": "event.tree_reborn","color": "green"}


function sys:plugin/base/restore/mod_after