function #dah.sch:set {time:20,run:"say 1",extra:{flags:["no_entity"]}}
function dah.sch:set {time:10,run:"say 2"}
execute as @r run function dah.sch:set {time:60,run:"say 3"}
execute as @r run function #dah.sch:set {time:50,run:"say 4",extra:{flags:["no_entity"]}}