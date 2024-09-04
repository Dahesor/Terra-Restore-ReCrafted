summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
summon tnt ~ ~ ~ {fuse:100}
function #dah.sch:set {time:20,run:'tellraw @a[distance=..15] "[!] 4"',extra:{flags:["no_entity"]}}
function #dah.sch:set {time:40,run:'tellraw @a[distance=..15] "[!] 3"',extra:{flags:["no_entity"]}}
function #dah.sch:set {time:60,run:'tellraw @a[distance=..15] "[!] 2"',extra:{flags:["no_entity"]}}
function #dah.sch:set {time:80,run:'tellraw @a[distance=..15] "[!] 1"',extra:{flags:["no_entity"]}}
function #dah.sch:set {time:98,run:'tellraw @a[distance=..15] "[!] Boom!"',extra:{flags:["no_entity"]}}

function #dah.sch:set {time:98,run:'execute as @a[distance=..3,gamemode=!spectator,nbt={active_effects:[{id:"minecraft:resistance",amplifier:10b}]}] run damage @s 999 explosion',extra:{flags:["no_entity"]}}
tellraw @a[distance=..15] "[!] 5"