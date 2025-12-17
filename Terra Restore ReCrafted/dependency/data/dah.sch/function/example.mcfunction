function dah.sch:set {time:10,run:"say 2"}
execute as @r run function dah.sch:set {time:60,run:"say 3"}
data modify storage dah.sch:new new set value {flags:["debug"],run:"say 1"}