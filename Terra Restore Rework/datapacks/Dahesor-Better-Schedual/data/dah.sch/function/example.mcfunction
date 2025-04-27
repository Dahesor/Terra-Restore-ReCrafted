function dah.sch:set {time:10,run:"say 2"}
execute as @r run function dah.sch:set {time:60,run:"say 3"}

data modify storage dah.sch:new new set value {run:"say 1",time:20,offline:"delay",flags:["debug"]}
function dah.sch:new
