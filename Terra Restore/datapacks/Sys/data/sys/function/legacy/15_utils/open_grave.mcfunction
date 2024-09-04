forceload add 3077 -673 3059 -654
fill 3063 119 -672 3075 122 -655 minecraft:air
forceload remove 3077 -673 3059 -654
tellraw @a[scores={region=15}] {"translate":"area.16.grave","color": "yellow"}
playsound terra:event.grave master @a[scores={region=15}] 3068.94 123.00 -663.88 2 0.5 1
function #dah.sch:set {time:2,run:"playsound terra:event.grave master @a[scores={region=15}] 3068.94 123.00 -663.88 2 0.5 1",extra:["no_entity"]}