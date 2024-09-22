setblock ~ ~ ~ piston[facing=down]

execute as @e[type=item] run tellraw @a {"entity": "@s","nbt": "{}"}
